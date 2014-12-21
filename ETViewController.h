//
//  ETViewController.h
//  ET
//
//  Created by Mina Malak on 9/17/14.
//  Copyright (c) 2014 LinkDev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+ZZFontSetter.h"
#import "MBProgressHUD.h"
#import "SettingsController.h"
//#import "DetailsViewManager.h"
//#import "SWRevealViewController.h"

@interface ETViewController : UIViewController
{

	IBOutlet UIButton *menuButton;
    IBOutlet UIImageView *backgroundView;
	IBOutlet UINavigationBar *navBar;
	
	BOOL m_isRoot;
	MBProgressHUD *hud;
	
    UIBarButtonItem *_navigationPaneBarButtonItem;
}
@property (nonatomic, retain) UIBarButtonItem *navigationPaneBarButtonItem;

-(void)setAsRoot:(BOOL)isRoot;
-(IBAction)menuButtonPressed:(id)sender;
-(IBAction)homeMenuButtonPressed:(id)sender;
-(id)initControllerWithStoryboardID:(NSString *)storyboardID;

+(UIStoryboard *)getStoryboard;

-(void)startLoading:(BOOL)isBlocking;
-(void)finishLoading;

-(NSString *)languageKey;

@end
