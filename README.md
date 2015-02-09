# FTAlertController
FTAlertController is mix of UIAlertView , UIActionSheet for IOS 7 and UIAlertController for IOS 8 in classic UI

## Example
![alt tag](http://s8.postimg.org/s5rl5bsdh/i_OS_Simulator_Screen_Shot_Feb_9_2015_1_47_50_P.png)
![alt tag](http://s8.postimg.org/kr29cy6hx/i_OS_Simulator_Screen_Shot_Feb_9_2015_1_48_00_P.png)
![alt tag](http://s28.postimg.org/m82hgdad9/i_OS_Simulator_Screen_Shot_Feb_9_2015_2_00_00_P.png)

## How to use
Init object
```
FTAlertController *alert = [FTAlertController alertWithTitle:@"FTAlertControllerDemo" Detail:nil Style:FTAlertControllerStyleAlert InViewController:self];
```

Add Button 
```
// With Selector
  [alert addButtonWithTitle:@"Ok" Target:self Action:@selector(printOk) Object:nil];

- (void)printOk{
    NSLog(@"Tap Ok");
}

// With Block
[alert addButtonWithTitle:@"Ok" Block:^(FTAlertController *object){
        NSLog(@"Tap OK");
    }];
```

Add TextField 
  Limit 2 textfields , will hidden when add 3 or more
  
```
  UITextField *textField = [[UITextField alloc] init];
    [textField setPlaceholder:@"TextField"];
    [textField setText:@"Example Text"];
    [textField setReturnKeyType:UIReturnKeyGo];
    [alert addTextFile:textField];
```

Show
```
// In init ViewController
[alert show];

// In other ViewController
[alert showInViewController:otherViewController];
```
