//
//  ViewController.m
//  Ex3.72P
//
//  Created by SDT-1 on 2014. 1. 21..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "ViewController.h"
#import <Social/Social.h>
@interface ViewController ()

@end

@implementation ViewController

-(IBAction)showSocialComposer:(id)sender{
    NSString *service =SLServiceTypeFacebook;
    
    if([SLComposeViewController isAvailableForServiceType:service]){
        SLComposeViewController *composer = [SLComposeViewController composeViewControllerForServiceType:service];
        
        UIImage *image = [UIImage imageNamed: @"girl1.png"];
        [composer addImage:image];
        [composer setInitialText:@"소셜 프레임워크를 이용한 글 쓰기 테스트"];
        
        composer.completionHandler = ^(SLComposeViewControllerResult result){
            if(SLComposeViewControllerResultDone == result)
                NSLog(@"글작성완료");
            else
                NSLog(@"글작성취소");
        };
        [self presentViewController:composer animated:YES completion:nil];
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
