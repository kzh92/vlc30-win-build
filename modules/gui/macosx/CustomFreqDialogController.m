//
//  CustomFreqDialogController.m
//  Pseudo-VLC
//
//  Created by Admin on 27.04.2021.
//

#import "CustomFreqDialogController.h"


@interface CustomFreqDialogController ()
{
    CustomFreqHandler _completionHandler;
}


@end

@implementation CustomFreqDialogController

- (id)init
{
    self = [super initWithWindowNibName:@"CustomFreqDialogController"];
   
    return self;
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    _txtFreq.delegate = self;
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction)button_clicked:(id)sender {
    [self.window orderOut:sender];
    [NSApp endSheet: self.window];

    if (_completionHandler)
        _completionHandler(sender == _btnOk ? NSOKButton : NSCancelButton, [_txtFreq.stringValue intValue]);
}

- (void)runModalForWindow:(NSWindow *)window completionHandler:(CustomFreqHandler)handler
{
    [self window];
    [_txtFreq setStringValue:_strFreq];

    _completionHandler = [handler copy];
    [NSApp beginSheet:self.window
       modalForWindow:window modalDelegate:self
       didEndSelector:nil
          contextInfo:nil];
}



@end
