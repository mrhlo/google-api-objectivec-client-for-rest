// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Analytics Admin API (analyticsadmin/v1alpha)
// Documentation:
//   http://code.google.com/apis/analytics/docs/mgmt/home.html

#if SWIFT_PACKAGE || GTLR_USE_MODULAR_IMPORT
  @import GoogleAPIClientForRESTCore;
#elif GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRService.h"
#else
  #import "GTLRService.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Authorization scopes

/**
 *  Authorization scope: Edit Google Analytics management entities
 *
 *  Value "https://www.googleapis.com/auth/analytics.edit"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeGoogleAnalyticsAdminAnalyticsEdit;
/**
 *  Authorization scope: Manage Google Analytics Account users by email address
 *
 *  Value "https://www.googleapis.com/auth/analytics.manage.users"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeGoogleAnalyticsAdminAnalyticsManageUsers;
/**
 *  Authorization scope: View Google Analytics user permissions
 *
 *  Value "https://www.googleapis.com/auth/analytics.manage.users.readonly"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeGoogleAnalyticsAdminAnalyticsManageUsersReadonly;
/**
 *  Authorization scope: See and download your Google Analytics data
 *
 *  Value "https://www.googleapis.com/auth/analytics.readonly"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeGoogleAnalyticsAdminAnalyticsReadonly;

// ----------------------------------------------------------------------------
//   GTLRGoogleAnalyticsAdminService
//

/**
 *  Service for executing Google Analytics Admin API queries.
 */
@interface GTLRGoogleAnalyticsAdminService : GTLRService

// No new methods

// Clients should create a standard query with any of the class methods in
// GTLRGoogleAnalyticsAdminQuery.h. The query can the be sent with GTLRService's
// execute methods,
//
//   - (GTLRServiceTicket *)executeQuery:(GTLRQuery *)query
//                     completionHandler:(void (^)(GTLRServiceTicket *ticket,
//                                                 id object, NSError *error))handler;
// or
//   - (GTLRServiceTicket *)executeQuery:(GTLRQuery *)query
//                              delegate:(id)delegate
//                     didFinishSelector:(SEL)finishedSelector;
//
// where finishedSelector has a signature of:
//
//   - (void)serviceTicket:(GTLRServiceTicket *)ticket
//      finishedWithObject:(id)object
//                   error:(NSError *)error;
//
// The object passed to the completion handler or delegate method
// is a subclass of GTLRObject, determined by the query method executed.

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
