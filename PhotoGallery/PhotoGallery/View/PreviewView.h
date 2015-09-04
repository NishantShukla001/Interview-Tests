//
//  PreviewView.h
//  PhotoGallery
//
//  Created by it197 on 9/4/15.
//  Copyright (c) 2015 Cuelogic Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PreviewView : UIView
{
    IBOutlet UIImageView *imageViewPreview;
}

-(void)setImageInImageView:(UIImage*)image;

@end
