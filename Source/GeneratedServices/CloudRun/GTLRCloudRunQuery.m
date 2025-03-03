// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Run Admin API (run/v1)
// Description:
//   Deploy and manage user provided container images that scale automatically
//   based on incoming requests. The Cloud Run Admin API follows the Knative
//   Serving API specification.
// Documentation:
//   https://cloud.google.com/run/

#import "GTLRCloudRunQuery.h"

#import "GTLRCloudRunObjects.h"

@implementation GTLRCloudRunQuery

@dynamic fields;

@end

@implementation GTLRCloudRunQuery_NamespacesAuthorizeddomainsList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"apis/domains.cloudrun.com/v1/{+parent}/authorizeddomains";
  GTLRCloudRunQuery_NamespacesAuthorizeddomainsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudRun_ListAuthorizedDomainsResponse class];
  query.loggingName = @"run.namespaces.authorizeddomains.list";
  return query;
}

@end

@implementation GTLRCloudRunQuery_NamespacesConfigurationsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"apis/serving.knative.dev/v1/{+name}";
  GTLRCloudRunQuery_NamespacesConfigurationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_Configuration class];
  query.loggingName = @"run.namespaces.configurations.get";
  return query;
}

@end

@implementation GTLRCloudRunQuery_NamespacesConfigurationsList

@dynamic continueProperty, fieldSelector, includeUninitialized, labelSelector,
         limit, parent, resourceVersion, watch;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"continueProperty" : @"continue" };
}

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"apis/serving.knative.dev/v1/{+parent}/configurations";
  GTLRCloudRunQuery_NamespacesConfigurationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudRun_ListConfigurationsResponse class];
  query.loggingName = @"run.namespaces.configurations.list";
  return query;
}

@end

@implementation GTLRCloudRunQuery_NamespacesDomainmappingsCreate

@dynamic dryRun, parent;

+ (instancetype)queryWithObject:(GTLRCloudRun_DomainMapping *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"apis/domains.cloudrun.com/v1/{+parent}/domainmappings";
  GTLRCloudRunQuery_NamespacesDomainmappingsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudRun_DomainMapping class];
  query.loggingName = @"run.namespaces.domainmappings.create";
  return query;
}

@end

@implementation GTLRCloudRunQuery_NamespacesDomainmappingsDelete

@dynamic apiVersion, dryRun, kind, name, propagationPolicy;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"apis/domains.cloudrun.com/v1/{+name}";
  GTLRCloudRunQuery_NamespacesDomainmappingsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_Status class];
  query.loggingName = @"run.namespaces.domainmappings.delete";
  return query;
}

@end

@implementation GTLRCloudRunQuery_NamespacesDomainmappingsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"apis/domains.cloudrun.com/v1/{+name}";
  GTLRCloudRunQuery_NamespacesDomainmappingsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_DomainMapping class];
  query.loggingName = @"run.namespaces.domainmappings.get";
  return query;
}

@end

@implementation GTLRCloudRunQuery_NamespacesDomainmappingsList

@dynamic continueProperty, fieldSelector, includeUninitialized, labelSelector,
         limit, parent, resourceVersion, watch;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"continueProperty" : @"continue" };
}

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"apis/domains.cloudrun.com/v1/{+parent}/domainmappings";
  GTLRCloudRunQuery_NamespacesDomainmappingsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudRun_ListDomainMappingsResponse class];
  query.loggingName = @"run.namespaces.domainmappings.list";
  return query;
}

@end

@implementation GTLRCloudRunQuery_NamespacesRevisionsDelete

@dynamic apiVersion, dryRun, kind, name, propagationPolicy;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"apis/serving.knative.dev/v1/{+name}";
  GTLRCloudRunQuery_NamespacesRevisionsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_Status class];
  query.loggingName = @"run.namespaces.revisions.delete";
  return query;
}

@end

@implementation GTLRCloudRunQuery_NamespacesRevisionsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"apis/serving.knative.dev/v1/{+name}";
  GTLRCloudRunQuery_NamespacesRevisionsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_Revision class];
  query.loggingName = @"run.namespaces.revisions.get";
  return query;
}

@end

@implementation GTLRCloudRunQuery_NamespacesRevisionsList

@dynamic continueProperty, fieldSelector, includeUninitialized, labelSelector,
         limit, parent, resourceVersion, watch;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"continueProperty" : @"continue" };
}

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"apis/serving.knative.dev/v1/{+parent}/revisions";
  GTLRCloudRunQuery_NamespacesRevisionsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudRun_ListRevisionsResponse class];
  query.loggingName = @"run.namespaces.revisions.list";
  return query;
}

