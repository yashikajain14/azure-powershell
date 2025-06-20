
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
update storage task assignment properties
.Description
update storage task assignment properties
.Example
$start = Get-Date -Year 2024 -Month 8 -Day 7 -Hour 1 -Minute 30
$end = Get-Date -Year 2024 -Month 12 -Day 25 -Hour 2 -Minute 45
Update-AzStorageTaskAssignment -accountname myaccount -name mytaskassignment -resourcegroupname myresourcegroup -StartFrom $start.ToUniversalTime() -EndBy $end.ToUniversalTime() -Interval 7 -Description "update task assignment" -Enabled

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Storage.Models.IStorageIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Storage.Models.IStorageTaskAssignment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IStorageIdentity>: Identity Parameter
  [AccountName <String>]: The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  [BlobInventoryPolicyName <String>]: The name of the storage account blob inventory policy. It should always be 'default'
  [DeletedAccountName <String>]: Name of the deleted storage account.
  [EncryptionScopeName <String>]: The name of the encryption scope within the specified storage account. Encryption scope names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  [FileServiceUsagesName <String>]: The name of the file service usage. File Service Usage Name must be "default"
  [FileServicesName <String>]: The name of the file Service within the specified storage account. File Service Name must be "default"
  [Id <String>]: Resource identity path
  [Location <String>]: The location of the deleted storage account.
  [ManagementPolicyName <String>]: The name of the Storage Account Management Policy. It should always be 'default'
  [MigrationName <String>]: The name of the Storage Account Migration. It should always be 'default'
  [ObjectReplicationPolicyId <String>]: For the destination account, provide the value 'default'. Configure the policy on the destination account first. For the source account, provide the value of the policy ID that is returned when you download the policy that was defined on the destination account. The policy is downloaded as a JSON file.
  [PrivateEndpointConnectionName <String>]: The name of the private endpoint connection associated with the Azure resource
  [ResourceGroupName <String>]: The name of the resource group within the user's subscription. The name is case insensitive.
  [ShareName <String>]: The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  [StorageTaskAssignmentName <String>]: The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  [SubscriptionId <String>]: The ID of the target subscription.
  [Username <String>]: The name of local user. The username must contain lowercase letters and numbers only. It must be unique only within the storage account.

STORAGEACCOUNTINPUTOBJECT <IStorageIdentity>: Identity Parameter
  [AccountName <String>]: The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  [BlobInventoryPolicyName <String>]: The name of the storage account blob inventory policy. It should always be 'default'
  [DeletedAccountName <String>]: Name of the deleted storage account.
  [EncryptionScopeName <String>]: The name of the encryption scope within the specified storage account. Encryption scope names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  [FileServiceUsagesName <String>]: The name of the file service usage. File Service Usage Name must be "default"
  [FileServicesName <String>]: The name of the file Service within the specified storage account. File Service Name must be "default"
  [Id <String>]: Resource identity path
  [Location <String>]: The location of the deleted storage account.
  [ManagementPolicyName <String>]: The name of the Storage Account Management Policy. It should always be 'default'
  [MigrationName <String>]: The name of the Storage Account Migration. It should always be 'default'
  [ObjectReplicationPolicyId <String>]: For the destination account, provide the value 'default'. Configure the policy on the destination account first. For the source account, provide the value of the policy ID that is returned when you download the policy that was defined on the destination account. The policy is downloaded as a JSON file.
  [PrivateEndpointConnectionName <String>]: The name of the private endpoint connection associated with the Azure resource
  [ResourceGroupName <String>]: The name of the resource group within the user's subscription. The name is case insensitive.
  [ShareName <String>]: The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  [StorageTaskAssignmentName <String>]: The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  [SubscriptionId <String>]: The ID of the target subscription.
  [Username <String>]: The name of local user. The username must contain lowercase letters and numbers only. It must be unique only within the storage account.
