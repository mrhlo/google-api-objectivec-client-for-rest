// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Error Reporting API (clouderrorreporting/v1beta1)
// Description:
//   Groups and counts similar errors from cloud services and applications,
//   reports new errors, and provides access to error groups and their
//   associated errors.
// Documentation:
//   https://cloud.google.com/error-reporting/

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

@class GTLRClouderrorreporting_ErrorContext;
@class GTLRClouderrorreporting_ErrorEvent;
@class GTLRClouderrorreporting_ErrorGroup;
@class GTLRClouderrorreporting_ErrorGroupStats;
@class GTLRClouderrorreporting_HttpRequestContext;
@class GTLRClouderrorreporting_ServiceContext;
@class GTLRClouderrorreporting_SourceLocation;
@class GTLRClouderrorreporting_SourceReference;
@class GTLRClouderrorreporting_TimedCount;
@class GTLRClouderrorreporting_TrackingIssue;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Constants - For some of the classes' properties below.

// ----------------------------------------------------------------------------
// GTLRClouderrorreporting_ErrorGroup.resolutionStatus

/**
 *  Error Group manually acknowledged, it can have an issue link attached.
 *
 *  Value: "ACKNOWLEDGED"
 */
FOUNDATION_EXTERN NSString * const kGTLRClouderrorreporting_ErrorGroup_ResolutionStatus_Acknowledged;
/**
 *  The error group is muted and excluded by default on group stats requests.
 *
 *  Value: "MUTED"
 */
FOUNDATION_EXTERN NSString * const kGTLRClouderrorreporting_ErrorGroup_ResolutionStatus_Muted;
/**
 *  The error group is not being addressed. This is the default for new groups.
 *  It is also used for errors re-occurring after marked RESOLVED.
 *
 *  Value: "OPEN"
 */
FOUNDATION_EXTERN NSString * const kGTLRClouderrorreporting_ErrorGroup_ResolutionStatus_Open;
/**
 *  Status is unknown. When left unspecified in requests, it is treated like
 *  OPEN.
 *
 *  Value: "RESOLUTION_STATUS_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLRClouderrorreporting_ErrorGroup_ResolutionStatus_ResolutionStatusUnspecified;
/**
 *  Error Group manually resolved, more events for this group are not expected
 *  to occur.
 *
 *  Value: "RESOLVED"
 */
FOUNDATION_EXTERN NSString * const kGTLRClouderrorreporting_ErrorGroup_ResolutionStatus_Resolved;

/**
 *  Response message for deleting error events.
 */
@interface GTLRClouderrorreporting_DeleteEventsResponse : GTLRObject
@end


/**
 *  A description of the context in which an error occurred. This data should be
 *  provided by the application when reporting an error, unless the error report
 *  has been generated automatically from Google App Engine logs.
 */
@interface GTLRClouderrorreporting_ErrorContext : GTLRObject

/** The HTTP request which was processed when the error was triggered. */
@property(nonatomic, strong, nullable) GTLRClouderrorreporting_HttpRequestContext *httpRequest;

/**
 *  The location in the source code where the decision was made to report the
 *  error, usually the place where it was logged. For a logged exception this
 *  would be the source line where the exception is logged, usually close to the
 *  place where it was caught.
 */
@property(nonatomic, strong, nullable) GTLRClouderrorreporting_SourceLocation *reportLocation;

/**
 *  Source code that was used to build the executable which has caused the given
 *  error message.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRClouderrorreporting_SourceReference *> *sourceReferences;

/**
 *  The user who caused or was affected by the crash. This can be a user ID, an
 *  email address, or an arbitrary token that uniquely identifies the user. When
 *  sending an error report, leave this field empty if the user was not logged
 *  in. In this case the Error Reporting system will use other data, such as
 *  remote IP address, to distinguish affected users. See `affected_users_count`
 *  in `ErrorGroupStats`.
 */
@property(nonatomic, copy, nullable) NSString *user;

@end


/**
 *  An error event which is returned by the Error Reporting system.
 */
@interface GTLRClouderrorreporting_ErrorEvent : GTLRObject

/** Data about the context in which the error occurred. */
@property(nonatomic, strong, nullable) GTLRClouderrorreporting_ErrorContext *context;

/**
 *  Time when the event occurred as provided in the error report. If the report
 *  did not contain a timestamp, the time the error was received by the Error
 *  Reporting system is used.
 */
@property(nonatomic, strong, nullable) GTLRDateTime *eventTime;

