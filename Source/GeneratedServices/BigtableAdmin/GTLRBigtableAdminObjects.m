// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Bigtable Admin API (bigtableadmin/v2)
// Description:
//   Administer your Cloud Bigtable tables and instances.
// Documentation:
//   https://cloud.google.com/bigtable/

#import "GTLRBigtableAdminObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRBigtableAdmin_AuditLogConfig.logType
NSString * const kGTLRBigtableAdmin_AuditLogConfig_LogType_AdminRead = @"ADMIN_READ";
NSString * const kGTLRBigtableAdmin_AuditLogConfig_LogType_DataRead = @"DATA_READ";
NSString * const kGTLRBigtableAdmin_AuditLogConfig_LogType_DataWrite = @"DATA_WRITE";
NSString * const kGTLRBigtableAdmin_AuditLogConfig_LogType_LogTypeUnspecified = @"LOG_TYPE_UNSPECIFIED";

// GTLRBigtableAdmin_Backup.state
NSString * const kGTLRBigtableAdmin_Backup_State_Creating      = @"CREATING";
NSString * const kGTLRBigtableAdmin_Backup_State_Ready         = @"READY";
NSString * const kGTLRBigtableAdmin_Backup_State_StateUnspecified = @"STATE_UNSPECIFIED";

// GTLRBigtableAdmin_Cluster.defaultStorageType
NSString * const kGTLRBigtableAdmin_Cluster_DefaultStorageType_Hdd = @"HDD";
NSString * const kGTLRBigtableAdmin_Cluster_DefaultStorageType_Ssd = @"SSD";
NSString * const kGTLRBigtableAdmin_Cluster_DefaultStorageType_StorageTypeUnspecified = @"STORAGE_TYPE_UNSPECIFIED";

// GTLRBigtableAdmin_Cluster.state
NSString * const kGTLRBigtableAdmin_Cluster_State_Creating     = @"CREATING";
NSString * const kGTLRBigtableAdmin_Cluster_State_Disabled     = @"DISABLED";
NSString * const kGTLRBigtableAdmin_Cluster_State_Ready        = @"READY";
NSString * const kGTLRBigtableAdmin_Cluster_State_Resizing     = @"RESIZING";
NSString * const kGTLRBigtableAdmin_Cluster_State_StateNotKnown = @"STATE_NOT_KNOWN";

// GTLRBigtableAdmin_ClusterState.replicationState
NSString * const kGTLRBigtableAdmin_ClusterState_ReplicationState_Initializing = @"INITIALIZING";
NSString * const kGTLRBigtableAdmin_ClusterState_ReplicationState_PlannedMaintenance = @"PLANNED_MAINTENANCE";
NSString * const kGTLRBigtableAdmin_ClusterState_ReplicationState_Ready = @"READY";
NSString * const kGTLRBigtableAdmin_ClusterState_ReplicationState_ReadyOptimizing = @"READY_OPTIMIZING";
NSString * const kGTLRBigtableAdmin_ClusterState_ReplicationState_StateNotKnown = @"STATE_NOT_KNOWN";
NSString * const kGTLRBigtableAdmin_ClusterState_ReplicationState_UnplannedMaintenance = @"UNPLANNED_MAINTENANCE";

// GTLRBigtableAdmin_EncryptionInfo.encryptionType
NSString * const kGTLRBigtableAdmin_EncryptionInfo_EncryptionType_CustomerManagedEncryption = @"CUSTOMER_MANAGED_ENCRYPTION";
NSString * const kGTLRBigtableAdmin_EncryptionInfo_EncryptionType_EncryptionTypeUnspecified = @"ENCRYPTION_TYPE_UNSPECIFIED";
NSString * const kGTLRBigtableAdmin_EncryptionInfo_EncryptionType_GoogleDefaultEncryption = @"GOOGLE_DEFAULT_ENCRYPTION";

// GTLRBigtableAdmin_Instance.state
NSString * const kGTLRBigtableAdmin_Instance_State_Creating    = @"CREATING";
NSString * const kGTLRBigtableAdmin_Instance_State_Ready       = @"READY";
NSString * const kGTLRBigtableAdmin_Instance_State_StateNotKnown = @"STATE_NOT_KNOWN";

// GTLRBigtableAdmin_Instance.type
NSString * const kGTLRBigtableAdmin_Instance_Type_Development  = @"DEVELOPMENT";
NSString * const kGTLRBigtableAdmin_Instance_Type_Production   = @"PRODUCTION";
NSString * const kGTLRBigtableAdmin_Instance_Type_TypeUnspecified = @"TYPE_UNSPECIFIED";

