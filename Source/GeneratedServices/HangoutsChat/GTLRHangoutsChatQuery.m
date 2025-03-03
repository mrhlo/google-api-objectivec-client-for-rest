// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Chat API (chat/v1)
// Description:
//   Enables bots to fetch information and perform actions in Google Chat.
//   Authentication using a service account is a prerequisite for using the
//   Google Chat REST API.
// Documentation:
//   https://developers.google.com/hangouts/chat

#import "GTLRHangoutsChatQuery.h"

#import "GTLRHangoutsChatObjects.h"

@implementation GTLRHangoutsChatQuery

@dynamic fields;

@end

@implementation GTLRHangoutsChatQuery_DmsConversationsMessages

@dynamic parent, requestId, threadKey;

+ (instancetype)queryWithObject:(GTLRHangoutsChat_Message *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/messages";
  GTLRHangoutsChatQuery_DmsConversationsMessages *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRHangoutsChat_Message class];
  query.loggingName = @"chat.dms.conversations.messages";
  return query;
}

@end

@implementation GTLRHangoutsChatQuery_DmsMessages

@dynamic parent, requestId, threadKey;

+ (instancetype)queryWithObject:(GTLRHangoutsChat_Message *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/messages";
  GTLRHangoutsChatQuery_DmsMessages *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRHangoutsChat_Message class];
  query.loggingName = @"chat.dms.messages";
  return query;
}

@end

@implementation GTLRHangoutsChatQuery_DmsWebhooks

@dynamic parent, requestId, threadKey;

+ (instancetype)queryWithObject:(GTLRHangoutsChat_Message *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/webhooks";
  GTLRHangoutsChatQuery_DmsWebhooks *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRHangoutsChat_Message class];
  query.loggingName = @"chat.dms.webhooks";
  return query;
}

@end

@implementation GTLRHangoutsChatQuery_MediaDownload

@dynamic resourceName;

+ (instancetype)queryWithResourceName:(NSString *)resourceName {
  NSArray *pathParams = @[ @"resourceName" ];
  NSString *pathURITemplate = @"v1/media/{+resourceName}";
  GTLRHangoutsChatQuery_MediaDownload *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.resourceName = resourceName;
  query.expectedObjectClass = [GTLRHangoutsChat_Media class];
  query.loggingName = @"chat.media.download";
  return query;
}

+ (instancetype)queryForMediaWithResourceName:(NSString *)resourceName {
  GTLRHangoutsChatQuery_MediaDownload *query =
    [self queryWithResourceName:resourceName];
  query.downloadAsDataObjectType = @"media";
  query.loggingName = @"Download chat.media.download";
  return query;
}

@end

@implementation GTLRHangoutsChatQuery_RoomsConversationsMessages

@dynamic parent, requestId, threadKey;

+ (instancetype)queryWithObject:(GTLRHangoutsChat_Message *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/messages";
  GTLRHangoutsChatQuery_RoomsConversationsMessages *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRHangoutsChat_Message class];
  query.loggingName = @"chat.rooms.conversations.messages";
  return query;
}

@end

@implementation GTLRHangoutsChatQuery_RoomsMessages

@dynamic parent, requestId, threadKey;

+ (instancetype)queryWithObject:(GTLRHangoutsChat_Message *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/messages";
  GTLRHangoutsChatQuery_RoomsMessages *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRHangoutsChat_Message class];
  query.loggingName = @"chat.rooms.messages";
  return query;
}

@end

@implementation GTLRHangoutsChatQuery_RoomsWebhooks

@dynamic parent, requestId, threadKey;

+ (instancetype)queryWithObject:(GTLRHangoutsChat_Message *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/webhooks";
  GTLRHangoutsChatQuery_RoomsWebhooks *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRHangoutsChat_Message class];
  query.loggingName = @"chat.rooms.webhooks";
  return query;
}

@end

@implementation GTLRHangoutsChatQuery_SpacesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRHangoutsChatQuery_SpacesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRHangoutsChat_Space class];
  query.loggingName = @"chat.spaces.get";
  return query;
}

@end

@implementation GTLRHangoutsChatQuery_SpacesList

@dynamic pageSize, pageToken;

+ (instancetype)query {
  NSString *pathURITemplate = @"v1/spaces";
  GTLRHangoutsChatQuery_SpacesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRHangoutsChat_ListSpacesResponse class];
  query.loggingName = @"chat.spaces.list";
  return query;
}

@end

@implementation GTLRHangoutsChatQuery_SpacesMembersGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRHangoutsChatQuery_SpacesMembersGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRHangoutsChat_Membership class];
  query.loggingName = @"chat.spaces.members.get";
  return query;
}

@end

@implementation GTLRHangoutsChatQuery_SpacesMembersList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/members";
  GTLRHangoutsChatQuery_SpacesMembersList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRHangoutsChat_ListMembershipsResponse class];
  query.loggingName = @"chat.spaces.members.list";
  return query;
}

@end

@implementation GTLRHangoutsChatQuery_SpacesMessagesAttachmentsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRHangoutsChatQuery_SpacesMessagesAttachmentsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRHangoutsChat_Attachment class];
  query.loggingName = @"chat.spaces.messages.attachments.get";
  return query;
}

@end

@implementation GTLRHangoutsChatQuery_SpacesMessagesCreate

@dynamic parent, requestId, threadKey;

+ (instancetype)queryWithObject:(GTLRHangoutsChat_Message *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/messages";
  GTLRHangoutsChatQuery_SpacesMessagesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRHangoutsChat_Message class];
  query.loggingName = @"chat.spaces.messages.create";
  return query;
}

@end

@implementation GTLRHangoutsChatQuery_SpacesMessagesDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRHangoutsChatQuery_SpacesMessagesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRHangoutsChat_Empty class];
  query.loggingName = @"chat.spaces.messages.delete";
  return query;
}

@end

@implementation GTLRHangoutsChatQuery_SpacesMessagesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRHangoutsChatQuery_SpacesMessagesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRHangoutsChat_Message class];
  query.loggingName = @"chat.spaces.messages.get";
  return query;
}

@end

@implementation GTLRHangoutsChatQuery_SpacesMessagesUpdate

@dynamic name, updateMask;

+ (instancetype)queryWithObject:(GTLRHangoutsChat_Message *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRHangoutsChatQuery_SpacesMessagesUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRHangoutsChat_Message class];
  query.loggingName = @"chat.spaces.messages.update";
  return query;
}

@end

@implementation GTLRHangoutsChatQuery_SpacesWebhooks

@dynamic parent, requestId, threadKey;

+ (instancetype)queryWithObject:(GTLRHangoutsChat_Message *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/webhooks";
  GTLRHangoutsChatQuery_SpacesWebhooks *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRHangoutsChat_Message class];
  query.loggingName = @"chat.spaces.webhooks";
  return query;
}

@end
