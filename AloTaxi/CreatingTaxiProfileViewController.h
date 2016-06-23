//
//  CreatingTaxiProfileViewController.h
//  AloTaxi
//
//  Created by Administrator on 6/23/16.
//  Copyright © 2016 Jensen Pich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreatingTaxiProfileViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtCarType;
@property (weak, nonatomic) IBOutlet UITextField *txtCarRegnumber;
@property (weak, nonatomic) IBOutlet UITextField *txtStartfee;
@property (weak, nonatomic) IBOutlet UITextField *txtFeekm;
@property (weak, nonatomic) IBOutlet UIImageView *imgTaxiDriverAvatar;
@property (weak, nonatomic) IBOutlet UIImageView *imgTaxiDriverAvatarHidden;

- (IBAction)onUploadTaxiAvatarClick:(id)sender;
- (IBAction)onSaveClick:(id)sender;
- (IBAction)onCancelClick:(id)sender;

@end
