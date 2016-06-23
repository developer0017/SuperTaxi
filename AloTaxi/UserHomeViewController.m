//
//  UserHomeViewController.m
//  AloTaxi
//
//  Created by Administrator on 6/23/16.
//  Copyright © 2016 Jensen Pich. All rights reserved.
//

#import "UserHomeViewController.h"
#import "AppDelegate.h"

@interface UserHomeViewController ()

@end

@implementation UserHomeViewController

@synthesize lblCars, lblKelormetre;
@synthesize imgUserPhoto, imgOneSeat, imgTwoSeat, imgThreeSeat;
@synthesize viewSeat;
@synthesize btnNext;

bool flag = true;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imgUserPhoto.layer.cornerRadius = self.imgUserPhoto.frame.size.width / 2;
    self.imgUserPhoto.clipsToBounds = YES;
    
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    imgUserPhoto.image = appDelegate.img;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIAction Methods
- (IBAction)onNextClick:(id)sender {
    [viewSeat setHidden:NO];

    [btnNext setImage:[UIImage imageNamed:@"btn_next_blur.png"] forState:normal];
    [btnNext setEnabled:NO];
}

- (IBAction)onOneSeatClick:(id)sender {
    if (flag) {
        [imgOneSeat setImage:[UIImage imageNamed:@"check.png"]];
    }
    flag = false;
}

- (IBAction)onTwoSeatClick:(id)sender {
    if (flag) {
        [imgTwoSeat setImage:[UIImage imageNamed:@"check.png"]];
    }
    flag = false;
}

- (IBAction)onThreeSeatClick:(id)sender {
    if (flag) {
        [imgThreeSeat setImage:[UIImage imageNamed:@"check.png"]];
    }
    flag = false;
}

@end
