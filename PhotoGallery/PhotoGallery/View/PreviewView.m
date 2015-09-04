//
//  PreviewView.m
//  PhotoGallery
//
//  Created by it197 on 9/4/15.
//  Copyright (c) 2015 Cuelogic Technologies. All rights reserved.
//

#import "PreviewView.h"

@interface PreviewView ()

@end
@implementation PreviewView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)setImageInImageView:(UIImage*)image
{

    imageViewPreview.image = nil;
    imageViewPreview.image = image;
    
}

@end