// GTLRBigtableAdmin_RestoreInfo.sourceType
NSString * const kGTLRBigtableAdmin_RestoreInfo_SourceType_Backup = @"BACKUP";
NSString * const kGTLRBigtableAdmin_RestoreInfo_SourceType_RestoreSourceTypeUnspecified = @"RESTORE_SOURCE_TYPE_UNSPECIFIED";

// GTLRBigtableAdmin_RestoreTableMetadata.sourceType
NSString * const kGTLRBigtableAdmin_RestoreTableMetadata_SourceType_Backup = @"BACKUP";
NSString * const kGTLRBigtableAdmin_RestoreTableMetadata_SourceType_RestoreSourceTypeUnspecified = @"RESTORE_SOURCE_TYPE_UNSPECIFIED";

// GTLRBigtableAdmin_Table.granularity
NSString * const kGTLRBigtableAdmin_Table_Granularity_Millis   = @"MILLIS";
NSString * const kGTLRBigtableAdmin_Table_Granularity_TimestampGranularityUnspecified = @"TIMESTAMP_GRANULARITY_UNSPECIFIED";

// GTLRBigtableAdmin_TableProgress.state
NSString * const kGTLRBigtableAdmin_TableProgress_State_Cancelled = @"CANCELLED";
NSString * const kGTLRBigtableAdmin_TableProgress_State_Completed = @"COMPLETED";
NSString * const kGTLRBigtableAdmin_TableProgress_State_Copying = @"COPYING";
NSString * const kGTLRBigtableAdmin_TableProgress_State_Pending = @"PENDING";
NSString * const kGTLRBigtableAdmin_TableProgress_State_StateUnspecified = @"STATE_UNSPECIFIED";

// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_AppProfile
//

@implementation GTLRBigtableAdmin_AppProfile
@dynamic descriptionProperty, ETag, multiClusterRoutingUseAny, name,
         singleClusterRouting;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"descriptionProperty" : @"description",
    @"ETag" : @"etag"
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_AuditConfig
//

