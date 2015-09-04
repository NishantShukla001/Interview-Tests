//
//  NetworkClass.m
//  PhotoGallery
//
//  Created by it197 on 9/4/15.
//  Copyright (c) 2015 Cuelogic Technologies. All rights reserved.
//

#import "NetworkClass.h"

static NSString * const BaseURLString = @"http://192.168.10.104/imageData.php";

@interface NetworkClass ()
{
    NSDictionary *dictCategoryData;

}
@end

@implementation NetworkClass

-(void)startNetworkProcess
{
    
    NSURL *url = [NSURL URLWithString:BaseURLString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    operation.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        
        dictCategoryData = (NSDictionary *)responseObject;
        
        if (delegate) {
            
            if ([delegate respondsToSelector:@selector(responseFromNetworkLayer:)]) {
                
                [delegate responseFromNetworkLayer:dictCategoryData];
            }
            
        }
        
        
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error Retrieving Data"
                                                            message:[error localizedDescription]
                                                           delegate:nil
                                                  cancelButtonTitle:@"Ok"
                                                  otherButtonTitles:nil];
        [alertView show];
    }];
    
    
    [operation start];
    
    
}

-(void)setDelegate:(id)del
{
    delegate = nil;
    delegate = del;
}

@end
