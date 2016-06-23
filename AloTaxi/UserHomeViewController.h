//
//  UserHomeViewController.h
//  AloTaxi
//
//  Created by Administrator on 6/23/16.
//  Copyright © 2016 Jensen Pich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserHomeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgUserPhoto;
@property (weak, nonatomic) IBOutlet UILabel *lblKelormetre;
@property (weak, nonatomic) IBOutlet UILabel *lblCars;
@property (weak, nonatomic) IBOutlet UIView *viewSeat;
@property (weak, nonatomic) IBOutlet UIButton *btnNext;

@property (weak, nonatomic) IBOutlet UIImageView *imgOneSeat;
@property (weak, nonatomic) IBOutlet UIImageView *imgTwoSeat;
@property (weak, nonatomic) IBOutlet UIImageView *imgThreeSeat;

- (IBAction)onNextClick:(id)sender;

- (IBAction)onOneSeatClick:(id)sender;
- (IBAction)onTwoSeatClick:(id)sender;
- (IBAction)onThreeSeatClick:(id)sender;

@end
