//
//  CustomFreqDialogController.h
//  Pseudo-VLC
//
//  Created by Admin on 27.04.2021.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomFreqDialogController : NSWindowController

@property (unsafe_unretained) IBOutlet NSTextField *txtFreq;
@property (unsafe_unretained) IBOutlet NSButton *btnOk;

@property (readwrite) NSString *strFreq;

/**
 * Completion handler for textfield panel
 * \param returnCode Result from panel. Can be NSOKButton or NSCancelButton.
 * \param returnTime Resulting time in seconds entered in panel.
 */
typedef void(^CustomFreqHandler)(NSInteger returnCode, int customFreq);

/**
 * Shows the panel as a modal dialog with window as its owner.
 * \param window Parent window for the dialog.
 * \param handler Completion block.
 */
- (void)runModalForWindow:(NSWindow *)window completionHandler:(CustomFreqHandler)handler;

@end

NS_ASSUME_NONNULL_END
