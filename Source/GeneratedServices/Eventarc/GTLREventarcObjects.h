// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Eventarc API (eventarc/v1)
// Documentation:
//   https://cloud.google.com/eventarc

#if SWIFT_PACKAGE || GTLR_USE_MODULAR_IMPORT
  @import GoogleAPIClientForRESTCore;
#elif GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRObject.h"
#else
  #import "GTLRObject.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLREventarc_AuditConfig;
@class GTLREventarc_AuditLogConfig;
@class GTLREventarc_Binding;
@class GTLREventarc_CloudRun;
@class GTLREventarc_Destination;
@class GTLREventarc_EventFilter;
@class GTLREventarc_Expr;
@class GTLREventarc_GKE;
@class GTLREventarc_GoogleLongrunningOperation;
@class GTLREventarc_GoogleLongrunningOperation_Metadata;
@class GTLREventarc_GoogleLongrunningOperation_Response;
@class GTLREventarc_GoogleRpcStatus;
@class GTLREventarc_GoogleRpcStatus_Details_Item;
@class GTLREventarc_Location;
@class GTLREventarc_Location_Labels;
@class GTLREventarc_Location_Metadata;
@class GTLREventarc_Policy;
@class GTLREventarc_Pubsub;
@class GTLREventarc_Transport;
@class GTLREventarc_Trigger;
@class GTLREventarc_Trigger_Labels;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Constants - For some of the classes' properties below.

// ----------------------------------------------------------------------------
// GTLREventarc_AuditLogConfig.logType

/**
 *  Admin reads. Example: CloudIAM getIamPolicy
 *
 *  Value: "ADMIN_READ"
 */
FOUNDATION_EXTERN NSString * const kGTLREventarc_AuditLogConfig_LogType_AdminRead;
/**
 *  Data reads. Example: CloudSQL Users list
 *
 *  Value: "DATA_READ"
 */
FOUNDATION_EXTERN NSString * const kGTLREventarc_AuditLogConfig_LogType_DataRead;
/**
 *  Data writes. Example: CloudSQL Users create
 *
 *  Value: "DATA_WRITE"
 */
FOUNDATION_EXTERN NSString * const kGTLREventarc_AuditLogConfig_LogType_DataWrite;
/**
 *  Default case. Should never be this.
 *
 *  Value: "LOG_TYPE_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLREventarc_AuditLogConfig_LogType_LogTypeUnspecified;

/**
 *  Specifies the audit configuration for a service. The configuration
 *  determines which permission types are logged, and what identities, if any,
 *  are exempted from logging. An AuditConfig must have one or more
 *  AuditLogConfigs. If there are AuditConfigs for both `allServices` and a
 *  specific service, the union of the two AuditConfigs is used for that
 *  service: the log_types specified in each AuditConfig are enabled, and the
 *  exempted_members in each AuditLogConfig are exempted. Example Policy with
 *  multiple AuditConfigs: { "audit_configs": [ { "service": "allServices",
 *  "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [
 *  "user:jose\@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type":
 *  "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com",
 *  "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type":
 *  "DATA_WRITE", "exempted_members": [ "user:aliya\@example.com" ] } ] } ] }
 *  For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
 *  logging. It also exempts jose\@example.com from DATA_READ logging, and
 *  aliya\@example.com from DATA_WRITE logging.
 */
@interface GTLREventarc_AuditConfig : GTLRObject

/** The configuration for logging of each type of permission. */
@property(nonatomic, strong, nullable) NSArray<GTLREventarc_AuditLogConfig *> *auditLogConfigs;

/**
 *  Specifies a service that will be enabled for audit logging. For example,
 *  `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a
 *  special value that covers all services.
 */
@property(nonatomic, copy, nullable) NSString *service;

@end


/**
 *  Provides the configuration for logging a type of permissions. Example: {
 *  "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [
 *  "user:jose\@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables
 *  'DATA_READ' and 'DATA_WRITE' logging, while exempting jose\@example.com from
 *  DATA_READ logging.
 */
