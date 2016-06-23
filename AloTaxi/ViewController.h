//
//  ViewController.h
//  AloTaxi
//
//  Created by Administrator on 6/21/16.
//  Copyright © 2016 Jensen Pich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txtEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;

@end

