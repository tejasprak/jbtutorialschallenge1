
@interface SpringBoard
  -(NSArray *)_rootViewControllers;
@end

//We are hooking into the SpringBoard class
%hook SpringBoard

//This will be the function we are modifying
- (void)applicationDidFinishLaunching:(UIApplication *)application {
    //Run the orignal code that is in this function
		%orig;
		//Insert Alert Popup using your Objective C knowledge (please note that if you draw the alert before %orig it will happen before the function excutes and if you run it after the %orig it will run after.)
      UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Challenge 1" message:@"Es un alert" preferredStyle:UIAlertControllerStyleAlert];
      UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {}];
      [alert addAction:defaultAction];
    [[self _rootViewControllers][1] presentViewController:alert animated:YES completion:nil];
    }

	%end