@interface GTLREventarc_AuditLogConfig : GTLRObject

/**
 *  Specifies the identities that do not cause logging for this type of
 *  permission. Follows the same format of Binding.members.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *exemptedMembers;

/**
 *  The log type that this config enables.
 *
 *  Likely values:
 *    @arg @c kGTLREventarc_AuditLogConfig_LogType_AdminRead Admin reads.
 *        Example: CloudIAM getIamPolicy (Value: "ADMIN_READ")
 *    @arg @c kGTLREventarc_AuditLogConfig_LogType_DataRead Data reads. Example:
 *        CloudSQL Users list (Value: "DATA_READ")
 *    @arg @c kGTLREventarc_AuditLogConfig_LogType_DataWrite Data writes.
 *        Example: CloudSQL Users create (Value: "DATA_WRITE")
 *    @arg @c kGTLREventarc_AuditLogConfig_LogType_LogTypeUnspecified Default
 *        case. Should never be this. (Value: "LOG_TYPE_UNSPECIFIED")
 */
@property(nonatomic, copy, nullable) NSString *logType;

@end


/**
 *  Associates `members`, or principals, with a `role`.
 */
@interface GTLREventarc_Binding : GTLRObject

/**
 *  The condition that is associated with this binding. If the condition
 *  evaluates to `true`, then this binding applies to the current request. If
 *  the condition evaluates to `false`, then this binding does not apply to the
 *  current request. However, a different role binding might grant the same role
 *  to one or more of the principals in this binding. To learn which resources
 *  support conditions in their IAM policies, see the [IAM
 *  documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
 */
@property(nonatomic, strong, nullable) GTLREventarc_Expr *condition;

/**
 *  Specifies the principals requesting access for a Cloud Platform resource.
 *  `members` can have the following values: * `allUsers`: A special identifier
 *  that represents anyone who is on the internet; with or without a Google
 *  account. * `allAuthenticatedUsers`: A special identifier that represents
 *  anyone who is authenticated with a Google account or a service account. *
 *  `user:{emailid}`: An email address that represents a specific Google
 *  account. For example, `alice\@example.com` . * `serviceAccount:{emailid}`:
 *  An email address that represents a service account. For example,
 *  `my-other-app\@appspot.gserviceaccount.com`. * `group:{emailid}`: An email
 *  address that represents a Google group. For example, `admins\@example.com`.
 *  * `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique
 *  identifier) representing a user that has been recently deleted. For example,
 *  `alice\@example.com?uid=123456789012345678901`. If the user is recovered,
 *  this value reverts to `user:{emailid}` and the recovered user retains the
 *  role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An
 *  email address (plus unique identifier) representing a service account that
 *  has been recently deleted. For example,
 *  `my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901`. If
 *  the service account is undeleted, this value reverts to
 *  `serviceAccount:{emailid}` and the undeleted service account retains the
 *  role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
 *  address (plus unique identifier) representing a Google group that has been
 *  recently deleted. For example,
 *  `admins\@example.com?uid=123456789012345678901`. If the group is recovered,
 *  this value reverts to `group:{emailid}` and the recovered group retains the
 *  role in the binding. * `domain:{domain}`: The G Suite domain (primary) that
 *  represents all the users of that domain. For example, `google.com` or
 *  `example.com`.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *members;

/**
 *  Role that is assigned to the list of `members`, or principals. For example,
 *  `roles/viewer`, `roles/editor`, or `roles/owner`.
 */
@property(nonatomic, copy, nullable) NSString *role;

@end


/**
 *  Represents a Cloud Run destination.
 */
@interface GTLREventarc_CloudRun : GTLRObject

/**
 *  Optional. The relative path on the Cloud Run service the events should be
 *  sent to. The value must conform to the definition of URI path segment
 *  (section 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
 */
