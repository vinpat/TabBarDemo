//
//  UITabBarItem+Helper.m
//  TabbarDemo
//
//  Created by Vinod on 29/12/15.


#import "UITabBarItem+Helper.h"

@implementation UITabBarItem (Helper)

- (UIImage *)selectedImage {
    
    UIImage *image;
    switch (self.tag) {
        case 1:
            image = [UIImage imageNamed:@"first"];
            break;
            
        case 2:
            image = [UIImage imageNamed:@"second"];
            break;
            
        case 3:
            image = [UIImage imageNamed:@"thirdSelected"];
            break;
            
        default:
            break;
    }
    
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:0.922 green:0.506 blue:0.094 alpha:1.000]];
    
    return image;
}

- (UIImage *)unselectedImage {
    UIImage *image;
    switch (self.tag) {
        case 1:
            image = [UIImage imageNamed:@"first"];
            break;
            
        case 2:
            image = [UIImage imageNamed:@"second"];
            break;
            
        case 3:
            image = [UIImage imageNamed:@"third"];
            break;
            
        default:
            break;
    }
    
    return image;
}

- (NSString *)title {
    NSString *string;
    
    switch (self.tag) {
        case 1:
            string = @"First Controller";
            break;
            
        case 2:
            string = @"Second Controller";
            break;
            
        case 3:
            string = @"Third Controller";
            break;
            
        default:
            string = nil;
            break;
    }
    
    return string;
}


@end
