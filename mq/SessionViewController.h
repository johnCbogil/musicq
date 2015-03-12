//
//  SessionViewController.h
//  mq
//
//  Created by Aditya Narayan on 2/27/15.
//  Copyright (c) 2015 John Bogil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MultipeerConnectivity/MultipeerConnectivity.h>



@interface SessionViewController : UIViewController <MCSessionDelegate>

// MCSession properties
@property (nonatomic, strong) MCPeerID *peerID;
@property (nonatomic, strong) MCSession *session;
@property (nonatomic, strong) MCBrowserViewController *browser;
@property (nonatomic, strong) MCAdvertiserAssistant *advertiser;



// UI Properties
@property (strong, nonatomic) IBOutlet UIBarButtonItem *endButton;



-(void)setupPeerAndSessionWithDisplayName:(NSString *)displayName;
-(void)setupMCBrowser;
-(void)advertiseSelf:(BOOL)shouldAdvertise;


@end
