//
//  ViewController.m
//  播放长音乐
//
//  Created by 黄志伟 on 16/6/1.
//  Copyright © 2016年 黄志伟. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
@property(nonatomic,strong)AVAudioPlayer *player;

@end

@implementation ViewController
#pragma mark - lazy
-(AVAudioPlayer*)player{
    if (_player == nil) {
        NSURL *url = [[NSBundle mainBundle] URLForResource:@"春上村树.wav" withExtension:nil];
        
        _player = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
        [_player prepareToPlay];
    }
    return _player;
}



#pragma mark - 处理点击
- (IBAction)start:(id)sender {
    [self.player play];
}
- (IBAction)pause:(id)sender {
    [self.player pause];
}
- (IBAction)stop:(id)sender {
    [self.player stop];
    self.player = nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



@end