@end

@implementation GTLRCloudRunQuery_NamespacesRoutesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"apis/serving.knative.dev/v1/{+name}";
  GTLRCloudRunQuery_NamespacesRoutesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_Route class];
  query.loggingName = @"run.namespaces.routes.get";
  return query;
}

@end

@implementation GTLRCloudRunQuery_NamespacesRoutesList

@dynamic continueProperty, fieldSelector, includeUninitialized, labelSelector,
         limit, parent, resourceVersion, watch;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"continueProperty" : @"continue" };
}

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"apis/serving.knative.dev/v1/{+parent}/routes";
  GTLRCloudRunQuery_NamespacesRoutesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudRun_ListRoutesResponse class];
  query.loggingName = @"run.namespaces.routes.list";
  return query;
}

@end

@implementation GTLRCloudRunQuery_NamespacesServicesCreate

@dynamic dryRun, parent;

+ (instancetype)queryWithObject:(GTLRCloudRun_Service *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"apis/serving.knative.dev/v1/{+parent}/services";
  GTLRCloudRunQuery_NamespacesServicesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudRun_Service class];
  query.loggingName = @"run.namespaces.services.create";
  return query;
}

@end

@implementation GTLRCloudRunQuery_NamespacesServicesDelete

@dynamic apiVersion, dryRun, kind, name, propagationPolicy;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"apis/serving.knative.dev/v1/{+name}";
  GTLRCloudRunQuery_NamespacesServicesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_Status class];
  query.loggingName = @"run.namespaces.services.delete";
  return query;
}

@end

@implementation GTLRCloudRunQuery_NamespacesServicesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"apis/serving.knative.dev/v1/{+name}";
  GTLRCloudRunQuery_NamespacesServicesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_Service class];
  query.loggingName = @"run.namespaces.services.get";
  return query;
}

@end

@implementation GTLRCloudRunQuery_NamespacesServicesList

@dynamic continueProperty, fieldSelector, includeUninitialized, labelSelector,
         limit, parent, resourceVersion, watch;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"continueProperty" : @"continue" };
}

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"apis/serving.knative.dev/v1/{+parent}/services";
  GTLRCloudRunQuery_NamespacesServicesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudRun_ListServicesResponse class];
  query.loggingName = @"run.namespaces.services.list";
  return query;
}

@end

@implementation GTLRCloudRunQuery_NamespacesServicesReplaceService

@dynamic dryRun, name;

+ (instancetype)queryWithObject:(GTLRCloudRun_Service *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"apis/serving.knative.dev/v1/{+name}";
  GTLRCloudRunQuery_NamespacesServicesReplaceService *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_Service class];
  query.loggingName = @"run.namespaces.services.replaceService";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsAuthorizeddomainsList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/authorizeddomains";
  GTLRCloudRunQuery_ProjectsAuthorizeddomainsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudRun_ListAuthorizedDomainsResponse class];
  query.loggingName = @"run.projects.authorizeddomains.list";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsAuthorizeddomainsList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/authorizeddomains";
  GTLRCloudRunQuery_ProjectsLocationsAuthorizeddomainsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudRun_ListAuthorizedDomainsResponse class];
  query.loggingName = @"run.projects.locations.authorizeddomains.list";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsConfigurationsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRCloudRunQuery_ProjectsLocationsConfigurationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_Configuration class];
  query.loggingName = @"run.projects.locations.configurations.get";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsConfigurationsList

@dynamic continueProperty, fieldSelector, includeUninitialized, labelSelector,
         limit, parent, resourceVersion, watch;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"continueProperty" : @"continue" };
}

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/configurations";
  GTLRCloudRunQuery_ProjectsLocationsConfigurationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudRun_ListConfigurationsResponse class];
  query.loggingName = @"run.projects.locations.configurations.list";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsDomainmappingsCreate

@dynamic dryRun, parent;

+ (instancetype)queryWithObject:(GTLRCloudRun_DomainMapping *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/domainmappings";
  GTLRCloudRunQuery_ProjectsLocationsDomainmappingsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudRun_DomainMapping class];
  query.loggingName = @"run.projects.locations.domainmappings.create";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsDomainmappingsDelete

@dynamic apiVersion, dryRun, kind, name, propagationPolicy;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRCloudRunQuery_ProjectsLocationsDomainmappingsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_Status class];
  query.loggingName = @"run.projects.locations.domainmappings.delete";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsDomainmappingsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRCloudRunQuery_ProjectsLocationsDomainmappingsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_DomainMapping class];
  query.loggingName = @"run.projects.locations.domainmappings.get";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsDomainmappingsList

