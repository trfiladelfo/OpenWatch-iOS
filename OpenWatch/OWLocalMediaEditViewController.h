//
//  OWLocalMediaEditViewController.h
//  OpenWatch
//
//  Created by Christopher Ballinger on 12/17/12.
//  Copyright (c) 2012 OpenWatch FPC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OWPreviewView.h"
#import "OWCharacterCountdownView.h"
#import "OWLocalMediaObject.h"
#import "BSKeyboardControls.h"
#import "SSTextView.h"
#import "BButton.h"
#import <Accounts/Accounts.h>

@class OWLocalMediaEditViewController, OWMission, OWSelectionTableItem;

@interface OWLocalMediaEditViewController : UIViewController <UITextViewDelegate, UIGestureRecognizerDelegate, BSKeyboardControlsDelegate, UITableViewDataSource, UITableViewDelegate>


@property (nonatomic, strong) SSTextView *titleTextView;
@property (nonatomic, strong) OWPreviewView *previewView;

@property (nonatomic, strong) UITableView *socialTableView;
@property (nonatomic, strong) NSArray *socialItems;
@property (nonatomic, strong) NSArray *openwatchItems;
@property (nonatomic, strong) UISwitch *facebookSwitch;
@property (nonatomic, strong) UISwitch *twitterSwitch;
@property (nonatomic, strong) UISwitch *openwatchSwitch;

@property (nonatomic, strong) BButton *doneButton;

@property (nonatomic, strong) NSManagedObjectID *objectID;
@property (nonatomic) BOOL showingAfterCapture;
@property (nonatomic, strong) BSKeyboardControls *keyboardControls;

@property (nonatomic, strong) OWMission *selectedMission;
@property (nonatomic, strong) OWSelectionTableItem *missionSelectionItem;

@end
