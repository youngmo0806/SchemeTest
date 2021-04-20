//
//  ViewController.m
//  SchemeTest
//
//  Created by kbins on 2021/03/31.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)install:(id)sender {
    UIApplication *app = [UIApplication sharedApplication];
    NSURL *url = [NSURL URLWithString:@"kbinsmainapp://showpage?page=loan"];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        // 이 블럭은 메인스레드(UI)에서 실행된다.
        if (@available(iOS 10, *)) {
            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:^(BOOL success) {

                NSLog(@"성공");

            }];
            
        }
        else {
            NSLog(@"실패");
        }
    });
}




@end
