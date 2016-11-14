//
//  ScrollViewController.h
//  ScrollViewImageGalleries
//
//  Created by Victor Hong on 14/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollViewController : UIViewController <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property NSString *imageViewName;

@end