@property(nonatomic, copy, nullable) NSString *path;

/** Required. The region the Cloud Run service is deployed in. */
@property(nonatomic, copy, nullable) NSString *region;

/**
 *  Required. The name of the Cloud Run service being addressed. See
 *  https://cloud.google.com/run/docs/reference/rest/v1/namespaces.services.
 *  Only services located in the same project of the trigger object can be
 *  addressed.
 */
@property(nonatomic, copy, nullable) NSString *service;

@end


/**
 *  Represents a target of an invocation over HTTP.
 */
@interface GTLREventarc_Destination : GTLRObject

/**
 *  Cloud Run fully-managed service that receives the events. The service should
 *  be running in the same project of the trigger.
 */
@property(nonatomic, strong, nullable) GTLREventarc_CloudRun *cloudRun;

/**
 *  A GKE service capable of receiving events. The service should be running in
 *  the same project of the trigger.
 */
@property(nonatomic, strong, nullable) GTLREventarc_GKE *gke;

@end


/**
 *  A generic empty message that you can re-use to avoid defining duplicated
 *  empty messages in your APIs. A typical example is to use it as the request
 *  or the response type of an API method. For instance: service Foo { rpc
 *  Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
 *  representation for `Empty` is empty JSON object `{}`.
 */
@interface GTLREventarc_Empty : GTLRObject
@end


/**
 *  Filters events based on exact matches on the CloudEvents attributes.
 */
@interface GTLREventarc_EventFilter : GTLRObject

/**
 *  Required. The name of a CloudEvents attribute. Currently, only a subset of
 *  attributes are supported for filtering. All triggers MUST provide a filter
 *  for the 'type' attribute.
 */
@property(nonatomic, copy, nullable) NSString *attribute;

/** Required. The value for the attribute. */
@property(nonatomic, copy, nullable) NSString *value;

@end


/**
 *  Represents a textual expression in the Common Expression Language (CEL)
 *  syntax. CEL is a C-like expression language. The syntax and semantics of CEL
 *  are documented at https://github.com/google/cel-spec. Example (Comparison):
 *  title: "Summary size limit" description: "Determines if a summary is less
 *  than 100 chars" expression: "document.summary.size() < 100" Example
 *  (Equality): title: "Requestor is owner" description: "Determines if
 *  requestor is the document owner" expression: "document.owner ==
 *  request.auth.claims.email" Example (Logic): title: "Public documents"
 *  description: "Determine whether the document should be publicly visible"
 *  expression: "document.type != 'private' && document.type != 'internal'"
 *  Example (Data Manipulation): title: "Notification string" description:
 *  "Create a notification string with a timestamp." expression: "'New message
 *  received at ' + string(document.create_time)" The exact variables and
 *  functions that may be referenced within an expression are determined by the
 *  service that evaluates it. See the service documentation for additional
 *  information.
 */
@interface GTLREventarc_Expr : GTLRObject

/**
 *  Optional. Description of the expression. This is a longer text which
 *  describes the expression, e.g. when hovered over it in a UI.
 *
 *  Remapped to 'descriptionProperty' to avoid NSObject's 'description'.
 */
@property(nonatomic, copy, nullable) NSString *descriptionProperty;

/**
 *  Textual representation of an expression in Common Expression Language
 *  syntax.
 */
@property(nonatomic, copy, nullable) NSString *expression;

/**
 *  Optional. String indicating the location of the expression for error
 *  reporting, e.g. a file name and a position in the file.
 */
@property(nonatomic, copy, nullable) NSString *location;

/**
 *  Optional. Title for the expression, i.e. a short string describing its
 *  purpose. This can be used e.g. in UIs which allow to enter the expression.
 */
@property(nonatomic, copy, nullable) NSString *title;

@end


/**
 *  Represents a GKE destination.
 */
@interface GTLREventarc_GKE : GTLRObject

/**
 *  Required. The name of the cluster the GKE service is running in. The cluster
 *  must be running in the same project as the trigger being created.
 */
