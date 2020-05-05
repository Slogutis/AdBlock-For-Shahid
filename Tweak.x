#import <substrate.h>

// net.mbc.shahid-iphone

%hook RCTVideo
-(void)requestAds:(id)arg1 {
  arg1 = nil;
  %orig(arg1);
  }
%end

%hook RCTVideoManager
-(void)requestAds:(id)arg1 {
  arg1 = nil;
  %orig(arg1);
  }
%end

// this was only to test if the tweak installed or no

%hook AppDelegate

- (void)applicationDidBecomeActive:(id)application {
    NSUserDefaults *validate = [NSUserDefaults standardUserDefaults];
    NSString *alreadyRun = @"already_run";
    if ([validate boolForKey:alreadyRun])
    return;
    [validate setBool:YES forKey:alreadyRun];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Done"
    message:@"Thank you for Installing" delegate:nil cancelButtonTitle:@"Okay"
    otherButtonTitles:nil];
    [alert show];
}

%end
