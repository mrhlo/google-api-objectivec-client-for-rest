// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   My Business Lodging API (mybusinesslodging/v1)
// Description:
//   The My Business Lodging API enables managing lodging business information
//   on Google.
// Documentation:
//   https://developers.google.com/my-business/

#import "GTLRMyBusinessLodging.h"

@implementation GTLRMyBusinessLodgingService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://mybusinesslodging.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