@property(nonatomic, copy, nullable) NSString *cluster;

/**
 *  Required. The name of the Google Compute Engine in which the cluster
 *  resides, which can either be compute zone (e.g. us-central1-a) for the zonal
 *  clusters or region (e.g. us-central1) for regional clusters.
 */
@property(nonatomic, copy, nullable) NSString *location;

/**
 *  Required. The namespace the GKE service is running in.
 *
 *  Remapped to 'namespaceProperty' to avoid language reserved word 'namespace'.
 */
@property(nonatomic, copy, nullable) NSString *namespaceProperty;

/**
 *  Optional. The relative path on the GKE service the events should be sent to.
 *  The value must conform to the definition of URI path segment (section 3.3 of
 *  RFC2396). Examples: "/route", "route", "route/subroute".
 */
@property(nonatomic, copy, nullable) NSString *path;

/** Required. Name of the GKE service. */
@property(nonatomic, copy, nullable) NSString *service;

@end


/**
 *  The request message for Operations.CancelOperation.
 */
@interface GTLREventarc_GoogleLongrunningCancelOperationRequest : GTLRObject
@end


/**
 *  The response message for Operations.ListOperations.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "operations" property. If returned as the result of a query, it
 *        should support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLREventarc_GoogleLongrunningListOperationsResponse : GTLRCollectionObject

/** The standard List next-page token. */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  A list of operations that matches the specified filter in the request.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLREventarc_GoogleLongrunningOperation *> *operations;

@end


/**
 *  This resource represents a long-running operation that is the result of a
 *  network API call.
 */
@interface GTLREventarc_GoogleLongrunningOperation : GTLRObject

/**
 *  If the value is `false`, it means the operation is still in progress. If
 *  `true`, the operation is completed, and either `error` or `response` is
 *  available.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *done;

/** The error result of the operation in case of failure or cancellation. */
@property(nonatomic, strong, nullable) GTLREventarc_GoogleRpcStatus *error;

/**
 *  Service-specific metadata associated with the operation. It typically
 *  contains progress information and common metadata such as create time. Some
 *  services might not provide such metadata. Any method that returns a
 *  long-running operation should document the metadata type, if any.
 */
@property(nonatomic, strong, nullable) GTLREventarc_GoogleLongrunningOperation_Metadata *metadata;

/**
 *  The server-assigned name, which is only unique within the same service that
 *  originally returns it. If you use the default HTTP mapping, the `name`
 *  should be a resource name ending with `operations/{unique_id}`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  The normal response of the operation in case of success. If the original
 *  method returns no data on success, such as `Delete`, the response is
 *  `google.protobuf.Empty`. If the original method is standard
 *  `Get`/`Create`/`Update`, the response should be the resource. For other
 *  methods, the response should have the type `XxxResponse`, where `Xxx` is the
 *  original method name. For example, if the original method name is
 *  `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
 */
@property(nonatomic, strong, nullable) GTLREventarc_GoogleLongrunningOperation_Response *response;

@end


/**
 *  Service-specific metadata associated with the operation. It typically
 *  contains progress information and common metadata such as create time. Some
 *  services might not provide such metadata. Any method that returns a
 *  long-running operation should document the metadata type, if any.
 *
 *  @note This class is documented as having more properties of any valid JSON
 *        type. Use @c -additionalJSONKeys and @c -additionalPropertyForName: to
 *        get the list of properties and then fetch them; or @c
 *        -additionalProperties to fetch them all at once.
 */
@interface GTLREventarc_GoogleLongrunningOperation_Metadata : GTLRObject
@end


