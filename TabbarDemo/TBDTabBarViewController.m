//
//  TBDTabBarViewController.m
//  TabbarDemo
//
//  Created by Vinod on 29/12/15.


#import "TBDTabBarViewController.h"
#import "TBDFirstViewController.h"
#import "TBDSecondViewController.h"
#import "TBDThirdViewController.h"

@interface TBDTabBarViewController ()<UITabBarControllerDelegate>

@end

@implementation TBDTabBarViewController

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UIViewController *firstCont = [[TBDFirstViewController alloc] init];
    UIViewController *secondCont = [[TBDSecondViewController alloc] init];
    UIViewController *thirdCont = [[TBDThirdViewController alloc] init];
    
    UINavigationController *firstNavCont = [[UINavigationController alloc] initWithRootViewController:firstCont];
    UINavigationController *secondNavCont = [[UINavigationController alloc] initWithRootViewController:secondCont];
    UINavigationController *thirdNavCont = [[UINavigationController alloc] initWithRootViewController:thirdCont];
    
    [firstNavCont.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],
                                                                    NSFontAttributeName:[UIFont systemFontOfSize:20]}];
    [secondNavCont.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],
                                                         NSFontAttributeName:[UIFont systemFontOfSize:20]}];
    [thirdNavCont.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],
                                                         NSFontAttributeName:[UIFont systemFontOfSize:20]}];
    
    [firstNavCont.navigationBar setBarTintColor:[UIColor colorWithRed:0.833 green:0.500 blue:0.500 alpha:1.000]];
    [secondNavCont.navigationBar setBarTintColor:[UIColor colorWithRed:1.000 green:0.228 blue:0.315 alpha:1.000]];
    [thirdNavCont.navigationBar setBarTintColor:[UIColor colorWithRed:0.637 green:0.567 blue:0.252 alpha:1.000]];
    
    //tabBarItem::: Automatically created lazily with the view controller's title if it's not set explicitly.
    firstNavCont.tabBarItem.tag = 1;
    secondNavCont.tabBarItem.tag = 2;
    thirdNavCont.tabBarItem.tag = 3;
    
    [self setViewControllers:@[firstNavCont, secondNavCont, thirdNavCont]];
    [self.tabBar setBarTintColor:[UIColor purpleColor]];
    
    self.delegate = self;
    
    [self setSelectedViewControllerWithIndex:0];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
}

- (void)setSelectedViewControllerWithIndex:(NSInteger)index {
    if(self.viewControllers.count > index && index >= 0){
        UINavigationController *controller = [self.viewControllers objectAtIndex:index];
        [self setSelectedViewController:controller];
        [self tabBarController:self didSelectViewController:controller];
    }
}


// MARK: Delegate Methods

- (void)tabBarController:(UITabBarController *)tabBarController2 didSelectViewController:(UINavigationController *)viewController {
    
    UINavigationController *navController;
    UIColor *color;
    switch (tabBarController2.selectedIndex+1) {
        case 1:
            color = [UIColor whiteColor];
            break;
            
        case 2:
            color = [UIColor whiteColor];
            break;
            
        case 3:
            color = [UIColor whiteColor];
            break;
  
        default:
            break;
    }
    
    navController = [tabBarController2.viewControllers objectAtIndex:tabBarController2.selectedIndex];
    [tabBarController2.tabBar setTintColor:color];
    /*if (navController.viewControllers.count == 1) {
        [viewController.navigationBar setBarTintColor:color];
    }*/
}


@end
