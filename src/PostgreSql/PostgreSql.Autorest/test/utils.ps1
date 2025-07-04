function RandomString([bool]$allChars, [int32]$len) {
    if ($allChars) {
        return -join ((33..126) | Get-Random -Count $len | % {[char]$_})
    } else {
        return -join ((48..57) + (97..122) | Get-Random -Count $len | % {[char]$_})
    }
}
function Start-TestSleep {
    [CmdletBinding(DefaultParameterSetName = 'SleepBySeconds')]
    param(
        [parameter(Mandatory = $true, Position = 0, ParameterSetName = 'SleepBySeconds')]
        [ValidateRange(0.0, 2147483.0)]
        [double] $Seconds,

        [parameter(Mandatory = $true, ParameterSetName = 'SleepByMilliseconds')]
        [ValidateRange('NonNegative')]
        [Alias('ms')]
        [int] $Milliseconds
    )

    if ($TestMode -ne 'playback') {
        switch ($PSCmdlet.ParameterSetName) {
            'SleepBySeconds' {
                Start-Sleep -Seconds $Seconds
            }
            'SleepByMilliseconds' {
                Start-Sleep -Milliseconds $Milliseconds
            }
        }
    }
}

$env = @{}
function setupEnv() {
    # Preload subscriptionId and tenant from context, which will be used in test
    # as default. You could change them if needed.
    $env.SubscriptionId = (Get-AzContext).Subscription.Id
    $env.Tenant = (Get-AzContext).Tenant.Id
    # For any resources you created for test, you should add it to $env here.
    #[SuppressMessage("Microsoft.Security", "CS002:SecretInNextLine")]
    $password = 'Pa88word!' | ConvertTo-SecureString -AsPlainText -Force
    $serverName = "postgresql-test-100"
    $flexibleServerName = "postgresql-flexible-test-100"
    $serverName2 = "postgresql-test-200"
    $serverName3 = "postgresql-test-300"
    $flexibleServerName = "postgresql-flexible-test-100"
    $flexibleServerName2 = "postgresql-flexible-test-200"
    $flexibleServerName3 = "postgresql-flexible-test-300"
    $flexibleServerName4 = "postgresql-flexible-test-400"
    $restoreName = "postgresql-test-100-restore"
    $restoreName2 = "postgresql-test-100-restore-2"
    $replicaName = "postgresql-test-100-replica"
    $firewallRuleName = "postgresqlrule01"
    $firewallRuleName2 = "postgresqlrule02"
    $databaseName = "postgresqldb"
    $VNetName = "postgresqlvnet"
    $SubnetName = "postgresql-subnet"
    $resourceGroup = "PostgreSqlTest"
    $location = "eastus"
    $Sku = "GP_Gen5_4"
    $FlexibleSku = "Standard_D2s_v3"

    if ($TestMode -eq 'live') {
        $location = "eastus2euap"
        $PowershellPrefix = "powershell-pipeline-postgres-"
        $RandomNumbers = ""
        for($i = 0; $i -lt 10; $i++){ $RandomNumbers += Get-Random -Maximum 10  }
        $serverName = $PowershellPrefix + "server" + $RandomNumbers
        $flexibleServerName = $PowershellPrefix + "flexibleserver" + $RandomNumbers
        $flexibleServerName2 = $PowershellPrefix + "2-flexibleserver" + $RandomNumbers
        $flexibleServerName3 = $PowershellPrefix + "3-flexibleserver" + $RandomNumbers
        $flexibleServerName4 = $PowershellPrefix + "4-flexibleserver" + $RandomNumbers
        $resourceGroup = $PowershellPrefix + "group" + $RandomNumbers
        $restoreName = $PowershellPrefix + "restore-server" + $RandomNumbers
        $restoreName2 = $PowershellPrefix + "2-restore-server" + $RandomNumbers
        $firewallRuleName = $PowershellPrefix + "firewallrule" + $RandomNumbers
        $databaseName = $PowershellPrefix + "database" + $RandomNumbers
    }

    $env.Add("serverName", $serverName)
    $env.Add("serverName2", $serverName2)
    $env.Add("serverName3", $serverName3)
    $env.Add("flexibleServerName", $flexibleServerName)
    $env.Add("flexibleServerName2", $flexibleServerName2)
    $env.Add("flexibleServerName3", $flexibleServerName3)
    $env.Add("flexibleServerName4", $flexibleServerName4)
    $env.Add("restoreName", $restoreName)
    $env.Add("restoreName2", $restoreName2)
    $env.Add("replicaName", $replicaName)
    $env.Add("firewallRuleName", $firewallRuleName)
    $env.Add("firewallRuleName2", $firewallRuleName2)
    $env.Add("databaseName", $databaseName)
    $env.Add("VNetName", $VNetName)
    $env.Add("SubnetName", $SubnetName)
    $env.Add("resourceGroup", $resourceGroup)
    $env.Add("location", $location)

    $env.Add("Sku", $Sku)
    $env.Add("FlexibleSku", $FlexibleSku)

    # Create the test group
    write-host "start to create test group."
    New-AzResourceGroup -Name $resourceGroup -Location $location

    if ($TestMode -ne 'live') {
        # Create the test Vnet
        write-host "Deploy Vnet template"
        New-AzDeployment -Mode Incremental -TemplateFile .\test\deployment-templates\virtual-network\template.json -TemplateParameterFile .\test\deployment-templates\virtual-network\parameters.json -Name vn -ResourceGroupName $resourceGroup

        write-host (Get-AzContext | Out-String)

        write-host "New-AzPostgreSqlServer -Name $serverName -ResourceGroupName $resourceGroup -Location $location -AdministratorUserName postgresql_test -AdministratorLoginPassword $password -Sku $Sku"
        New-AzPostgreSqlServer -Name $serverName -ResourceGroupName $resourceGroup -Location $location -AdministratorUserName postgresql_test -AdministratorLoginPassword $password -Sku $Sku
    }

    write-host "New-AzPostgreSqlFlexibleServer -Name $flexibleServerName -ResourceGroupName $resourceGroup -AdministratorUserName adminuser -AdministratorLoginPassword $password -Location $location -PublicAccess none"
    New-AzPostgreSqlFlexibleServer -Name $flexibleServerName -ResourceGroupName $resourceGroup -AdministratorUserName adminuser -AdministratorLoginPassword $password -Location $location -PublicAccess none
    New-AzPostgreSqlFlexibleServer -Location $location -ResourceGroupName $resourceGroup -Name $flexibleServerName4 -BackupRetentionDay 11 -StorageInMb 65536

    $envFile = 'env.json'
    if ($TestMode -eq 'live') {
        $envFile = 'localEnv.json'
    }

    set-content -Path (Join-Path $PSScriptRoot $envFile) -Value (ConvertTo-Json $env)
}
function cleanupEnv() {
    # Clean resources you create for testing
    # Removing resource group will clean all the resources created for testing.
    write-host "Clean resources you create for testing."
    Remove-AzResourceGroup -Name $env.resourceGroup
}
