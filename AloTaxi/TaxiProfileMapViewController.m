//
//  TaxiProfileMapViewController.m
//  AloTaxi
//
//  Created by Administrator on 6/23/16.
//  Copyright © 2016 Jensen Pich. All rights reserved.
//

#import "TaxiProfileMapViewController.h"
#import "AppDelegate.h"

@interface TaxiProfileMapViewController ()

@end

@implementation TaxiProfileMapViewController

@synthesize imgTaxiDriverPhoto;
@synthesize lblTaxiDriverName;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imgTaxiDriverPhoto.layer.cornerRadius = self.imgTaxiDriverPhoto.frame.size.width / 2;
    self.imgTaxiDriverPhoto.clipsToBounds = YES;
    
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    imgTaxiDriverPhoto.image = appDelegate.img;
    lblTaxiDriverName.text = appDelegate.string;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
