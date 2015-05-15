//
//  ViewController.m
//  OEWA_Sampler
//
//  Created by Helmut W. Januschka on 15.05.15.
//  Copyright (c) 2015 hjanuschka. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //Track oewa!!
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"/RedCont/Nachrichten/NachrichtenUeberblick",@"cp",nil];
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate oewa_TRACK:dict];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
