// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Models
{
    using static Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Runtime.Extensions;

    public partial class PurviewdataIdentity :
        Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Models.IPurviewdataIdentity,
        Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Models.IPurviewdataIdentityInternal
    {

        /// <summary>Backing field for <see cref="ClassificationRuleName" /> property.</summary>
        private string _classificationRuleName;

        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Origin(Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.PropertyOrigin.Owned)]
        public string ClassificationRuleName { get => this._classificationRuleName; set => this._classificationRuleName = value; }

        /// <summary>Backing field for <see cref="ClassificationRuleVersion" /> property.</summary>
        private int? _classificationRuleVersion;

        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Origin(Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.PropertyOrigin.Owned)]
        public int? ClassificationRuleVersion { get => this._classificationRuleVersion; set => this._classificationRuleVersion = value; }

        /// <summary>Backing field for <see cref="DataSourceName" /> property.</summary>
        private string _dataSourceName;

        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Origin(Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.PropertyOrigin.Owned)]
        public string DataSourceName { get => this._dataSourceName; set => this._dataSourceName = value; }

        /// <summary>Backing field for <see cref="DataSourceType" /> property.</summary>
        private string _dataSourceType;

        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Origin(Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.PropertyOrigin.Owned)]
        public string DataSourceType { get => this._dataSourceType; set => this._dataSourceType = value; }

        /// <summary>Backing field for <see cref="Id" /> property.</summary>
        private string _id;

        /// <summary>Resource identity path</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Origin(Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.PropertyOrigin.Owned)]
        public string Id { get => this._id; set => this._id = value; }

        /// <summary>Backing field for <see cref="KeyVaultName" /> property.</summary>
        private string _keyVaultName;

        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Origin(Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.PropertyOrigin.Owned)]
        public string KeyVaultName { get => this._keyVaultName; set => this._keyVaultName = value; }

        /// <summary>Backing field for <see cref="RunId" /> property.</summary>
        private string _runId;

        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Origin(Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.PropertyOrigin.Owned)]
        public string RunId { get => this._runId; set => this._runId = value; }

        /// <summary>Backing field for <see cref="ScanName" /> property.</summary>
        private string _scanName;

        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Origin(Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.PropertyOrigin.Owned)]
        public string ScanName { get => this._scanName; set => this._scanName = value; }

        /// <summary>Backing field for <see cref="ScanRulesetName" /> property.</summary>
        private string _scanRulesetName;

        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Origin(Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.PropertyOrigin.Owned)]
        public string ScanRulesetName { get => this._scanRulesetName; set => this._scanRulesetName = value; }

        /// <summary>Backing field for <see cref="Version" /> property.</summary>
        private int? _version;

        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Origin(Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.PropertyOrigin.Owned)]
        public int? Version { get => this._version; set => this._version = value; }

        /// <summary>Creates an new <see cref="PurviewdataIdentity" /> instance.</summary>
        public PurviewdataIdentity()
        {

        }
    }
    public partial interface IPurviewdataIdentity :
        Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Runtime.IJsonSerializable
    {
        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Read = true,
        Create = true,
        Update = true,
        Description = @"",
        SerializedName = @"classificationRuleName",
        PossibleTypes = new [] { typeof(string) })]
        string ClassificationRuleName { get; set; }

        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Read = true,
        Create = true,
        Update = true,
        Description = @"",
        SerializedName = @"classificationRuleVersion",
        PossibleTypes = new [] { typeof(int) })]
        int? ClassificationRuleVersion { get; set; }

        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Read = true,
        Create = true,
        Update = true,
        Description = @"",
        SerializedName = @"dataSourceName",
        PossibleTypes = new [] { typeof(string) })]
        string DataSourceName { get; set; }

        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Read = true,
        Create = true,
        Update = true,
        Description = @"",
        SerializedName = @"dataSourceType",
        PossibleTypes = new [] { typeof(string) })]
        [global::Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.PSArgumentCompleterAttribute("None", "AzureSubscription", "AzureResourceGroup", "AzureSynapseWorkspace", "AzureSynapse", "AdlsGen1", "AdlsGen2", "AmazonAccount", "AmazonS3", "AmazonSql", "AzureCosmosDb", "AzureDataExplorer", "AzureFileService", "AzureSqlDatabase", "AmazonPostgreSql", "AzurePostgreSql", "SqlServerDatabase", "AzureSqlDatabaseManagedInstance", "AzureSqlDataWarehouse", "AzureMySql", "AzureStorage", "Teradata", "Oracle", "SapS4Hana", "SapEcc", "PowerBI")]
        string DataSourceType { get; set; }
        /// <summary>Resource identity path</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Read = true,
        Create = true,
        Update = true,
        Description = @"Resource identity path",
        SerializedName = @"id",
        PossibleTypes = new [] { typeof(string) })]
        string Id { get; set; }

        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Read = true,
        Create = true,
        Update = true,
        Description = @"",
        SerializedName = @"keyVaultName",
        PossibleTypes = new [] { typeof(string) })]
        string KeyVaultName { get; set; }

        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Read = true,
        Create = true,
        Update = true,
        Description = @"",
        SerializedName = @"runId",
        PossibleTypes = new [] { typeof(string) })]
        string RunId { get; set; }

        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Read = true,
        Create = true,
        Update = true,
        Description = @"",
        SerializedName = @"scanName",
        PossibleTypes = new [] { typeof(string) })]
        string ScanName { get; set; }

        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Read = true,
        Create = true,
        Update = true,
        Description = @"",
        SerializedName = @"scanRulesetName",
        PossibleTypes = new [] { typeof(string) })]
        string ScanRulesetName { get; set; }

        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Read = true,
        Create = true,
        Update = true,
        Description = @"",
        SerializedName = @"version",
        PossibleTypes = new [] { typeof(int) })]
        int? Version { get; set; }

    }
    internal partial interface IPurviewdataIdentityInternal

    {
        string ClassificationRuleName { get; set; }

        int? ClassificationRuleVersion { get; set; }

        string DataSourceName { get; set; }

        [global::Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.PSArgumentCompleterAttribute("None", "AzureSubscription", "AzureResourceGroup", "AzureSynapseWorkspace", "AzureSynapse", "AdlsGen1", "AdlsGen2", "AmazonAccount", "AmazonS3", "AmazonSql", "AzureCosmosDb", "AzureDataExplorer", "AzureFileService", "AzureSqlDatabase", "AmazonPostgreSql", "AzurePostgreSql", "SqlServerDatabase", "AzureSqlDatabaseManagedInstance", "AzureSqlDataWarehouse", "AzureMySql", "AzureStorage", "Teradata", "Oracle", "SapS4Hana", "SapEcc", "PowerBI")]
        string DataSourceType { get; set; }
        /// <summary>Resource identity path</summary>
        string Id { get; set; }

        string KeyVaultName { get; set; }

        string RunId { get; set; }

        string ScanName { get; set; }

        string ScanRulesetName { get; set; }

        int? Version { get; set; }

    }
}