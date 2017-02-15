//
//  ViewController.m
//  HelloWorld
//
//  Created by Dipankar Ghosh on 1/21/17.
//  Copyright © 2017 Dipankar Ghosh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

    -(IBAction)btnClcik:(id)sender
    {
        label.textColor = [UIColor colorWithRed:(0/255.f) green:(0/255.f) blue:(50/255.f) alpha:1];
        label.text=@"Dipankar Ghosh";
    }
-(IBAction)reset:(id)sender
{
          label.text=@"Hello World";
    //label.lineBreakMode = UILineBreakModeWordWrap;;
    //label.numberOfLines=;
}
-(IBAction)view:(id)sender
{
   label.text=@"Touch and see Confluence Park !";
}
- (void)viewDidLoad {
     label.text=@"Hello World";
   // [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"Sherlock.jpg"]]];
   // self.view.backgroundColor = [UIColor blackColor];
    [super viewDidLoad];
        UITapGestureRecognizer *singleFingerTap =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleSingleTap:)];
    [self.view addGestureRecognizer:singleFingerTap];
    //[singleFingerTap release];
    
 //   self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    // Do any additional setup after loading the view, typically from a nib.
}

//The event handling method
- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer {
    CGPoint location = [recognizer locationInView:[recognizer.view superview]];
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"confpark.jpg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    UIGraphicsEndImageContext();
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
