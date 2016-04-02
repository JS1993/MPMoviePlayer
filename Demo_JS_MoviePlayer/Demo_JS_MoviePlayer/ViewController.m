//
//  ViewController.m
//  Demo_JS_MoviePlayer
//
//  Created by  江苏 on 16/3/15.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import <AVKit/AVKit.h>
@interface ViewController ()
@property(nonatomic,strong)MPMoviePlayerController* player;
@property(nonatomic,strong)AVPlayerViewController* paly;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString* path=@"http://player.yinyuetai.com/video/player/2534716/v_0.swf";
    NSURL* url=[NSURL fileURLWithPath:path];
    self.player=[[MPMoviePlayerController alloc]initWithContentURL:url];
    self.player.view.frame=CGRectMake(0, 100, 320, 200);
    //视频控制样式
    [self.player setControlStyle:MPMovieControlStyleDefault];
    [self.view addSubview:self.player.view];
    [self.player play];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
