//
//  ScrollViewController.m
//  ScrollViewImageGalleries
//
//  Created by Victor Hong on 14/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "ScrollViewController.h"

@interface ScrollViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.scrollView.minimumZoomScale = 0.5;
    self.scrollView.maximumZoomScale = 4.0;
    self.scrollView.zoomScale = 1.0;
    
    self.imageView.image = [UIImage imageNamed:self.imageViewName];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    
    return self.imageView;
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
