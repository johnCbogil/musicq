//
//  SessionViewController.m
//  mq
//
//  Created by Aditya Narayan on 2/27/15.
//  Copyright (c) 2015 John Bogil. All rights reserved.
//

#import "SessionViewController.h"

@interface SessionViewController ()

@end

@implementation SessionViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.hidesBackButton = YES;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupPeerAndSessionWithDisplayName:(NSString *)displayName{
    
    self.peerID = [[MCPeerID alloc]initWithDisplayName:displayName];
    self.session = [[MCSession alloc]initWithPeer:self.peerID];
    self.session.delegate = self;
    
    
}

- (void)setupMCBrowser {
    
    self.browser = [[MCBrowserViewController alloc]initWithServiceType:@"chat-files" session:self.session];
    
    
}

- (void)advertiseSelf:(BOOL)shouldAdvertise{
    
    if(shouldAdvertise){
        self.advertiser = [[MCAdvertiserAssistant alloc]initWithServiceType:@"chat-files" discoveryInfo:nil session:self.session];
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
