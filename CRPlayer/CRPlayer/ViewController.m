//
//  ViewController.m
//  CRPlayer
//
//  Created by chrisRay on 2017/5/21.
//  Copyright © 2017年 Netease. All rights reserved.
//

#import "ViewController.h"
#import "NELivePlayerController.h"

#define PlayURL @"rtmp://v1.live.126.net/live/4e6400cd0c27447cbd74b3ec70de891e"

@interface ViewController ()

@property(nonatomic,strong) NELivePlayerController *player;

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _player = [[NELivePlayerController alloc] initWithContentURL:[NSURL URLWithString:PlayURL]];
        [NELivePlayerController setLogLevel:NELP_LOG_VERBOSE];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.player.view.frame = self.view.bounds;
    self.player.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.player.view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.player.view];
    
    [self.player prepareToPlay];
    [self.player play];
}


@end