/**
 *  The normal response of the operation in case of success. If the original
 *  method returns no data on success, such as `Delete`, the response is
 *  `google.protobuf.Empty`. If the original method is standard
 *  `Get`/`Create`/`Update`, the response should be the resource. For other
 *  methods, the response should have the type `XxxResponse`, where `Xxx` is the
 *  original method name. For example, if the original method name is
 *  `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
 *
 *  @note This class is documented as having more properties of any valid JSON
 *        type. Use @c -additionalJSONKeys and @c -additionalPropertyForName: to
 *        get the list of properties and then fetch them; or @c
 *        -additionalProperties to fetch them all at once.
 */
@interface GTLREventarc_GoogleLongrunningOperation_Response : GTLRObject
@end


/**
 *  The `Status` type defines a logical error model that is suitable for
 *  different programming environments, including REST APIs and RPC APIs. It is
 *  used by [gRPC](https://github.com/grpc). Each `Status` message contains
 *  three pieces of data: error code, error message, and error details. You can
 *  find out more about this error model and how to work with it in the [API
 *  Design Guide](https://cloud.google.com/apis/design/errors).
 */
@interface GTLREventarc_GoogleRpcStatus : GTLRObject

/**
 *  The status code, which should be an enum value of google.rpc.Code.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *code;

/**
 *  A list of messages that carry the error details. There is a common set of
 *  message types for APIs to use.
 */
@property(nonatomic, strong, nullable) NSArray<GTLREventarc_GoogleRpcStatus_Details_Item *> *details;

/**
 *  A developer-facing error message, which should be in English. Any
 *  user-facing error message should be localized and sent in the
 *  google.rpc.Status.details field, or localized by the client.
 */
@property(nonatomic, copy, nullable) NSString *message;

@end


/**
 *  GTLREventarc_GoogleRpcStatus_Details_Item
 *
 *  @note This class is documented as having more properties of any valid JSON
 *        type. Use @c -additionalJSONKeys and @c -additionalPropertyForName: to
 *        get the list of properties and then fetch them; or @c
 *        -additionalProperties to fetch them all at once.
 */
@interface GTLREventarc_GoogleRpcStatus_Details_Item : GTLRObject
@end


/**
 *  The response message for Locations.ListLocations.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "locations" property. If returned as the result of a query, it
 *        should support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLREventarc_ListLocationsResponse : GTLRCollectionObject

/**
 *  A list of locations that matches the specified filter in the request.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLREventarc_Location *> *locations;

/** The standard List next-page token. */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

@end


/**
 *  The response message for the ListTriggers method.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "triggers" property. If returned as the result of a query, it
 *        should support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLREventarc_ListTriggersResponse : GTLRCollectionObject

/**
 *  A page token that can be sent to ListTriggers to request the next page. If
 *  this is empty, then there are no more pages.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  The requested triggers, up to the number specified in `page_size`.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLREventarc_Trigger *> *triggers;

/** Unreachable resources, if any. */
@property(nonatomic, strong, nullable) NSArray<NSString *> *unreachable;

@end


/**
 *  A resource that represents Google Cloud Platform location.
 */
@interface GTLREventarc_Location : GTLRObject

/**
 *  The friendly name for this location, typically a nearby city name. For
 *  example, "Tokyo".
 */
@property(nonatomic, copy, nullable) NSString *displayName;

/**
 *  Cross-service attributes for the location. For example
 *  {"cloud.googleapis.com/region": "us-east1"}
 */
@property(nonatomic, strong, nullable) GTLREventarc_Location_Labels *labels;

/** The canonical id for this location. For example: `"us-east1"`. */
@property(nonatomic, copy, nullable) NSString *locationId;

/**
 *  Service-specific metadata. For example the available capacity at the given
 *  location.
 */
@property(nonatomic, strong, nullable) GTLREventarc_Location_Metadata *metadata;

/**
 *  Resource name for the location, which may vary between implementations. For
 *  example: `"projects/example-project/locations/us-east1"`
 */
@property(nonatomic, copy, nullable) NSString *name;

@end