/** The stack trace that was reported or logged by the service. */
@property(nonatomic, copy, nullable) NSString *message;

/** The `ServiceContext` for which this error was reported. */
@property(nonatomic, strong, nullable) GTLRClouderrorreporting_ServiceContext *serviceContext;

@end


/**
 *  Description of a group of similar error events.
 */
@interface GTLRClouderrorreporting_ErrorGroup : GTLRObject

/**
 *  Group IDs are unique for a given project. If the same kind of error occurs
 *  in different service contexts, it will receive the same group ID.
 */
@property(nonatomic, copy, nullable) NSString *groupId;

/**
 *  The group resource name. Example:
 *  projects/my-project-123/groups/CNSgkpnppqKCUw
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Error group's resolution status. An unspecified resolution status will be
 *  interpreted as OPEN
 *
 *  Likely values:
 *    @arg @c kGTLRClouderrorreporting_ErrorGroup_ResolutionStatus_Acknowledged
 *        Error Group manually acknowledged, it can have an issue link attached.
 *        (Value: "ACKNOWLEDGED")
 *    @arg @c kGTLRClouderrorreporting_ErrorGroup_ResolutionStatus_Muted The
 *        error group is muted and excluded by default on group stats requests.
 *        (Value: "MUTED")
 *    @arg @c kGTLRClouderrorreporting_ErrorGroup_ResolutionStatus_Open The
 *        error group is not being addressed. This is the default for new
 *        groups. It is also used for errors re-occurring after marked RESOLVED.
 *        (Value: "OPEN")
 *    @arg @c kGTLRClouderrorreporting_ErrorGroup_ResolutionStatus_ResolutionStatusUnspecified
 *        Status is unknown. When left unspecified in requests, it is treated
 *        like OPEN. (Value: "RESOLUTION_STATUS_UNSPECIFIED")
 *    @arg @c kGTLRClouderrorreporting_ErrorGroup_ResolutionStatus_Resolved
 *        Error Group manually resolved, more events for this group are not
 *        expected to occur. (Value: "RESOLVED")
 */
@property(nonatomic, copy, nullable) NSString *resolutionStatus;

/** Associated tracking issues. */
@property(nonatomic, strong, nullable) NSArray<GTLRClouderrorreporting_TrackingIssue *> *trackingIssues;

@end


/**
 *  Data extracted for a specific group based on certain filter criteria, such
 *  as a given time period and/or service filter.
 */
@interface GTLRClouderrorreporting_ErrorGroupStats : GTLRObject

/**
 *  Service contexts with a non-zero error count for the given filter criteria.
 *  This list can be truncated if multiple services are affected. Refer to
 *  `num_affected_services` for the total count.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRClouderrorreporting_ServiceContext *> *affectedServices;

/**
 *  Approximate number of affected users in the given group that match the
 *  filter criteria. Users are distinguished by data in the `ErrorContext` of
 *  the individual error events, such as their login name or their remote IP
 *  address in case of HTTP requests. The number of affected users can be zero
 *  even if the number of errors is non-zero if no data was provided from which
 *  the affected user could be deduced. Users are counted based on data in the
 *  request context that was provided in the error report. If more users are
 *  implicitly affected, such as due to a crash of the whole service, this is
 *  not reflected here.
 *
 *  Uses NSNumber of longLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *affectedUsersCount;

/**
 *  Approximate total number of events in the given group that match the filter
 *  criteria.
 *
 *  Uses NSNumber of longLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *count;

/**
 *  Approximate first occurrence that was ever seen for this group and which
 *  matches the given filter criteria, ignoring the time_range that was
 *  specified in the request.
 */
@property(nonatomic, strong, nullable) GTLRDateTime *firstSeenTime;

/** Group data that is independent of the filter criteria. */
@property(nonatomic, strong, nullable) GTLRClouderrorreporting_ErrorGroup *group;

/**
 *  Approximate last occurrence that was ever seen for this group and which
 *  matches the given filter criteria, ignoring the time_range that was
 *  specified in the request.
 */
@property(nonatomic, strong, nullable) GTLRDateTime *lastSeenTime;

/**
 *  The total number of services with a non-zero error count for the given
 *  filter criteria.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *numAffectedServices;

/**
 *  An arbitrary event that is chosen as representative for the whole group. The
 *  representative event is intended to be used as a quick preview for the whole
 *  group. Events in the group are usually sufficiently similar to each other
 *  such that showing an arbitrary representative provides insight into the
 *  characteristics of the group as a whole.
 */
