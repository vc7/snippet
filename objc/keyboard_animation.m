// 
//  keyboard_animation.m
//
//  keyboard animations in iOS 7 have adding animation curves,
//  here is the script to get the curve and assign to the control
//  panel which is stick on the top of the keyboard.
//
//  Usage
//    Please put this code in to the keyboard notification method.
//
//  Created by Vincent on 12/26/13
//

// aNotification is the variable which is passed by keyboard.
NSDictionary* info = [aNotification userInfo];
CGSize keyboardSize = [[info objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;

// Get keyboard animation duration.
NSNumber *durationValue = info[UIKeyboardAnimationDurationUserInfoKey];
NSTimeInterval animationDuration = durationValue.doubleValue;

// Get keyboard animation curve.
NSNumber *curveValue = info[UIKeyboardAnimationCurveUserInfoKey];
UIViewAnimationCurve animationCurve = curveValue.intValue;

// Starting the animation
[UIView animateWithDuration:animationDuration
                      delay:0.0
                    options:(animationCurve << 16)
                 animations:^{
                   // moving the UI components here
                   <#code#>
                 }
                 completion:nil
];

