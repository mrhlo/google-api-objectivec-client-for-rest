// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Chrome Management API (chromemanagement/v1)
// Description:
//   The Chrome Management API is a suite of services that allows Chrome
//   administrators to view, manage and gain insights on their Chrome OS and
//   Chrome Browser devices.
// Documentation:
//   http://developers.google.com/chrome/management/

#if SWIFT_PACKAGE || GTLR_USE_MODULAR_IMPORT
  @import GoogleAPIClientForRESTCore;
#elif GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRQuery.h"
#else
  #import "GTLRQuery.h"
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
// Constants - For some of the query classes' properties below.

// ----------------------------------------------------------------------------
// appType

/**
 *  ARC++ app.
 *
 *  Value: "ANDROID_APP"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromeManagementAppTypeAndroidApp;
/**
 *  Chrome app.
 *
 *  Value: "APP"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromeManagementAppTypeApp;
/**
 *  App type not specified.
 *
 *  Value: "APP_TYPE_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromeManagementAppTypeAppTypeUnspecified;
/**
 *  Chrome extension.
 *
 *  Value: "EXTENSION"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromeManagementAppTypeExtension;
/**
 *  Chrome hosted app.
 *
 *  Value: "HOSTED_APP"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromeManagementAppTypeHostedApp;
/**
 *  Chrome theme.
 *
 *  Value: "THEME"
 */
FOUNDATION_EXTERN NSString * const kGTLRChromeManagementAppTypeTheme;

// ----------------------------------------------------------------------------
// Query Classes
//

/**
 *  Parent class for other Chrome Management query classes.
 */
@interface GTLRChromeManagementQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Get a specific app for a customer by its resource name.
 *
 *  Method: chromemanagement.customers.apps.android.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeChromeManagementChromeManagementAppdetailsReadonly
 */
@interface GTLRChromeManagementQuery_CustomersAppsAndroidGet : GTLRChromeManagementQuery

/**
 *  Required. The app for which details are being queried. Examples:
 *  "customers/my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne\@2.1.2"
 *  for the Save to Google Drive Chrome extension version 2.1.2,
 *  "customers/my_customer/apps/android/com.google.android.apps.docs" for the
 *  Google Drive Android app's latest version.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRChromeManagement_GoogleChromeManagementV1AppDetails.
 *
 *  Get a specific app for a customer by its resource name.
 *
 *  @param name Required. The app for which details are being queried. Examples:
 *    "customers/my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne\@2.1.2"
 *    for the Save to Google Drive Chrome extension version 2.1.2,
 *    "customers/my_customer/apps/android/com.google.android.apps.docs" for the
 *    Google Drive Android app's latest version.
 *
 *  @return GTLRChromeManagementQuery_CustomersAppsAndroidGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Get a specific app for a customer by its resource name.
 *
 *  Method: chromemanagement.customers.apps.chrome.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeChromeManagementChromeManagementAppdetailsReadonly
 */
@interface GTLRChromeManagementQuery_CustomersAppsChromeGet : GTLRChromeManagementQuery

/**
 *  Required. The app for which details are being queried. Examples:
 *  "customers/my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne\@2.1.2"
 *  for the Save to Google Drive Chrome extension version 2.1.2,
 *  "customers/my_customer/apps/android/com.google.android.apps.docs" for the
 *  Google Drive Android app's latest version.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRChromeManagement_GoogleChromeManagementV1AppDetails.
 *
 *  Get a specific app for a customer by its resource name.
 *
 *  @param name Required. The app for which details are being queried. Examples:
 *    "customers/my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne\@2.1.2"
 *    for the Save to Google Drive Chrome extension version 2.1.2,
 *    "customers/my_customer/apps/android/com.google.android.apps.docs" for the
 *    Google Drive Android app's latest version.
 *
 *  @return GTLRChromeManagementQuery_CustomersAppsChromeGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Generate summary of app installation requests.
 *
 *  Method: chromemanagement.customers.apps.countChromeAppRequests
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeChromeManagementChromeManagementAppdetailsReadonly
 */
