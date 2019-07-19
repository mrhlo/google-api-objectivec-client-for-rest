// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Pub/Sub API (pubsub/v1)
// Description:
//   Provides reliable, many-to-many, asynchronous messaging between
//   applications.
// Documentation:
//   https://cloud.google.com/pubsub/docs

#import "GTLRPubsubQuery.h"

#import "GTLRPubsubObjects.h"

@implementation GTLRPubsubQuery

@dynamic fields;

@end

@implementation GTLRPubsubQuery_ProjectsSnapshotsCreate

@dynamic name;

+ (instancetype)queryWithObject:(GTLRPubsub_CreateSnapshotRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRPubsubQuery_ProjectsSnapshotsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRPubsub_Snapshot class];
  query.loggingName = @"pubsub.projects.snapshots.create";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSnapshotsDelete

@dynamic snapshot;

+ (instancetype)queryWithSnapshot:(NSString *)snapshot {
  NSArray *pathParams = @[ @"snapshot" ];
  NSString *pathURITemplate = @"v1/{+snapshot}";
  GTLRPubsubQuery_ProjectsSnapshotsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.snapshot = snapshot;
  query.expectedObjectClass = [GTLRPubsub_Empty class];
  query.loggingName = @"pubsub.projects.snapshots.delete";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSnapshotsGet

@dynamic snapshot;

+ (instancetype)queryWithSnapshot:(NSString *)snapshot {
  NSArray *pathParams = @[ @"snapshot" ];
  NSString *pathURITemplate = @"v1/{+snapshot}";
  GTLRPubsubQuery_ProjectsSnapshotsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.snapshot = snapshot;
  query.expectedObjectClass = [GTLRPubsub_Snapshot class];
  query.loggingName = @"pubsub.projects.snapshots.get";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSnapshotsGetIamPolicy

@dynamic optionsRequestedPolicyVersion, resource;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"optionsRequestedPolicyVersion" : @"options.requestedPolicyVersion" };
}

+ (instancetype)queryWithResource:(NSString *)resource {
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:getIamPolicy";
  GTLRPubsubQuery_ProjectsSnapshotsGetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.resource = resource;
  query.expectedObjectClass = [GTLRPubsub_Policy class];
  query.loggingName = @"pubsub.projects.snapshots.getIamPolicy";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSnapshotsList

@dynamic pageSize, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project {
  NSArray *pathParams = @[ @"project" ];
  NSString *pathURITemplate = @"v1/{+project}/snapshots";
  GTLRPubsubQuery_ProjectsSnapshotsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.expectedObjectClass = [GTLRPubsub_ListSnapshotsResponse class];
  query.loggingName = @"pubsub.projects.snapshots.list";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSnapshotsPatch

@dynamic name;

+ (instancetype)queryWithObject:(GTLRPubsub_UpdateSnapshotRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRPubsubQuery_ProjectsSnapshotsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRPubsub_Snapshot class];
  query.loggingName = @"pubsub.projects.snapshots.patch";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSnapshotsSetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRPubsub_SetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:setIamPolicy";
  GTLRPubsubQuery_ProjectsSnapshotsSetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRPubsub_Policy class];
  query.loggingName = @"pubsub.projects.snapshots.setIamPolicy";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSnapshotsTestIamPermissions

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRPubsub_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:testIamPermissions";
  GTLRPubsubQuery_ProjectsSnapshotsTestIamPermissions *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRPubsub_TestIamPermissionsResponse class];
  query.loggingName = @"pubsub.projects.snapshots.testIamPermissions";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSubscriptionsAcknowledge

@dynamic subscription;

+ (instancetype)queryWithObject:(GTLRPubsub_AcknowledgeRequest *)object
                   subscription:(NSString *)subscription {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"subscription" ];
  NSString *pathURITemplate = @"v1/{+subscription}:acknowledge";
  GTLRPubsubQuery_ProjectsSubscriptionsAcknowledge *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.subscription = subscription;
  query.expectedObjectClass = [GTLRPubsub_Empty class];
  query.loggingName = @"pubsub.projects.subscriptions.acknowledge";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSubscriptionsCreate

@dynamic name;

+ (instancetype)queryWithObject:(GTLRPubsub_Subscription *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRPubsubQuery_ProjectsSubscriptionsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRPubsub_Subscription class];
  query.loggingName = @"pubsub.projects.subscriptions.create";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSubscriptionsDelete

@dynamic subscription;

