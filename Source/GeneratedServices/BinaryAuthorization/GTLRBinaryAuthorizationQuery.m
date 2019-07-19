// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Binary Authorization API (binaryauthorization/v1beta1)
// Description:
//   The management interface for Binary Authorization, a system providing
//   policy control for images deployed to Kubernetes Engine clusters.
// Documentation:
//   https://cloud.google.com/binary-authorization/

#import "GTLRBinaryAuthorizationQuery.h"

#import "GTLRBinaryAuthorizationObjects.h"

@implementation GTLRBinaryAuthorizationQuery

@dynamic fields;

@end

@implementation GTLRBinaryAuthorizationQuery_ProjectsAttestorsCreate

@dynamic attestorId, parent;

+ (instancetype)queryWithObject:(GTLRBinaryAuthorization_Attestor *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1beta1/{+parent}/attestors";
  GTLRBinaryAuthorizationQuery_ProjectsAttestorsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRBinaryAuthorization_Attestor class];
  query.loggingName = @"binaryauthorization.projects.attestors.create";
  return query;
}

@end

@implementation GTLRBinaryAuthorizationQuery_ProjectsAttestorsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}";
  GTLRBinaryAuthorizationQuery_ProjectsAttestorsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRBinaryAuthorization_Empty class];
  query.loggingName = @"binaryauthorization.projects.attestors.delete";
  return query;
}

@end

@implementation GTLRBinaryAuthorizationQuery_ProjectsAttestorsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}";
  GTLRBinaryAuthorizationQuery_ProjectsAttestorsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRBinaryAuthorization_Attestor class];
  query.loggingName = @"binaryauthorization.projects.attestors.get";
  return query;
}

@end

@implementation GTLRBinaryAuthorizationQuery_ProjectsAttestorsGetIamPolicy

@dynamic optionsRequestedPolicyVersion, resource;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"optionsRequestedPolicyVersion" : @"options.requestedPolicyVersion" };
}

+ (instancetype)queryWithResource:(NSString *)resource {
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1beta1/{+resource}:getIamPolicy";
  GTLRBinaryAuthorizationQuery_ProjectsAttestorsGetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.resource = resource;
  query.expectedObjectClass = [GTLRBinaryAuthorization_IamPolicy class];
  query.loggingName = @"binaryauthorization.projects.attestors.getIamPolicy";
  return query;
}

@end

@implementation GTLRBinaryAuthorizationQuery_ProjectsAttestorsList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1beta1/{+parent}/attestors";
  GTLRBinaryAuthorizationQuery_ProjectsAttestorsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRBinaryAuthorization_ListAttestorsResponse class];
  query.loggingName = @"binaryauthorization.projects.attestors.list";
  return query;
}

@end

@implementation GTLRBinaryAuthorizationQuery_ProjectsAttestorsSetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRBinaryAuthorization_SetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1beta1/{+resource}:setIamPolicy";
  GTLRBinaryAuthorizationQuery_ProjectsAttestorsSetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRBinaryAuthorization_IamPolicy class];
  query.loggingName = @"binaryauthorization.projects.attestors.setIamPolicy";
  return query;
}

@end

@implementation GTLRBinaryAuthorizationQuery_ProjectsAttestorsTestIamPermissions

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRBinaryAuthorization_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1beta1/{+resource}:testIamPermissions";
  GTLRBinaryAuthorizationQuery_ProjectsAttestorsTestIamPermissions *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRBinaryAuthorization_TestIamPermissionsResponse class];
  query.loggingName = @"binaryauthorization.projects.attestors.testIamPermissions";
  return query;
}

@end

@implementation GTLRBinaryAuthorizationQuery_ProjectsAttestorsUpdate

@dynamic name;

+ (instancetype)queryWithObject:(GTLRBinaryAuthorization_Attestor *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}";
  GTLRBinaryAuthorizationQuery_ProjectsAttestorsUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRBinaryAuthorization_Attestor class];
  query.loggingName = @"binaryauthorization.projects.attestors.update";
  return query;
}

@end

@implementation GTLRBinaryAuthorizationQuery_ProjectsGetPolicy

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}";
  GTLRBinaryAuthorizationQuery_ProjectsGetPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRBinaryAuthorization_Policy class];
  query.loggingName = @"binaryauthorization.projects.getPolicy";
  return query;
}

@end

@implementation GTLRBinaryAuthorizationQuery_ProjectsPolicyGetIamPolicy

@dynamic optionsRequestedPolicyVersion, resource;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"optionsRequestedPolicyVersion" : @"options.requestedPolicyVersion" };
}

+ (instancetype)queryWithResource:(NSString *)resource {
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1beta1/{+resource}:getIamPolicy";
  GTLRBinaryAuthorizationQuery_ProjectsPolicyGetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.resource = resource;
  query.expectedObjectClass = [GTLRBinaryAuthorization_IamPolicy class];
  query.loggingName = @"binaryauthorization.projects.policy.getIamPolicy";
  return query;
}

@end

@implementation GTLRBinaryAuthorizationQuery_ProjectsPolicySetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRBinaryAuthorization_SetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1beta1/{+resource}:setIamPolicy";
  GTLRBinaryAuthorizationQuery_ProjectsPolicySetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRBinaryAuthorization_IamPolicy class];
  query.loggingName = @"binaryauthorization.projects.policy.setIamPolicy";
  return query;
}

@end

@implementation GTLRBinaryAuthorizationQuery_ProjectsPolicyTestIamPermissions

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRBinaryAuthorization_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1beta1/{+resource}:testIamPermissions";
  GTLRBinaryAuthorizationQuery_ProjectsPolicyTestIamPermissions *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRBinaryAuthorization_TestIamPermissionsResponse class];
  query.loggingName = @"binaryauthorization.projects.policy.testIamPermissions";
  return query;
}

@end

@implementation GTLRBinaryAuthorizationQuery_ProjectsUpdatePolicy

@dynamic name;

+ (instancetype)queryWithObject:(GTLRBinaryAuthorization_Policy *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1beta1/{+name}";
  GTLRBinaryAuthorizationQuery_ProjectsUpdatePolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRBinaryAuthorization_Policy class];
  query.loggingName = @"binaryauthorization.projects.updatePolicy";
  return query;
}

@end