@interface GTLRChromeManagementQuery_CustomersAppsCountChromeAppRequests : GTLRChromeManagementQuery

/**
 *  Required. Customer id or "my_customer" to use the customer associated to the
 *  account making the request.
 */
@property(nonatomic, copy, nullable) NSString *customer;

/**
 *  Field used to order results. Supported fields: * request_count *
 *  latest_request_time
 */
@property(nonatomic, copy, nullable) NSString *orderBy;

/** The ID of the organizational unit. */
@property(nonatomic, copy, nullable) NSString *orgUnitId;

/**
 *  Maximum number of results to return. Maximum and default are 50, anything
 *  above will be coerced to 50.
 */
@property(nonatomic, assign) NSInteger pageSize;

/** Token to specify the page of the request to be returned. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Fetches a @c
 *  GTLRChromeManagement_GoogleChromeManagementV1CountChromeAppRequestsResponse.
 *
 *  Generate summary of app installation requests.
 *
 *  @param customer Required. Customer id or "my_customer" to use the customer
 *    associated to the account making the request.
 *
 *  @return GTLRChromeManagementQuery_CustomersAppsCountChromeAppRequests
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithCustomer:(NSString *)customer;

@end

/**
 *  Get a specific app for a customer by its resource name.
 *
 *  Method: chromemanagement.customers.apps.web.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeChromeManagementChromeManagementAppdetailsReadonly
 */
@interface GTLRChromeManagementQuery_CustomersAppsWebGet : GTLRChromeManagementQuery

/**
 *  Required. The app for which details are being queried. Examples:
 *  "customers/my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne\@2.1.2"
 *  for the Save to Google Drive Chrome extension version 2.1.2,
 *  "customers/my_customer/apps/android/com.google.android.apps.docs" for the
 *  Google Drive Android app's latest version.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRChromeManagement_GoogleChromeManagementV1AppDetails.
 *
 *  Get a specific app for a customer by its resource name.
 *
 *  @param name Required. The app for which details are being queried. Examples:
 *    "customers/my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne\@2.1.2"
 *    for the Save to Google Drive Chrome extension version 2.1.2,
 *    "customers/my_customer/apps/android/com.google.android.apps.docs" for the
 *    Google Drive Android app's latest version.
 *
 *  @return GTLRChromeManagementQuery_CustomersAppsWebGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Generate report of installed Chrome versions.
 *
 *  Method: chromemanagement.customers.reports.countChromeVersions
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeChromeManagementChromeManagementReportsReadonly
 */
@interface GTLRChromeManagementQuery_CustomersReportsCountChromeVersions : GTLRChromeManagementQuery

/**
 *  Required. Customer id or "my_customer" to use the customer associated to the
 *  account making the request.
 */
@property(nonatomic, copy, nullable) NSString *customer;

/**
 *  Query string to filter results, AND-separated fields in EBNF syntax. Note:
 *  OR operations are not supported in this filter. Supported filter fields: *
 *  last_active_date
 */
@property(nonatomic, copy, nullable) NSString *filter;

/** The ID of the organizational unit. */
@property(nonatomic, copy, nullable) NSString *orgUnitId;

/** Maximum number of results to return. Maximum and default are 100. */
@property(nonatomic, assign) NSInteger pageSize;

/** Token to specify the page of the request to be returned. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Fetches a @c
 *  GTLRChromeManagement_GoogleChromeManagementV1CountChromeVersionsResponse.
 *
 *  Generate report of installed Chrome versions.
 *
 *  @param customer Required. Customer id or "my_customer" to use the customer
 *    associated to the account making the request.
 *
 *  @return GTLRChromeManagementQuery_CustomersReportsCountChromeVersions
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithCustomer:(NSString *)customer;

@end

/**
 *  Generate report of app installations.
 *
 *  Method: chromemanagement.customers.reports.countInstalledApps
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeChromeManagementChromeManagementReportsReadonly
 */
@interface GTLRChromeManagementQuery_CustomersReportsCountInstalledApps : GTLRChromeManagementQuery

/**
 *  Required. Customer id or "my_customer" to use the customer associated to the
 *  account making the request.
 */