@property(nonatomic, strong, nullable) GTLRClouderrorreporting_ErrorEvent *representative;

/**
 *  Approximate number of occurrences over time. Timed counts returned by
 *  ListGroups are guaranteed to be: - Inside the requested time interval -
 *  Non-overlapping, and - Ordered by ascending time.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRClouderrorreporting_TimedCount *> *timedCounts;

@end


/**
 *  HTTP request data that is related to a reported error. This data should be
 *  provided by the application when reporting an error, unless the error report
 *  has been generated automatically from Google App Engine logs.
 */
@interface GTLRClouderrorreporting_HttpRequestContext : GTLRObject

/** The type of HTTP request, such as `GET`, `POST`, etc. */
@property(nonatomic, copy, nullable) NSString *method;

/** The referrer information that is provided with the request. */
@property(nonatomic, copy, nullable) NSString *referrer;

/**
 *  The IP address from which the request originated. This can be IPv4, IPv6, or
 *  a token which is derived from the IP address, depending on the data that has
 *  been provided in the error report.
 */
@property(nonatomic, copy, nullable) NSString *remoteIp;

/**
 *  The HTTP response status code for the request.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *responseStatusCode;

/** The URL of the request. */
@property(nonatomic, copy, nullable) NSString *url;

/** The user agent information that is provided with the request. */
@property(nonatomic, copy, nullable) NSString *userAgent;

@end


/**
 *  Contains a set of requested error events.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "errorEvents" property. If returned as the result of a query, it
 *        should support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLRClouderrorreporting_ListEventsResponse : GTLRCollectionObject

/**
 *  The error events which match the given request.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRClouderrorreporting_ErrorEvent *> *errorEvents;

/**
 *  If non-empty, more results are available. Pass this token, along with the
 *  same query parameters as the first request, to view the next page of
 *  results.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  The timestamp specifies the start time to which the request was restricted.
 */
@property(nonatomic, strong, nullable) GTLRDateTime *timeRangeBegin;

@end


/**
 *  Contains a set of requested error group stats.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "errorGroupStats" property. If returned as the result of a query,
 *        it should support automatic pagination (when @c shouldFetchNextPages
 *        is enabled).
 */
@interface GTLRClouderrorreporting_ListGroupStatsResponse : GTLRCollectionObject

/**
 *  The error group stats which match the given request.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRClouderrorreporting_ErrorGroupStats *> *errorGroupStats;

/**
 *  If non-empty, more results are available. Pass this token, along with the
 *  same query parameters as the first request, to view the next page of
 *  results.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  The timestamp specifies the start time to which the request was restricted.
 *  The start time is set based on the requested time range. It may be adjusted
 *  to a later time if a project has exceeded the storage quota and older data
 *  has been deleted.
 */
@property(nonatomic, strong, nullable) GTLRDateTime *timeRangeBegin;

@end


/**
 *  An error event which is reported to the Error Reporting system.
 */
@interface GTLRClouderrorreporting_ReportedErrorEvent : GTLRObject

/** Optional. A description of the context in which the error occurred. */
@property(nonatomic, strong, nullable) GTLRClouderrorreporting_ErrorContext *context;

/**
 *  Optional. Time when the event occurred. If not provided, the time when the
 *  event was received by the Error Reporting system is used. If provided, the
 *  time must not exceed the [logs retention
 *  period](https://cloud.google.com/logging/quotas#logs_retention_periods) in
 *  the past, or be more than 24 hours in the future. If an invalid time is
 *  provided, then an error is returned.
 */
@property(nonatomic, strong, nullable) GTLRDateTime *eventTime;

/**
 *  Required. The error message. If no `context.reportLocation` is provided, the
 *  message must contain a header (typically consisting of the exception type
 *  name and an error message) and an exception stack trace in one of the
 *  supported programming languages and formats. Supported languages are Java,
 *  Python, JavaScript, Ruby, C#, PHP, and Go. Supported stack trace formats
 *  are: * **Java**: Must be the return value of
 *  [`Throwable.printStackTrace()`](https://docs.oracle.com/javase/7/docs/api/java/lang/Throwable.html#printStackTrace%28%29).
 *  * **Python**: Must be the return value of
 *  [`traceback.format_exc()`](https://docs.python.org/2/library/traceback.html#traceback.format_exc).
 *  * **JavaScript**: Must be the value of
 *  [`error.stack`](https://github.com/v8/v8/wiki/Stack-Trace-API) as returned
 *  by V8. * **Ruby**: Must contain frames returned by
 *  [`Exception.backtrace`](https://ruby-doc.org/core-2.2.0/Exception.html#method-i-backtrace).
 *  * **C#**: Must be the return value of
 *  [`Exception.ToString()`](https://msdn.microsoft.com/en-us/library/system.exception.tostring.aspx).
 *  * **PHP**: Must start with `PHP (Notice|Parse error|Fatal error|Warning)`
 *  and contain the result of
 *  [`(string)$exception`](http://php.net/manual/en/exception.tostring.php). *
 *  **Go**: Must be the return value of
 *  [`runtime.Stack()`](https://golang.org/pkg/runtime/debug/#Stack).
 */