/**
 *  Cross-service attributes for the location. For example
 *  {"cloud.googleapis.com/region": "us-east1"}
 *
 *  @note This class is documented as having more properties of NSString. Use @c
 *        -additionalJSONKeys and @c -additionalPropertyForName: to get the list
 *        of properties and then fetch them; or @c -additionalProperties to
 *        fetch them all at once.
 */
@interface GTLREventarc_Location_Labels : GTLRObject
@end


/**
 *  Service-specific metadata. For example the available capacity at the given
 *  location.
 *
 *  @note This class is documented as having more properties of any valid JSON
 *        type. Use @c -additionalJSONKeys and @c -additionalPropertyForName: to
 *        get the list of properties and then fetch them; or @c
 *        -additionalProperties to fetch them all at once.
 */
@interface GTLREventarc_Location_Metadata : GTLRObject
@end


/**
 *  Represents the metadata of the long-running operation.
 */
@interface GTLREventarc_OperationMetadata : GTLRObject

/** Output only. API version used to start the operation. */
@property(nonatomic, copy, nullable) NSString *apiVersion;

/** Output only. The time the operation was created. */
@property(nonatomic, strong, nullable) GTLRDateTime *createTime;

/** Output only. The time the operation finished running. */
@property(nonatomic, strong, nullable) GTLRDateTime *endTime;

/**
 *  Output only. Identifies whether the user has requested cancellation of the
 *  operation. Operations that have successfully been cancelled have
 *  Operation.error value with a google.rpc.Status.code of 1, corresponding to
 *  `Code.CANCELLED`.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *requestedCancellation;

/** Output only. Human-readable status of the operation, if any. */
@property(nonatomic, copy, nullable) NSString *statusMessage;

/**
 *  Output only. Server-defined resource path for the target of the operation.
 */
@property(nonatomic, copy, nullable) NSString *target;

/** Output only. Name of the verb executed by the operation. */
@property(nonatomic, copy, nullable) NSString *verb;

@end


/**
 *  An Identity and Access Management (IAM) policy, which specifies access
 *  controls for Google Cloud resources. A `Policy` is a collection of
 *  `bindings`. A `binding` binds one or more `members`, or principals, to a
 *  single `role`. Principals can be user accounts, service accounts, Google
 *  groups, and domains (such as G Suite). A `role` is a named list of
 *  permissions; each `role` can be an IAM predefined role or a user-created
 *  custom role. For some types of Google Cloud resources, a `binding` can also
 *  specify a `condition`, which is a logical expression that allows access to a
 *  resource only if the expression evaluates to `true`. A condition can add
 *  constraints based on attributes of the request, the resource, or both. To
 *  learn which resources support conditions in their IAM policies, see the [IAM
 *  documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
 *  **JSON example:** { "bindings": [ { "role":
 *  "roles/resourcemanager.organizationAdmin", "members": [
 *  "user:mike\@example.com", "group:admins\@example.com", "domain:google.com",
 *  "serviceAccount:my-project-id\@appspot.gserviceaccount.com" ] }, { "role":
 *  "roles/resourcemanager.organizationViewer", "members": [
 *  "user:eve\@example.com" ], "condition": { "title": "expirable access",
 *  "description": "Does not grant access after Sep 2020", "expression":
 *  "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
 *  "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
 *  user:mike\@example.com - group:admins\@example.com - domain:google.com -
 *  serviceAccount:my-project-id\@appspot.gserviceaccount.com role:
 *  roles/resourcemanager.organizationAdmin - members: - user:eve\@example.com
 *  role: roles/resourcemanager.organizationViewer condition: title: expirable
 *  access description: Does not grant access after Sep 2020 expression:
 *  request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
 *  version: 3 For a description of IAM and its features, see the [IAM
 *  documentation](https://cloud.google.com/iam/docs/).
 */
@interface GTLREventarc_Policy : GTLRObject

/** Specifies cloud audit logging configuration for this policy. */
@property(nonatomic, strong, nullable) NSArray<GTLREventarc_AuditConfig *> *auditConfigs;

