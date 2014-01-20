//
//  ViewController.m
//  OnlineShopping
//
//  Created by Chaithra TV on 20/01/14.
//  Copyright (c) 2014 Chaithra TV. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showWatches:(id)sender
{
    NSError *error;
    NSString *jsonFile = [[NSBundle mainBundle]pathForResource:@"document" ofType:@"json"];
    NSData *jsonData = [NSData dataWithContentsOfFile:jsonFile];
    
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData
                                                                     options:kNilOptions
                                                                       error:&error];
    NSLog(@"json dict=%@",jsonDict.allKeys);
    
}
@end