+ (instancetype)queryWithSubscription:(NSString *)subscription {
  NSArray *pathParams = @[ @"subscription" ];
  NSString *pathURITemplate = @"v1/{+subscription}";
  GTLRPubsubQuery_ProjectsSubscriptionsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.subscription = subscription;
  query.expectedObjectClass = [GTLRPubsub_Empty class];
  query.loggingName = @"pubsub.projects.subscriptions.delete";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSubscriptionsGet

@dynamic subscription;

+ (instancetype)queryWithSubscription:(NSString *)subscription {
  NSArray *pathParams = @[ @"subscription" ];
  NSString *pathURITemplate = @"v1/{+subscription}";
  GTLRPubsubQuery_ProjectsSubscriptionsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.subscription = subscription;
  query.expectedObjectClass = [GTLRPubsub_Subscription class];
  query.loggingName = @"pubsub.projects.subscriptions.get";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSubscriptionsGetIamPolicy

@dynamic optionsRequestedPolicyVersion, resource;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"optionsRequestedPolicyVersion" : @"options.requestedPolicyVersion" };
}

+ (instancetype)queryWithResource:(NSString *)resource {
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:getIamPolicy";
  GTLRPubsubQuery_ProjectsSubscriptionsGetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.resource = resource;
  query.expectedObjectClass = [GTLRPubsub_Policy class];
  query.loggingName = @"pubsub.projects.subscriptions.getIamPolicy";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSubscriptionsList

@dynamic pageSize, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project {
  NSArray *pathParams = @[ @"project" ];
  NSString *pathURITemplate = @"v1/{+project}/subscriptions";
  GTLRPubsubQuery_ProjectsSubscriptionsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.expectedObjectClass = [GTLRPubsub_ListSubscriptionsResponse class];
  query.loggingName = @"pubsub.projects.subscriptions.list";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSubscriptionsModifyAckDeadline

@dynamic subscription;

+ (instancetype)queryWithObject:(GTLRPubsub_ModifyAckDeadlineRequest *)object
                   subscription:(NSString *)subscription {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"subscription" ];
  NSString *pathURITemplate = @"v1/{+subscription}:modifyAckDeadline";
  GTLRPubsubQuery_ProjectsSubscriptionsModifyAckDeadline *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.subscription = subscription;
  query.expectedObjectClass = [GTLRPubsub_Empty class];
  query.loggingName = @"pubsub.projects.subscriptions.modifyAckDeadline";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSubscriptionsModifyPushConfig

@dynamic subscription;

+ (instancetype)queryWithObject:(GTLRPubsub_ModifyPushConfigRequest *)object
                   subscription:(NSString *)subscription {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"subscription" ];
  NSString *pathURITemplate = @"v1/{+subscription}:modifyPushConfig";
  GTLRPubsubQuery_ProjectsSubscriptionsModifyPushConfig *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.subscription = subscription;
  query.expectedObjectClass = [GTLRPubsub_Empty class];
  query.loggingName = @"pubsub.projects.subscriptions.modifyPushConfig";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSubscriptionsPatch

@dynamic name;

+ (instancetype)queryWithObject:(GTLRPubsub_UpdateSubscriptionRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRPubsubQuery_ProjectsSubscriptionsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRPubsub_Subscription class];
  query.loggingName = @"pubsub.projects.subscriptions.patch";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSubscriptionsPull

@dynamic subscription;

+ (instancetype)queryWithObject:(GTLRPubsub_PullRequest *)object
                   subscription:(NSString *)subscription {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"subscription" ];
  NSString *pathURITemplate = @"v1/{+subscription}:pull";
  GTLRPubsubQuery_ProjectsSubscriptionsPull *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.subscription = subscription;
  query.expectedObjectClass = [GTLRPubsub_PullResponse class];
  query.loggingName = @"pubsub.projects.subscriptions.pull";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSubscriptionsSeek

@dynamic subscription;

+ (instancetype)queryWithObject:(GTLRPubsub_SeekRequest *)object
                   subscription:(NSString *)subscription {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"subscription" ];
  NSString *pathURITemplate = @"v1/{+subscription}:seek";
  GTLRPubsubQuery_ProjectsSubscriptionsSeek *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.subscription = subscription;
  query.expectedObjectClass = [GTLRPubsub_SeekResponse class];
  query.loggingName = @"pubsub.projects.subscriptions.seek";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSubscriptionsSetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRPubsub_SetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:setIamPolicy";
  GTLRPubsubQuery_ProjectsSubscriptionsSetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRPubsub_Policy class];
  query.loggingName = @"pubsub.projects.subscriptions.setIamPolicy";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsSubscriptionsTestIamPermissions

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRPubsub_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:testIamPermissions";
  GTLRPubsubQuery_ProjectsSubscriptionsTestIamPermissions *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRPubsub_TestIamPermissionsResponse class];
  query.loggingName = @"pubsub.projects.subscriptions.testIamPermissions";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsTopicsCreate

@dynamic name;

+ (instancetype)queryWithObject:(GTLRPubsub_Topic *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRPubsubQuery_ProjectsTopicsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRPubsub_Topic class];
  query.loggingName = @"pubsub.projects.topics.create";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsTopicsDelete

@dynamic topic;

+ (instancetype)queryWithTopic:(NSString *)topic {
  NSArray *pathParams = @[ @"topic" ];
  NSString *pathURITemplate = @"v1/{+topic}";
  GTLRPubsubQuery_ProjectsTopicsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.topic = topic;
  query.expectedObjectClass = [GTLRPubsub_Empty class];
  query.loggingName = @"pubsub.projects.topics.delete";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsTopicsGet

@dynamic topic;

+ (instancetype)queryWithTopic:(NSString *)topic {
  NSArray *pathParams = @[ @"topic" ];
  NSString *pathURITemplate = @"v1/{+topic}";
  GTLRPubsubQuery_ProjectsTopicsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.topic = topic;
  query.expectedObjectClass = [GTLRPubsub_Topic class];
  query.loggingName = @"pubsub.projects.topics.get";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsTopicsGetIamPolicy

@dynamic optionsRequestedPolicyVersion, resource;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"optionsRequestedPolicyVersion" : @"options.requestedPolicyVersion" };
}

+ (instancetype)queryWithResource:(NSString *)resource {
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:getIamPolicy";
  GTLRPubsubQuery_ProjectsTopicsGetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.resource = resource;
  query.expectedObjectClass = [GTLRPubsub_Policy class];
  query.loggingName = @"pubsub.projects.topics.getIamPolicy";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsTopicsList

@dynamic pageSize, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project {
  NSArray *pathParams = @[ @"project" ];
  NSString *pathURITemplate = @"v1/{+project}/topics";
  GTLRPubsubQuery_ProjectsTopicsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.expectedObjectClass = [GTLRPubsub_ListTopicsResponse class];
  query.loggingName = @"pubsub.projects.topics.list";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsTopicsPatch

@dynamic name;

+ (instancetype)queryWithObject:(GTLRPubsub_UpdateTopicRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRPubsubQuery_ProjectsTopicsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRPubsub_Topic class];
  query.loggingName = @"pubsub.projects.topics.patch";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsTopicsPublish

@dynamic topic;

+ (instancetype)queryWithObject:(GTLRPubsub_PublishRequest *)object
                          topic:(NSString *)topic {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"topic" ];
  NSString *pathURITemplate = @"v1/{+topic}:publish";
  GTLRPubsubQuery_ProjectsTopicsPublish *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.topic = topic;
  query.expectedObjectClass = [GTLRPubsub_PublishResponse class];
  query.loggingName = @"pubsub.projects.topics.publish";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsTopicsSetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRPubsub_SetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:setIamPolicy";
  GTLRPubsubQuery_ProjectsTopicsSetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRPubsub_Policy class];
  query.loggingName = @"pubsub.projects.topics.setIamPolicy";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsTopicsSnapshotsList

@dynamic pageSize, pageToken, topic;

+ (instancetype)queryWithTopic:(NSString *)topic {
  NSArray *pathParams = @[ @"topic" ];
  NSString *pathURITemplate = @"v1/{+topic}/snapshots";
  GTLRPubsubQuery_ProjectsTopicsSnapshotsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.topic = topic;
  query.expectedObjectClass = [GTLRPubsub_ListTopicSnapshotsResponse class];
  query.loggingName = @"pubsub.projects.topics.snapshots.list";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsTopicsSubscriptionsList

@dynamic pageSize, pageToken, topic;

+ (instancetype)queryWithTopic:(NSString *)topic {
  NSArray *pathParams = @[ @"topic" ];
  NSString *pathURITemplate = @"v1/{+topic}/subscriptions";
  GTLRPubsubQuery_ProjectsTopicsSubscriptionsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.topic = topic;
  query.expectedObjectClass = [GTLRPubsub_ListTopicSubscriptionsResponse class];
  query.loggingName = @"pubsub.projects.topics.subscriptions.list";
  return query;
}

@end

@implementation GTLRPubsubQuery_ProjectsTopicsTestIamPermissions

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRPubsub_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:testIamPermissions";
  GTLRPubsubQuery_ProjectsTopicsTestIamPermissions *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRPubsub_TestIamPermissionsResponse class];
  query.loggingName = @"pubsub.projects.topics.testIamPermissions";
  return query;
}

@end