@property(nonatomic, copy, nullable) NSString *message;

/** Required. The service context in which this error has occurred. */
@property(nonatomic, strong, nullable) GTLRClouderrorreporting_ServiceContext *serviceContext;

@end


/**
 *  Response for reporting an individual error event. Data may be added to this
 *  message in the future.
 */
@interface GTLRClouderrorreporting_ReportErrorEventResponse : GTLRObject
@end


/**
 *  Describes a running service that sends errors. Its version changes over time
 *  and multiple versions can run in parallel.
 */
@interface GTLRClouderrorreporting_ServiceContext : GTLRObject

/**
 *  Type of the MonitoredResource. List of possible values:
 *  https://cloud.google.com/monitoring/api/resources Value is set automatically
 *  for incoming errors and must not be set when reporting errors.
 */
@property(nonatomic, copy, nullable) NSString *resourceType;

/**
 *  An identifier of the service, such as the name of the executable, job, or
 *  Google App Engine service name. This field is expected to have a low number
 *  of values that are relatively stable over time, as opposed to `version`,
 *  which can be changed whenever new code is deployed. Contains the service
 *  name for error reports extracted from Google App Engine logs or `default` if
 *  the App Engine default service is used.
 */
@property(nonatomic, copy, nullable) NSString *service;

/**
 *  Represents the source code version that the developer provided, which could
 *  represent a version label or a Git SHA-1 hash, for example. For App Engine
 *  standard environment, the version is set to the version of the app.
 */
@property(nonatomic, copy, nullable) NSString *version;

@end


/**
 *  Indicates a location in the source code of the service for which errors are
 *  reported. `functionName` must be provided by the application when reporting
 *  an error, unless the error report contains a `message` with a supported
 *  exception stack trace. All fields are optional for the later case.
 */
@interface GTLRClouderrorreporting_SourceLocation : GTLRObject

/**
 *  The source code filename, which can include a truncated relative path, or a
 *  full path from a production machine.
 */
@property(nonatomic, copy, nullable) NSString *filePath;

/**
 *  Human-readable name of a function or method. The value can include optional
 *  context like the class or package name. For example,
 *  `my.package.MyClass.method` in case of Java.
 */
@property(nonatomic, copy, nullable) NSString *functionName;

/**
 *  1-based. 0 indicates that the line number is unknown.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *lineNumber;

@end


/**
 *  A reference to a particular snapshot of the source tree used to build and
 *  deploy an application.
 */
@interface GTLRClouderrorreporting_SourceReference : GTLRObject

/**
 *  Optional. A URI string identifying the repository. Example:
 *  "https://github.com/GoogleCloudPlatform/kubernetes.git"
 */
@property(nonatomic, copy, nullable) NSString *repository;

/**
 *  The canonical and persistent identifier of the deployed revision. Example
 *  (git): "0035781c50ec7aa23385dc841529ce8a4b70db1b"
 */
@property(nonatomic, copy, nullable) NSString *revisionId;

@end


/**
 *  The number of errors in a given time period. All numbers are approximate
 *  since the error events are sampled before counting them.
 */
@interface GTLRClouderrorreporting_TimedCount : GTLRObject

/**
 *  Approximate number of occurrences in the given time period.
 *
 *  Uses NSNumber of longLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *count;

/** End of the time period to which `count` refers (excluded). */
@property(nonatomic, strong, nullable) GTLRDateTime *endTime;

/** Start of the time period to which `count` refers (included). */
@property(nonatomic, strong, nullable) GTLRDateTime *startTime;

@end


/**
 *  Information related to tracking the progress on resolving the error.
 */
@interface GTLRClouderrorreporting_TrackingIssue : GTLRObject

/**
 *  A URL pointing to a related entry in an issue tracking system. Example:
 *  `https://github.com/user/project/issues/4`
 */
@property(nonatomic, copy, nullable) NSString *url;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