.Link
https://learn.microsoft.com/powershell/module/az.storage/update-azstoragetaskassignment
#>
function Update-AzStorageTaskAssignment {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Storage.Models.IStorageTaskAssignment])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Path')]
    [System.String]
    # The name of the storage account within the specified resource group.
    # Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
    ${AccountName},

    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Parameter(ParameterSetName='UpdateViaIdentityStorageAccountExpanded', Mandatory)]
    [Alias('StorageTaskAssignmentName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Path')]
    [System.String]
    # The name of the storage task assignment within the specified resource group.
    # Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
    ${Name},

    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Path')]
    [System.String]
    # The name of the resource group.
    # The name is case insensitive.
    ${ResourceGroupName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # The ID of the target subscription.
    ${SubscriptionId},

    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Models.IStorageIdentity]
    # Identity Parameter
    ${InputObject},

    [Parameter(ParameterSetName='UpdateViaIdentityStorageAccountExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Models.IStorageIdentity]
    # Identity Parameter
    ${StorageAccountInputObject},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Body')]
    [System.String]
    # Text that describes the purpose of the storage task assignment
    ${Description},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Whether the storage task assignment is enabled or not
    ${Enabled},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Body')]
    [System.DateTime]
    # When to end task execution.
    # This is a mutable field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
    ${EndBy},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Body')]
    [System.Int32]
    # Run interval of task execution.
    # This is a mutable field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
    ${Interval},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.PSArgumentCompleterAttribute("Days")]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Body')]
    [System.String]
    # Run interval unit of task execution.
    # This is a mutable field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
    ${IntervalUnit},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Body')]
    [System.String]
    # The prefix of the storage task assignment report
    ${ReportPrefix},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Body')]
    [System.DateTime]
    # When to start task execution.
    # This is a mutable field when ExecutionTrigger.properties.type is 'OnSchedule'; this property should not be present when ExecutionTrigger.properties.type is 'RunOnce'
    ${StartFrom},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Body')]
    [System.DateTime]
    # When to start task execution.
    # This is a mutable field when ExecutionTrigger.properties.type is 'RunOnce'; this property should not be present when ExecutionTrigger.properties.type is 'OnSchedule'
    ${StartOn},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Body')]
    [System.String[]]
    # List of object prefixes to be excluded from task execution.
    # If there is a conflict between include and exclude prefixes, the exclude prefix will be the determining factor
    ${TargetExcludePrefix},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Body')]
    [System.String[]]
    # Required list of object prefixes to be included for task execution
    ${TargetPrefix},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.PSArgumentCompleterAttribute("RunOnce", "OnSchedule")]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Body')]
    [System.String]
    # The trigger type of the storage task assignment execution
    ${TriggerType},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The DefaultProfile parameter is not functional.
    # Use the SubscriptionId parameter when available if executing the cmdlet against a different subscription.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Storage.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        
        $testPlayback = $false
        $PSBoundParameters['HttpPipelinePrepend'] | Foreach-Object { if ($_) { $testPlayback = $testPlayback -or ('Microsoft.Azure.PowerShell.Cmdlets.Storage.Runtime.PipelineMock' -eq $_.Target.GetType().FullName -and 'Playback' -eq $_.Target.Mode) } }

        $context = Get-AzContext
        if (-not $context -and -not $testPlayback) {
            Write-Error "No Azure login detected. Please run 'Connect-AzAccount' to log in."
            exit
        }

        if ($null -eq [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion) {
            [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion = $PSVersionTable.PSVersion.ToString()
        }         
        $preTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        if ($preTelemetryId -eq '') {
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId =(New-Guid).ToString()
            [Microsoft.Azure.PowerShell.Cmdlets.Storage.module]::Instance.Telemetry.Invoke('Create', $MyInvocation, $parameterSet, $PSCmdlet)
        } else {
            $internalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
            if ($internalCalledCmdlets -eq '') {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $MyInvocation.MyCommand.Name
            } else {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets += ',' + $MyInvocation.MyCommand.Name
            }
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = 'internal'
        }

        $mapping = @{
            UpdateExpanded = 'Az.Storage.private\Update-AzStorageTaskAssignment_UpdateExpanded';
            UpdateViaIdentityExpanded = 'Az.Storage.private\Update-AzStorageTaskAssignment_UpdateViaIdentityExpanded';
            UpdateViaIdentityStorageAccountExpanded = 'Az.Storage.private\Update-AzStorageTaskAssignment_UpdateViaIdentityStorageAccountExpanded';
        }
        if (('UpdateExpanded') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId') ) {
            if ($testPlayback) {
                $PSBoundParameters['SubscriptionId'] = . (Join-Path $PSScriptRoot '..' 'utils' 'Get-SubscriptionIdTestSafe.ps1')
            } else {
                $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
            }
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.Storage.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
        if ($null -ne $MyInvocation.MyCommand -and [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PromptedPreviewMessageCmdlets -notcontains $MyInvocation.MyCommand.Name -and [Microsoft.Azure.PowerShell.Cmdlets.Storage.Runtime.MessageAttributeHelper]::ContainsPreviewAttribute($cmdInfo, $MyInvocation)){
            [Microsoft.Azure.PowerShell.Cmdlets.Storage.Runtime.MessageAttributeHelper]::ProcessPreviewMessageAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
            [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PromptedPreviewMessageCmdlets.Enqueue($MyInvocation.MyCommand.Name)
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        if ($wrappedCmd -eq $null) {
            $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Function)
        }
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }

    finally {
        $backupTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        $backupInternalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
    }

}
end {
    try {
        $steppablePipeline.End()

        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $backupTelemetryId
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $backupInternalCalledCmdlets
        if ($preTelemetryId -eq '') {
            [Microsoft.Azure.PowerShell.Cmdlets.Storage.module]::Instance.Telemetry.Invoke('Send', $MyInvocation, $parameterSet, $PSCmdlet)
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        }
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $preTelemetryId

    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
} 
}
