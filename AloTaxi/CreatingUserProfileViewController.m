//
//  CreatingUserProfileViewController.m
//  AloTaxi
//
//  Created by Administrator on 6/23/16.
//  Copyright © 2016 Jensen Pich. All rights reserved.
//

#import "CreatingUserProfileViewController.h"
#import "AppDelegate.h"

@interface CreatingUserProfileViewController ()

@end

@implementation CreatingUserProfileViewController

@synthesize txtName, txtAge, txtNote;
@synthesize imgAvatar, imgAvatarHidden;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imgAvatar.layer.cornerRadius = self.imgAvatar.frame.size.width / 2;
    self.imgAvatar.clipsToBounds = YES;
}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIButton Action Methods
- (IBAction)onSaveClick:(id)sender {
}

- (IBAction)onCancelClick:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)onUploadAvatarClick:(id)sender {
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.delegate = self;
    imagePicker.allowsEditing = YES;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imagePicker animated:YES completion:nil];
    
    [imgAvatarHidden setHidden:YES];
}

#pragma mark - UIImagePickerView Delegate Method
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.imgAvatar.image = chosenImage;
    UIImageWriteToSavedPhotosAlbum(self.imgAvatar.image , nil , nil, nil);
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    appDelegate.img = imgAvatar.image;
}

@end