/**
 *  Associates a list of `members`, or principals, with a `role`. Optionally,
 *  may specify a `condition` that determines how and when the `bindings` are
 *  applied. Each of the `bindings` must contain at least one principal. The
 *  `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of
 *  these principals can be Google groups. Each occurrence of a principal counts
 *  towards these limits. For example, if the `bindings` grant 50 different
 *  roles to `user:alice\@example.com`, and not to any other principal, then you
 *  can add another 1,450 principals to the `bindings` in the `Policy`.
 */
@property(nonatomic, strong, nullable) NSArray<GTLREventarc_Binding *> *bindings;

/**
 *  `etag` is used for optimistic concurrency control as a way to help prevent
 *  simultaneous updates of a policy from overwriting each other. It is strongly
 *  suggested that systems make use of the `etag` in the read-modify-write cycle
 *  to perform policy updates in order to avoid race conditions: An `etag` is
 *  returned in the response to `getIamPolicy`, and systems are expected to put
 *  that etag in the request to `setIamPolicy` to ensure that their change will
 *  be applied to the same version of the policy. **Important:** If you use IAM
 *  Conditions, you must include the `etag` field whenever you call
 *  `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
 *  version `3` policy with a version `1` policy, and all of the conditions in
 *  the version `3` policy are lost.
 *
 *  Contains encoded binary data; GTLRBase64 can encode/decode (probably
 *  web-safe format).
 */
@property(nonatomic, copy, nullable) NSString *ETag;

/**
 *  Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
 *  Requests that specify an invalid value are rejected. Any operation that
 *  affects conditional role bindings must specify version `3`. This requirement
 *  applies to the following operations: * Getting a policy that includes a
 *  conditional role binding * Adding a conditional role binding to a policy *
 *  Changing a conditional role binding in a policy * Removing any role binding,
 *  with or without a condition, from a policy that includes conditions
 *  **Important:** If you use IAM Conditions, you must include the `etag` field
 *  whenever you call `setIamPolicy`. If you omit this field, then IAM allows
 *  you to overwrite a version `3` policy with a version `1` policy, and all of
 *  the conditions in the version `3` policy are lost. If a policy does not
 *  include any conditions, operations on that policy may specify any valid
 *  version or leave the field unset. To learn which resources support
 *  conditions in their IAM policies, see the [IAM
 *  documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *version;

@end


/**
 *  Represents a Pub/Sub transport.
 */
@interface GTLREventarc_Pubsub : GTLRObject

/**
 *  Output only. The name of the Pub/Sub subscription created and managed by
 *  Eventarc system as a transport for the event delivery. Format:
 *  `projects/{PROJECT_ID}/subscriptions/{SUBSCRIPTION_NAME}`.
 */
@property(nonatomic, copy, nullable) NSString *subscription;

/**
 *  Optional. The name of the Pub/Sub topic created and managed by Eventarc
 *  system as a transport for the event delivery. Format:
 *  `projects/{PROJECT_ID}/topics/{TOPIC_NAME}`. You may set an existing topic
 *  for triggers of the type `google.cloud.pubsub.topic.v1.messagePublished`
 *  only. The topic you provide here will not be deleted by Eventarc at trigger
 *  deletion.
 */
@property(nonatomic, copy, nullable) NSString *topic;

@end


/**
 *  Request message for `SetIamPolicy` method.
 */
@interface GTLREventarc_SetIamPolicyRequest : GTLRObject

/**
 *  REQUIRED: The complete policy to be applied to the `resource`. The size of
 *  the policy is limited to a few 10s of KB. An empty policy is a valid policy
 *  but certain Cloud Platform services (such as Projects) might reject them.
 */
@property(nonatomic, strong, nullable) GTLREventarc_Policy *policy;

/**
 *  OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
 *  the fields in the mask will be modified. If no mask is provided, the
 *  following default mask is used: `paths: "bindings, etag"`
 *
 *  String format is a comma-separated list of fields.
 */
