//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Victor Hong on 14/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property UIImageView *imageOne;
@property UIImageView *imageTwo;
@property UIImageView *imageThree;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.imageOne = [[UIImageView alloc] initWithFrame: CGRectZero];
    self.imageOne.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageOne.image = [UIImage imageNamed:@"Lighthouse-in-Field"];
    [self.scrollView addSubview:self.imageOne];
    
    self.imageTwo = [[UIImageView alloc] initWithFrame: CGRectZero];
    self.imageTwo.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageTwo.image = [UIImage imageNamed:@"Lighthouse-night"];
    [self.scrollView addSubview:self.imageTwo];
    
    self.imageThree = [[UIImageView alloc] initWithFrame: CGRectZero];
    self.imageThree.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageThree.image = [UIImage imageNamed:@"Lighthouse-zoomed"];
    [self.scrollView addSubview:self.imageThree];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageOne attribute:<#(NSLayoutAttribute)#> relatedBy:<#(NSLayoutRelation)#> toItem:<#(nullable id)#> attribute:<#(NSLayoutAttribute)#> multiplier:<#(CGFloat)#> constant:<#(CGFloat)#>]]
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