@property(nonatomic, copy, nullable) NSString *customer;

/**
 *  Query string to filter results, AND-separated fields in EBNF syntax. Note:
 *  OR operations are not supported in this filter. Supported filter fields: *
 *  app_name * app_type * install_type * number_of_permissions *
 *  total_install_count * latest_profile_active_date * permission_name
 */
@property(nonatomic, copy, nullable) NSString *filter;

/**
 *  Field used to order results. Supported order by fields: * app_name *
 *  app_type * install_type * number_of_permissions * total_install_count
 */
@property(nonatomic, copy, nullable) NSString *orderBy;

/** The ID of the organizational unit. */
@property(nonatomic, copy, nullable) NSString *orgUnitId;

/** Maximum number of results to return. Maximum and default are 100. */
@property(nonatomic, assign) NSInteger pageSize;

/** Token to specify the page of the request to be returned. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Fetches a @c
 *  GTLRChromeManagement_GoogleChromeManagementV1CountInstalledAppsResponse.
 *
 *  Generate report of app installations.
 *
 *  @param customer Required. Customer id or "my_customer" to use the customer
 *    associated to the account making the request.
 *
 *  @return GTLRChromeManagementQuery_CustomersReportsCountInstalledApps
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithCustomer:(NSString *)customer;

@end

/**
 *  Generate report of devices that have a specified app installed.
 *
 *  Method: chromemanagement.customers.reports.findInstalledAppDevices
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeChromeManagementChromeManagementReportsReadonly
 */
@interface GTLRChromeManagementQuery_CustomersReportsFindInstalledAppDevices : GTLRChromeManagementQuery

/**
 *  Unique identifier of the app. For Chrome apps and extensions, the
 *  32-character id (e.g. ehoadneljpdggcbbknedodolkkjodefl). For Android apps,
 *  the package name (e.g. com.evernote).
 */
@property(nonatomic, copy, nullable) NSString *appId;

/**
 *  Type of the app.
 *
 *  Likely values:
 *    @arg @c kGTLRChromeManagementAppTypeAppTypeUnspecified App type not
 *        specified. (Value: "APP_TYPE_UNSPECIFIED")
 *    @arg @c kGTLRChromeManagementAppTypeExtension Chrome extension. (Value:
 *        "EXTENSION")
 *    @arg @c kGTLRChromeManagementAppTypeApp Chrome app. (Value: "APP")
 *    @arg @c kGTLRChromeManagementAppTypeTheme Chrome theme. (Value: "THEME")
 *    @arg @c kGTLRChromeManagementAppTypeHostedApp Chrome hosted app. (Value:
 *        "HOSTED_APP")
 *    @arg @c kGTLRChromeManagementAppTypeAndroidApp ARC++ app. (Value:
 *        "ANDROID_APP")
 */
@property(nonatomic, copy, nullable) NSString *appType;

/**
 *  Required. Customer id or "my_customer" to use the customer associated to the
 *  account making the request.
 */
@property(nonatomic, copy, nullable) NSString *customer;

/**
 *  Query string to filter results, AND-separated fields in EBNF syntax. Note:
 *  OR operations are not supported in this filter. Supported filter fields: *
 *  last_active_date
 */
@property(nonatomic, copy, nullable) NSString *filter;

/**
 *  Field used to order results. Supported order by fields: * machine *
 *  device_id
 */
@property(nonatomic, copy, nullable) NSString *orderBy;

/** The ID of the organizational unit. */
@property(nonatomic, copy, nullable) NSString *orgUnitId;

/** Maximum number of results to return. Maximum and default are 100. */
@property(nonatomic, assign) NSInteger pageSize;

/** Token to specify the page of the request to be returned. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Fetches a @c
 *  GTLRChromeManagement_GoogleChromeManagementV1FindInstalledAppDevicesResponse.
 *
 *  Generate report of devices that have a specified app installed.
 *
 *  @param customer Required. Customer id or "my_customer" to use the customer
 *    associated to the account making the request.
 *
 *  @return GTLRChromeManagementQuery_CustomersReportsFindInstalledAppDevices
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithCustomer:(NSString *)customer;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