@property(nonatomic, copy, nullable) NSString *updateMask;

@end


/**
 *  Request message for `TestIamPermissions` method.
 */
@interface GTLREventarc_TestIamPermissionsRequest : GTLRObject

/**
 *  The set of permissions to check for the `resource`. Permissions with
 *  wildcards (such as '*' or 'storage.*') are not allowed. For more information
 *  see [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *permissions;

@end


/**
 *  Response message for `TestIamPermissions` method.
 */
@interface GTLREventarc_TestIamPermissionsResponse : GTLRObject

/**
 *  A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *permissions;

@end


/**
 *  Represents the transport intermediaries created for the trigger in order to
 *  deliver events.
 */
@interface GTLREventarc_Transport : GTLRObject

/**
 *  The Pub/Sub topic and subscription used by Eventarc as delivery
 *  intermediary.
 */
@property(nonatomic, strong, nullable) GTLREventarc_Pubsub *pubsub;

@end


/**
 *  A representation of the trigger resource.
 */
@interface GTLREventarc_Trigger : GTLRObject

/** Output only. The creation time. */
@property(nonatomic, strong, nullable) GTLRDateTime *createTime;

/** Required. Destination specifies where the events should be sent to. */
@property(nonatomic, strong, nullable) GTLREventarc_Destination *destination;

/**
 *  Output only. This checksum is computed by the server based on the value of
 *  other fields, and may be sent only on create requests to ensure the client
 *  has an up-to-date value before proceeding.
 */
@property(nonatomic, copy, nullable) NSString *ETag;

/**
 *  Required. null The list of filters that applies to event attributes. Only
 *  events that match all the provided filters will be sent to the destination.
 */
@property(nonatomic, strong, nullable) NSArray<GTLREventarc_EventFilter *> *eventFilters;

/**
 *  Optional. User labels attached to the triggers that can be used to group
 *  resources.
 */
@property(nonatomic, strong, nullable) GTLREventarc_Trigger_Labels *labels;

/**
 *  Required. The resource name of the trigger. Must be unique within the
 *  location on the project and must be in
 *  `projects/{project}/locations/{location}/triggers/{trigger}` format.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Optional. The IAM service account email associated with the trigger. The
 *  service account represents the identity of the trigger. The principal who
 *  calls this API must have `iam.serviceAccounts.actAs` permission in the
 *  service account. See
 *  https://cloud.google.com/iam/docs/understanding-service-accounts?hl=en#sa_common
 *  for more information. For Cloud Run destinations, this service account is
 *  used to generate identity tokens when invoking the service. See
 *  https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account
 *  for information on how to invoke authenticated Cloud Run services. In order
 *  to create Audit Log triggers, the service account should also have
 *  `roles/eventarc.eventReceiver` IAM role.
 */
@property(nonatomic, copy, nullable) NSString *serviceAccount;

/**
 *  Optional. In order to deliver messages, Eventarc may use other GCP products
 *  as transport intermediary. This field contains a reference to that transport
 *  intermediary. This information can be used for debugging purposes.
 */
@property(nonatomic, strong, nullable) GTLREventarc_Transport *transport;

/**
 *  Output only. Server assigned unique identifier for the trigger. The value is
 *  a UUID4 string and guaranteed to remain unchanged until the resource is
 *  deleted.
 */
@property(nonatomic, copy, nullable) NSString *uid;

/** Output only. The last-modified time. */
@property(nonatomic, strong, nullable) GTLRDateTime *updateTime;

@end


/**
 *  Optional. User labels attached to the triggers that can be used to group
 *  resources.
 *
 *  @note This class is documented as having more properties of NSString. Use @c
 *        -additionalJSONKeys and @c -additionalPropertyForName: to get the list
 *        of properties and then fetch them; or @c -additionalProperties to
 *        fetch them all at once.
 */
@interface GTLREventarc_Trigger_Labels : GTLRObject
@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
