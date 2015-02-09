//
//  ViewController.m
//  FTAlertControllerDemo
//
//  Created by narut on 2/7/15.
//  Copyright (c) 2015 Narut. All rights reserved.
//

#import "ViewController.h"
#import "FTAlertController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.alertButton addTarget:self action:@selector(alert) forControlEvents:UIControlEventTouchUpInside];
    [self.alertWithDetailButton addTarget:self action:@selector(alertWithDetail) forControlEvents:UIControlEventTouchUpInside];
    [self.alertWithTextFieldButton addTarget:self action:@selector(alertWithTextField) forControlEvents:UIControlEventTouchUpInside];
    [self.actionSheetButton addTarget:self action:@selector(actionSheet) forControlEvents:UIControlEventTouchUpInside];
    [self.actionSheetWithDetailButton addTarget:self action:@selector(actionSheetWithDetail) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)alert{
    FTAlertController *alert = [FTAlertController alertWithTitle:@"FTAlertControllerDemo" Detail:nil Style:FTAlertControllerStyleAlert InViewController:self];
    [alert addButtonWithTitle:@"Ok" Block:^(FTAlertController *object){
        NSLog(@"Tap OK");
    }];
    
    [alert show];
}

- (void)alertWithDetail{
    FTAlertController *alert = [FTAlertController alertWithTitle:@"FTAlertControllerDemo" Detail:@"[[ Detail ]]" Style:FTAlertControllerStyleAlert InViewController:self];
    [alert addButtonWithTitle:@"Ok" Block:^(FTAlertController *object){
        NSLog(@"Tap OK");
    }];
    [alert show];
}

- (void)alertWithTextField{
    FTAlertController *alert = [FTAlertController alertWithTitle:@"FTAlertController" Detail:nil Style:FTAlertControllerStyleAlert InViewController:self];
    [alert addButtonWithTitle:@"Ok" Block:^(FTAlertController *object){
        NSLog(@"Tap OK");
    }];
    UITextField *textField = [[UITextField alloc] init];
    [textField setPlaceholder:@"TextField"];
    [textField setText:@"Example Text"];
    [textField setReturnKeyType:UIReturnKeyGo];
    [alert addTextFile:textField];
    [alert show];
    [alert showInViewController:self];
}

- (void)actionSheet{
    FTAlertController *alert = [FTAlertController alertWithTitle:@"FTAlertController" Detail:nil Style:FTAlertControllerStyleActionSheet InViewController:self];
    [alert addButtonWithTitle:@"Ok" Block:^(FTAlertController *object){
        NSLog(@"Tap OK");
    }];
    [alert show];
}

- (void)actionSheetWithDetail{
    FTAlertController *alert = [FTAlertController alertWithTitle:@"FTAlertControllerDemo" Detail:@"[[ Detail ]]" Style:FTAlertControllerStyleActionSheet InViewController:self];
    [alert addButtonWithTitle:@"Ok" Block:^(FTAlertController *object){
        NSLog(@"Tap OK");
    }];
    [alert show];
}

@end
