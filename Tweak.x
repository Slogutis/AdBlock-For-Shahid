#import <UIKit.h>
#import <substarte.h>

// net.mbc.shahid-iphone

%hook RCTVideo
-(void)requestAds:(id)arg1 {
  arg1 = %orig
  %orig(arg1);
  }
%end
