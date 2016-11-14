//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Victor Hong on 14/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "ViewController.h"
#import "ScrollViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property UIImageView *imageOne;
@property UIImageView *imageTwo;
@property UIImageView *imageThree;
@property NSString *selectImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.scrollView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    self.scrollView.contentSize =CGSizeMake(self.view.bounds.size.width * 3, self.view.bounds.size.height *3);
    
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
    
    //set image one constraint
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageOne
                                                                attribute:NSLayoutAttributeTopMargin
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeTop
                                                               multiplier:1.0
                                                                 constant:0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageOne
                                                                attribute:NSLayoutAttributeLeadingMargin
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeLeading
                                                               multiplier:1.0
                                                                 constant:0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageOne
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:self.view.bounds.size.width]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageOne
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:self.view.bounds.size.height]];
    
    //Set image two constraint
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageTwo
                                                                attribute:NSLayoutAttributeTopMargin
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.imageOne
                                                                attribute:NSLayoutAttributeBottom
                                                               multiplier:1.0
                                                                 constant:0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageTwo
                                                                attribute:NSLayoutAttributeLeadingMargin
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeLeading
                                                               multiplier:1.0
                                                                 constant:0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageTwo
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:self.view.bounds.size.width]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageTwo
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:self.view.bounds.size.height]];
    
    //Set image three constraint
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageThree
                                                                attribute:NSLayoutAttributeTopMargin
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.imageTwo
                                                                attribute:NSLayoutAttributeBottom
                                                               multiplier:1.0
                                                                 constant:0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageThree
                                                                attribute:NSLayoutAttributeLeadingMargin
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.imageTwo
                                                                attribute:NSLayoutAttributeLeading
                                                               multiplier:1.0
                                                                 constant:0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageThree
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:self.view.bounds.size.width]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageThree
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:self.view.bounds.size.height]];
    
    self.imageOne.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGestureOne = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(printImageTapOne)];
    
    [self.imageOne addGestureRecognizer:tapGestureOne];
    
    self.imageTwo.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGestureTwo = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(printImageTapTwo)];
    
    [self.imageTwo addGestureRecognizer:tapGestureTwo];
    
    self.imageThree.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGestureThree = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(printImageTapThree)];
    
    [self.imageThree addGestureRecognizer:tapGestureThree];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ScrollViewController * vc = [segue destinationViewController];
    vc.imageViewName = self.selectImage;
    
}

-(void)printImageTapOne {
    
    self.selectImage = @"Lighthouse-in-Field";
    [self performSegueWithIdentifier:@"showDetail" sender:self];
    
}

-(void)printImageTapTwo {
    
    self.selectImage = @"Lighthouse-night";
    [self performSegueWithIdentifier:@"showDetail" sender:self];
    
}

-(void)printImageTapThree {
    
    self.selectImage = @"Lighthouse-zoomed";
    [self performSegueWithIdentifier:@"showDetail" sender:self];
    
}

@end
