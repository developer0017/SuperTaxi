//
//  CreatingUserProfileViewController.h
//  AloTaxi
//
//  Created by Administrator on 6/23/16.
//  Copyright © 2016 Jensen Pich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreatingUserProfileViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtAge;
@property (weak, nonatomic) IBOutlet UITextField *txtNote;
@property (weak, nonatomic) IBOutlet UIImageView *imgAvatar;
@property (weak, nonatomic) IBOutlet UIImageView *imgAvatarHidden;

- (IBAction)onSaveClick:(id)sender;
- (IBAction)onCancelClick:(id)sender;
- (IBAction)onUploadAvatarClick:(id)sender;

@end