@dynamic continueProperty, fieldSelector, includeUninitialized, labelSelector,
         limit, parent, resourceVersion, watch;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"continueProperty" : @"continue" };
}

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/domainmappings";
  GTLRCloudRunQuery_ProjectsLocationsDomainmappingsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudRun_ListDomainMappingsResponse class];
  query.loggingName = @"run.projects.locations.domainmappings.list";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsList

@dynamic filter, name, pageSize, pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}/locations";
  GTLRCloudRunQuery_ProjectsLocationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_ListLocationsResponse class];
  query.loggingName = @"run.projects.locations.list";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsRevisionsDelete

@dynamic apiVersion, dryRun, kind, name, propagationPolicy;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRCloudRunQuery_ProjectsLocationsRevisionsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_Status class];
  query.loggingName = @"run.projects.locations.revisions.delete";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsRevisionsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRCloudRunQuery_ProjectsLocationsRevisionsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_Revision class];
  query.loggingName = @"run.projects.locations.revisions.get";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsRevisionsList

@dynamic continueProperty, fieldSelector, includeUninitialized, labelSelector,
         limit, parent, resourceVersion, watch;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"continueProperty" : @"continue" };
}

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/revisions";
  GTLRCloudRunQuery_ProjectsLocationsRevisionsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudRun_ListRevisionsResponse class];
  query.loggingName = @"run.projects.locations.revisions.list";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsRoutesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRCloudRunQuery_ProjectsLocationsRoutesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_Route class];
  query.loggingName = @"run.projects.locations.routes.get";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsRoutesList

@dynamic continueProperty, fieldSelector, includeUninitialized, labelSelector,
         limit, parent, resourceVersion, watch;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"continueProperty" : @"continue" };
}

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/routes";
  GTLRCloudRunQuery_ProjectsLocationsRoutesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudRun_ListRoutesResponse class];
  query.loggingName = @"run.projects.locations.routes.list";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsServicesCreate

@dynamic dryRun, parent;

+ (instancetype)queryWithObject:(GTLRCloudRun_Service *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/services";
  GTLRCloudRunQuery_ProjectsLocationsServicesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudRun_Service class];
  query.loggingName = @"run.projects.locations.services.create";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsServicesDelete

@dynamic apiVersion, dryRun, kind, name, propagationPolicy;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRCloudRunQuery_ProjectsLocationsServicesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_Status class];
  query.loggingName = @"run.projects.locations.services.delete";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsServicesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRCloudRunQuery_ProjectsLocationsServicesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_Service class];
  query.loggingName = @"run.projects.locations.services.get";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsServicesGetIamPolicy

@dynamic optionsRequestedPolicyVersion, resource;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"optionsRequestedPolicyVersion" : @"options.requestedPolicyVersion" };
}

+ (instancetype)queryWithResource:(NSString *)resource {
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:getIamPolicy";
  GTLRCloudRunQuery_ProjectsLocationsServicesGetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudRun_Policy class];
  query.loggingName = @"run.projects.locations.services.getIamPolicy";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsServicesList

@dynamic continueProperty, fieldSelector, includeUninitialized, labelSelector,
         limit, parent, resourceVersion, watch;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"continueProperty" : @"continue" };
}

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/services";
  GTLRCloudRunQuery_ProjectsLocationsServicesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudRun_ListServicesResponse class];
  query.loggingName = @"run.projects.locations.services.list";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsServicesReplaceService

@dynamic dryRun, name;

+ (instancetype)queryWithObject:(GTLRCloudRun_Service *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRCloudRunQuery_ProjectsLocationsServicesReplaceService *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudRun_Service class];
  query.loggingName = @"run.projects.locations.services.replaceService";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsServicesSetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRCloudRun_SetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:setIamPolicy";
  GTLRCloudRunQuery_ProjectsLocationsServicesSetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudRun_Policy class];
  query.loggingName = @"run.projects.locations.services.setIamPolicy";
  return query;
}

@end

@implementation GTLRCloudRunQuery_ProjectsLocationsServicesTestIamPermissions

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRCloudRun_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:testIamPermissions";
  GTLRCloudRunQuery_ProjectsLocationsServicesTestIamPermissions *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudRun_TestIamPermissionsResponse class];
  query.loggingName = @"run.projects.locations.services.testIamPermissions";
  return query;
}

@end
