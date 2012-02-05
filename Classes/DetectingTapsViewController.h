//
//  DetectingTapsViewController.h
//  DetectingTaps
//
//  Created by Raja T S Sekhar on 1/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetectingTapsViewController : UIViewController {

	IBOutlet UILabel *singleLabel; 
	IBOutlet UILabel *doubleLabel; 
	IBOutlet UILabel *tripleLabel; 
	IBOutlet UILabel *quadrupleLabel;
}

@property (nonatomic, retain)  UILabel *singleLabel; 
@property (nonatomic, retain)  UILabel *doubleLabel; 
@property (nonatomic, retain)  UILabel *tripleLabel; 
@property (nonatomic, retain)  UILabel *quadrupleLabel; 

- (void)singleTap;
- (void)doubleTap;
- (void)tripleTap; 
- (void)quadrupleTap; 
- (void)eraseMe:(UILabel *)textField ;

@end

