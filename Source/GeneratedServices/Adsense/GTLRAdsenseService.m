// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   AdSense Management API (adsense/v2)
// Description:
//   The AdSense Management API allows publishers to access their inventory and
//   run earnings and performance reports.
// Documentation:
//   http://code.google.com/apis/adsense/management/

#import "GTLRAdsense.h"

// ----------------------------------------------------------------------------
// Authorization scopes

NSString * const kGTLRAuthScopeAdsense         = @"https://www.googleapis.com/auth/adsense";
NSString * const kGTLRAuthScopeAdsenseReadonly = @"https://www.googleapis.com/auth/adsense.readonly";

// ----------------------------------------------------------------------------
//   GTLRAdsenseService
//

@implementation GTLRAdsenseService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://adsense.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
