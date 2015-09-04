//
//  ViewController.m
//  PhotoGallery
//
//  Created by Sachin Patil on 24/08/15.
//  Copyright (c) 2015 Cuelogic Technologies. All rights reserved.
//

#import "ViewController.h"
#import "ListView.h"
#import "PreviewView.h"
#import "NetworkClass.h"




@interface ViewController ()<NetworkClassDelegate>
{
   IBOutlet PreviewView *previewView;
   IBOutlet ListView    *listView;
    
    NSDictionary *dictCategoryData;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [previewView setImageInImageView:[UIImage imageNamed:@"Default.png"]];
    
    // Calling webservices 
    NetworkClass *networkClass = [[NetworkClass alloc] init];
    [networkClass setDelegate:self];
    [networkClass startNetworkProcess];
    
    
}

#pragma mark- NetworkLayer Delegate

-(void)responseFromNetworkLayer:(NSDictionary *)dictNetworkData
{
    dictCategoryData = dictNetworkData;
    // we can reload table view here
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
