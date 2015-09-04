//
//  NetworkClass.h
//  PhotoGallery
//
//  Created by it197 on 9/4/15.
//  Copyright (c) 2015 Cuelogic Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@protocol NetworkClassDelegate <NSObject>

@optional
-(void)responseFromNetworkLayer:(NSDictionary*)dictNetworkData;

@end

@interface NetworkClass : NSObject
{
    id <NetworkClassDelegate> delegate;
}

-(void)startNetworkProcess;
-(void)setDelegate:(id)del;

@end
