//
//  CreatingTaxiProfileViewController.m
//  AloTaxi
//
//  Created by Administrator on 6/23/16.
//  Copyright © 2016 Jensen Pich. All rights reserved.
//

#import "CreatingTaxiProfileViewController.h"
#import "AppDelegate.h"

@interface CreatingTaxiProfileViewController ()

@end

@implementation CreatingTaxiProfileViewController

@synthesize txtName, txtCarType, txtCarRegnumber, txtStartfee, txtFeekm;
@synthesize imgTaxiDriverAvatar, imgTaxiDriverAvatarHidden;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imgTaxiDriverAvatar.layer.cornerRadius = self.imgTaxiDriverAvatar.frame.size.width / 2;
    self.imgTaxiDriverAvatar.clipsToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIAction Methods
- (IBAction)onUploadTaxiAvatarClick:(id)sender {
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.delegate = self;
    imagePicker.allowsEditing = YES;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imagePicker animated:YES completion:nil];
    
    [imgTaxiDriverAvatarHidden setHidden:YES];
}

- (IBAction)onSaveClick:(id)sender {
    
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    appDelegate.string = txtName.text;
}

- (IBAction)onCancelClick:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - UIImagePickerView Delegate Method
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.imgTaxiDriverAvatar.image = chosenImage;
    UIImageWriteToSavedPhotosAlbum(self.imgTaxiDriverAvatar.image , nil , nil, nil);
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    appDelegate.img = imgTaxiDriverAvatar.image;
}

@end