@implementation GTLRBigtableAdmin_AuditConfig
@dynamic auditLogConfigs, service;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"auditLogConfigs" : [GTLRBigtableAdmin_AuditLogConfig class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_AuditLogConfig
//

@implementation GTLRBigtableAdmin_AuditLogConfig
@dynamic exemptedMembers, logType;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"exemptedMembers" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Backup
//

@implementation GTLRBigtableAdmin_Backup
@dynamic encryptionInfo, endTime, expireTime, name, sizeBytes, sourceTable,
         startTime, state;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_BackupInfo
//

@implementation GTLRBigtableAdmin_BackupInfo
@dynamic backup, endTime, sourceTable, startTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Binding
//

@implementation GTLRBigtableAdmin_Binding
@dynamic condition, members, role;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"members" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_CheckConsistencyRequest
//

@implementation GTLRBigtableAdmin_CheckConsistencyRequest
@dynamic consistencyToken;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_CheckConsistencyResponse
//

@implementation GTLRBigtableAdmin_CheckConsistencyResponse
@dynamic consistent;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Cluster
//

@implementation GTLRBigtableAdmin_Cluster
@dynamic defaultStorageType, encryptionConfig, location, name, serveNodes,
         state;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_ClusterState
//

@implementation GTLRBigtableAdmin_ClusterState
@dynamic encryptionInfo, replicationState;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"encryptionInfo" : [GTLRBigtableAdmin_EncryptionInfo class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_ColumnFamily
//

@implementation GTLRBigtableAdmin_ColumnFamily
@dynamic gcRule;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_CreateBackupMetadata
//

@implementation GTLRBigtableAdmin_CreateBackupMetadata
@dynamic endTime, name, sourceTable, startTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_CreateClusterMetadata
//

@implementation GTLRBigtableAdmin_CreateClusterMetadata
@dynamic finishTime, originalRequest, requestTime, tables;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_CreateClusterMetadata_Tables
//

@implementation GTLRBigtableAdmin_CreateClusterMetadata_Tables

+ (Class)classForAdditionalProperties {
  return [GTLRBigtableAdmin_TableProgress class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_CreateClusterRequest
//

@implementation GTLRBigtableAdmin_CreateClusterRequest
@dynamic cluster, clusterId, parent;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_CreateInstanceMetadata
//

@implementation GTLRBigtableAdmin_CreateInstanceMetadata
@dynamic finishTime, originalRequest, requestTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_CreateInstanceRequest
//

@implementation GTLRBigtableAdmin_CreateInstanceRequest
@dynamic clusters, instance, instanceId, parent;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_CreateInstanceRequest_Clusters
//

@implementation GTLRBigtableAdmin_CreateInstanceRequest_Clusters

+ (Class)classForAdditionalProperties {
  return [GTLRBigtableAdmin_Cluster class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_CreateTableRequest
//

@implementation GTLRBigtableAdmin_CreateTableRequest
@dynamic initialSplits, table, tableId;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"initialSplits" : [GTLRBigtableAdmin_Split class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_DropRowRangeRequest
//

@implementation GTLRBigtableAdmin_DropRowRangeRequest
@dynamic deleteAllDataFromTable, rowKeyPrefix;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Empty
//

@implementation GTLRBigtableAdmin_Empty
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_EncryptionConfig
//

@implementation GTLRBigtableAdmin_EncryptionConfig
@dynamic kmsKeyName;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_EncryptionInfo
//

@implementation GTLRBigtableAdmin_EncryptionInfo
@dynamic encryptionStatus, encryptionType, kmsKeyVersion;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Expr
//

@implementation GTLRBigtableAdmin_Expr
@dynamic descriptionProperty, expression, location, title;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_FailureTrace
//

@implementation GTLRBigtableAdmin_FailureTrace
@dynamic frames;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"frames" : [GTLRBigtableAdmin_Frame class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Frame
//

@implementation GTLRBigtableAdmin_Frame
@dynamic targetName, workflowGuid, zoneId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_GcRule
//

@implementation GTLRBigtableAdmin_GcRule
@dynamic intersection, maxAge, maxNumVersions, unionProperty;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"unionProperty" : @"union" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_GenerateConsistencyTokenRequest
//

@implementation GTLRBigtableAdmin_GenerateConsistencyTokenRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_GenerateConsistencyTokenResponse
//

@implementation GTLRBigtableAdmin_GenerateConsistencyTokenResponse
@dynamic consistencyToken;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_GetIamPolicyRequest
//

@implementation GTLRBigtableAdmin_GetIamPolicyRequest
@dynamic options;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_GetPolicyOptions
//

@implementation GTLRBigtableAdmin_GetPolicyOptions
@dynamic requestedPolicyVersion;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Instance
//

@implementation GTLRBigtableAdmin_Instance
@dynamic createTime, displayName, labels, name, state, type;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Instance_Labels
//

@implementation GTLRBigtableAdmin_Instance_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Intersection
//

@implementation GTLRBigtableAdmin_Intersection
@dynamic rules;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"rules" : [GTLRBigtableAdmin_GcRule class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_ListAppProfilesResponse
//

@implementation GTLRBigtableAdmin_ListAppProfilesResponse
@dynamic appProfiles, failedLocations, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"appProfiles" : [GTLRBigtableAdmin_AppProfile class],
    @"failedLocations" : [NSString class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"appProfiles";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_ListBackupsResponse
//

@implementation GTLRBigtableAdmin_ListBackupsResponse
@dynamic backups, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"backups" : [GTLRBigtableAdmin_Backup class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"backups";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_ListClustersResponse
//

@implementation GTLRBigtableAdmin_ListClustersResponse
@dynamic clusters, failedLocations, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"clusters" : [GTLRBigtableAdmin_Cluster class],
    @"failedLocations" : [NSString class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"clusters";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_ListInstancesResponse
//

@implementation GTLRBigtableAdmin_ListInstancesResponse
@dynamic failedLocations, instances, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"failedLocations" : [NSString class],
    @"instances" : [GTLRBigtableAdmin_Instance class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"instances";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_ListLocationsResponse
//

@implementation GTLRBigtableAdmin_ListLocationsResponse
@dynamic locations, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"locations" : [GTLRBigtableAdmin_Location class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"locations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_ListOperationsResponse
//

@implementation GTLRBigtableAdmin_ListOperationsResponse
@dynamic nextPageToken, operations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"operations" : [GTLRBigtableAdmin_Operation class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"operations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_ListTablesResponse
//

@implementation GTLRBigtableAdmin_ListTablesResponse
@dynamic nextPageToken, tables;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"tables" : [GTLRBigtableAdmin_Table class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"tables";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Location
//

@implementation GTLRBigtableAdmin_Location
@dynamic displayName, labels, locationId, metadata, name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Location_Labels
//

@implementation GTLRBigtableAdmin_Location_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Location_Metadata
//

@implementation GTLRBigtableAdmin_Location_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Modification
//

@implementation GTLRBigtableAdmin_Modification
@dynamic create, drop, identifier, update;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_ModifyColumnFamiliesRequest
//

@implementation GTLRBigtableAdmin_ModifyColumnFamiliesRequest
@dynamic modifications;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"modifications" : [GTLRBigtableAdmin_Modification class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_MultiClusterRoutingUseAny
//

@implementation GTLRBigtableAdmin_MultiClusterRoutingUseAny
@dynamic clusterIds;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"clusterIds" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Operation
//

@implementation GTLRBigtableAdmin_Operation
@dynamic done, error, metadata, name, response;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Operation_Metadata
//

@implementation GTLRBigtableAdmin_Operation_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Operation_Response
//

@implementation GTLRBigtableAdmin_Operation_Response

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_OperationProgress
//

@implementation GTLRBigtableAdmin_OperationProgress
@dynamic endTime, progressPercent, startTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_OptimizeRestoredTableMetadata
//

@implementation GTLRBigtableAdmin_OptimizeRestoredTableMetadata
@dynamic name, progress;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_PartialUpdateInstanceRequest
//

@implementation GTLRBigtableAdmin_PartialUpdateInstanceRequest
@dynamic instance, updateMask;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Policy
//

@implementation GTLRBigtableAdmin_Policy
@dynamic auditConfigs, bindings, ETag, version;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"ETag" : @"etag" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"auditConfigs" : [GTLRBigtableAdmin_AuditConfig class],
    @"bindings" : [GTLRBigtableAdmin_Binding class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_RestoreInfo
//

@implementation GTLRBigtableAdmin_RestoreInfo
@dynamic backupInfo, sourceType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_RestoreTableMetadata
//

@implementation GTLRBigtableAdmin_RestoreTableMetadata
@dynamic backupInfo, name, optimizeTableOperationName, progress, sourceType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_RestoreTableRequest
//

@implementation GTLRBigtableAdmin_RestoreTableRequest
@dynamic backup, tableId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_SetIamPolicyRequest
//

@implementation GTLRBigtableAdmin_SetIamPolicyRequest
@dynamic policy, updateMask;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_SingleClusterRouting
//

@implementation GTLRBigtableAdmin_SingleClusterRouting
@dynamic allowTransactionalWrites, clusterId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Split
//

@implementation GTLRBigtableAdmin_Split
@dynamic key;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Status
//

@implementation GTLRBigtableAdmin_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRBigtableAdmin_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Status_Details_Item
//

@implementation GTLRBigtableAdmin_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Table
//

@implementation GTLRBigtableAdmin_Table
@dynamic clusterStates, columnFamilies, granularity, name, restoreInfo;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Table_ClusterStates
//

@implementation GTLRBigtableAdmin_Table_ClusterStates

+ (Class)classForAdditionalProperties {
  return [GTLRBigtableAdmin_ClusterState class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Table_ColumnFamilies
//

@implementation GTLRBigtableAdmin_Table_ColumnFamilies

+ (Class)classForAdditionalProperties {
  return [GTLRBigtableAdmin_ColumnFamily class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_TableProgress
//

@implementation GTLRBigtableAdmin_TableProgress
@dynamic estimatedCopiedBytes, estimatedSizeBytes, state;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_TestIamPermissionsRequest
//

@implementation GTLRBigtableAdmin_TestIamPermissionsRequest
@dynamic permissions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"permissions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_TestIamPermissionsResponse
//

@implementation GTLRBigtableAdmin_TestIamPermissionsResponse
@dynamic permissions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"permissions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_Union
//

@implementation GTLRBigtableAdmin_Union
@dynamic rules;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"rules" : [GTLRBigtableAdmin_GcRule class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_UpdateAppProfileMetadata
//

@implementation GTLRBigtableAdmin_UpdateAppProfileMetadata
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_UpdateClusterMetadata
//

@implementation GTLRBigtableAdmin_UpdateClusterMetadata
@dynamic finishTime, originalRequest, requestTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBigtableAdmin_UpdateInstanceMetadata
//

@implementation GTLRBigtableAdmin_UpdateInstanceMetadata
@dynamic finishTime, originalRequest, requestTime;
@end
