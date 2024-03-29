//
//  MyModalViewController.m
//  Peak
//
//  Created by David LoBosco on 3/29/14.
//  Copyright (c) 2014 David LoBosco. All rights reserved.
//

#import "MyModalViewController.h"

@interface MyModalViewController ()<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UITextField *peakWords;
@property (nonatomic, strong) PeakMoment* moment;
@end

@implementation MyModalViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    self.imageView.image = self.imageToDisplay;
    self.moment = [[PeakMoment alloc] initWithImage:self.imageView.image];
    
    //self.peakWords.text =@"Insert Caption Here!";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitMoment:(id)sender {
    self.moment.caption = self.peakWords.text;
    NSLog(@"Peak words: %@ compare to %@",self.peakWords.text, self.moment.caption);
    
    [[self delegate] allDone:self.moment];
    
}

#pragma mark - text view delegate methods
//- (BOOL)textFieldShouldReturn:(UITextField *)textField{
//    
//    [textField resignFirstResponder];
//    return YES;
//}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    return YES;
}





@end
