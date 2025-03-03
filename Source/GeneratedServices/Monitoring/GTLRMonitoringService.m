// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Monitoring API (monitoring/v3)
// Description:
//   Manages your Cloud Monitoring data and configurations. Most projects must
//   be associated with a Workspace, with a few exceptions as noted on the
//   individual method pages. The table entries below are presented in
//   alphabetical order, not in order of common use. For explanations of the
//   concepts found in the table entries, read the Cloud Monitoring
//   documentation (https://cloud.google.com/monitoring/docs).
// Documentation:
//   https://cloud.google.com/monitoring/api/

#import "GTLRMonitoring.h"

// ----------------------------------------------------------------------------
// Authorization scopes

NSString * const kGTLRAuthScopeMonitoring              = @"https://www.googleapis.com/auth/monitoring";
NSString * const kGTLRAuthScopeMonitoringCloudPlatform = @"https://www.googleapis.com/auth/cloud-platform";
NSString * const kGTLRAuthScopeMonitoringRead          = @"https://www.googleapis.com/auth/monitoring.read";
NSString * const kGTLRAuthScopeMonitoringWrite         = @"https://www.googleapis.com/auth/monitoring.write";

// ----------------------------------------------------------------------------
//   GTLRMonitoringService
//

@implementation GTLRMonitoringService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://monitoring.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
