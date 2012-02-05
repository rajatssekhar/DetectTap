//
//  DetectingTapsViewController.m
//  DetectingTaps
//
//  Created by Raja T S Sekhar on 1/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DetectingTapsViewController.h"

@implementation DetectingTapsViewController

@synthesize singleLabel; 
@synthesize doubleLabel; 
@synthesize tripleLabel; 
@synthesize quadrupleLabel;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[singleLabel setText:@""];
	[doubleLabel setText:@""];
	[tripleLabel setText:@""];
	[quadrupleLabel setText:@""];
    [super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)singleTap {
	[singleLabel setText:@"Single Tap Detected"]; 
	[self performSelector:@selector(eraseMe:) 
			   withObject:singleLabel 
			   afterDelay:2];
} 

- (void)doubleTap {
	[doubleLabel setText:@"Double Tap Detected"]; 
	[self performSelector:@selector(eraseMe:)
			   withObject:doubleLabel 
			   afterDelay:2];
} 

- (void)tripleTap {
	[tripleLabel setText:@"Triple Tap Detected"]; 
	[self performSelector:@selector(eraseMe:)
			   withObject:tripleLabel 
			   afterDelay:2];
} 

- (void)quadrupleTap {
	[quadrupleLabel setText:@"Quadruple Tap Detected"]; 
	[self performSelector:@selector(eraseMe:)
			   withObject:quadrupleLabel 
			   afterDelay:2];
} 

- (void)eraseMe:(UILabel *)textField {
	textField.text = @"";
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch *touch = [touches anyObject]; 
	NSInteger tapCount = [touch tapCount]; 
	switch (tapCount) {
		case 1: 
			[self singleTap]; 
			break;
		case 2: 
			[self doubleTap]; 
			break;
		case 3: 
			[self tripleTap]; 
			break;
		case 4: 
			[self quadrupleTap]; 
			break;
		default: break;
	}
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[singleLabel release]; 
	[doubleLabel release]; 
	[tripleLabel release]; 
	[quadrupleLabel release];
    [super dealloc];
}

@end
