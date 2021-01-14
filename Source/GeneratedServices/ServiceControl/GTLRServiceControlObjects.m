// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Service Control API (servicecontrol/v2)
// Description:
//   Provides admission control and telemetry reporting for services integrated
//   with Service Infrastructure.
// Documentation:
//   https://cloud.google.com/service-control/

#import "GTLRServiceControlObjects.h"

// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_Api
//

@implementation GTLRServiceControl_Api
@dynamic operation, protocol, service, version;
@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_AttributeContext
//

@implementation GTLRServiceControl_AttributeContext
@dynamic api, destination, extensions, origin, request, resource, response,
         source;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"extensions" : [GTLRServiceControl_AttributeContext_Extensions_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_AttributeContext_Extensions_Item
//

@implementation GTLRServiceControl_AttributeContext_Extensions_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_AuditLog
//

@implementation GTLRServiceControl_AuditLog
@dynamic authenticationInfo, authorizationInfo, metadata, methodName,
         numResponseItems, request, requestMetadata, resourceLocation,
         resourceName, resourceOriginalState, response, serviceData,
         serviceName, status;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"authorizationInfo" : [GTLRServiceControl_AuthorizationInfo class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_AuditLog_Metadata
//

@implementation GTLRServiceControl_AuditLog_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_AuditLog_Request
//

@implementation GTLRServiceControl_AuditLog_Request

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_AuditLog_ResourceOriginalState
//

@implementation GTLRServiceControl_AuditLog_ResourceOriginalState

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_AuditLog_Response
//

@implementation GTLRServiceControl_AuditLog_Response

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_AuditLog_ServiceData
//

@implementation GTLRServiceControl_AuditLog_ServiceData

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_Auth
//

@implementation GTLRServiceControl_Auth
@dynamic accessLevels, audiences, claims, presenter, principal;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"accessLevels" : [NSString class],
    @"audiences" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_Auth_Claims
//

@implementation GTLRServiceControl_Auth_Claims

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_AuthenticationInfo
//

@implementation GTLRServiceControl_AuthenticationInfo
@dynamic authoritySelector, principalEmail, principalSubject,
         serviceAccountDelegationInfo, serviceAccountKeyName,
         thirdPartyPrincipal;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"serviceAccountDelegationInfo" : [GTLRServiceControl_ServiceAccountDelegationInfo class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_AuthenticationInfo_ThirdPartyPrincipal
//

@implementation GTLRServiceControl_AuthenticationInfo_ThirdPartyPrincipal

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_AuthorizationInfo
//

@implementation GTLRServiceControl_AuthorizationInfo
@dynamic granted, permission, resource, resourceAttributes;
@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_CheckRequest
//

@implementation GTLRServiceControl_CheckRequest
@dynamic attributes, resources, serviceConfigId;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"resources" : [GTLRServiceControl_ResourceInfo class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_CheckResponse
//

@implementation GTLRServiceControl_CheckResponse
@dynamic headers, status;
@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_CheckResponse_Headers
//

@implementation GTLRServiceControl_CheckResponse_Headers

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_FirstPartyPrincipal
//

@implementation GTLRServiceControl_FirstPartyPrincipal
@dynamic principalEmail, serviceMetadata;
@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_FirstPartyPrincipal_ServiceMetadata
//

@implementation GTLRServiceControl_FirstPartyPrincipal_ServiceMetadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_Peer
//

@implementation GTLRServiceControl_Peer
@dynamic ip, labels, port, principal, regionCode;
@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_Peer_Labels
//

@implementation GTLRServiceControl_Peer_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_ReportRequest
//

@implementation GTLRServiceControl_ReportRequest
@dynamic operations, serviceConfigId;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"operations" : [GTLRServiceControl_AttributeContext class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_ReportResponse
//

@implementation GTLRServiceControl_ReportResponse
@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_Request
//

@implementation GTLRServiceControl_Request
@dynamic auth, headers, host, identifier, method, path, protocol, query, reason,
         scheme, size, time;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_Request_Headers
//

@implementation GTLRServiceControl_Request_Headers

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_RequestMetadata
//

@implementation GTLRServiceControl_RequestMetadata
@dynamic callerIp, callerNetwork, callerSuppliedUserAgent,
         destinationAttributes, requestAttributes;
@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_Resource
//

@implementation GTLRServiceControl_Resource
@dynamic annotations, createTime, deleteTime, displayName, ETag, labels,
         location, name, service, type, uid, updateTime;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"ETag" : @"etag" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_Resource_Annotations
//

@implementation GTLRServiceControl_Resource_Annotations

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_Resource_Labels
//

@implementation GTLRServiceControl_Resource_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_ResourceInfo
//

@implementation GTLRServiceControl_ResourceInfo
@dynamic name, permission, type;
@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_ResourceLocation
//

@implementation GTLRServiceControl_ResourceLocation
@dynamic currentLocations, originalLocations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"currentLocations" : [NSString class],
    @"originalLocations" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_Response
//

@implementation GTLRServiceControl_Response
@dynamic code, headers, size, time;
@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_Response_Headers
//

@implementation GTLRServiceControl_Response_Headers

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_ServiceAccountDelegationInfo
//

@implementation GTLRServiceControl_ServiceAccountDelegationInfo
@dynamic firstPartyPrincipal, principalSubject, thirdPartyPrincipal;
@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_SpanContext
//

@implementation GTLRServiceControl_SpanContext
@dynamic spanName;
@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_Status
//

@implementation GTLRServiceControl_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRServiceControl_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_Status_Details_Item
//

@implementation GTLRServiceControl_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_ThirdPartyPrincipal
//

@implementation GTLRServiceControl_ThirdPartyPrincipal
@dynamic thirdPartyClaims;
@end


// ----------------------------------------------------------------------------
//
//   GTLRServiceControl_ThirdPartyPrincipal_ThirdPartyClaims
//

@implementation GTLRServiceControl_ThirdPartyPrincipal_ThirdPartyClaims

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end
