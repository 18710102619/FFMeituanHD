//
//  FFHomeTopItem.m
//  FFMeituanHD
//
//  Created by 张玲玉 on 16/8/14.
//  Copyright © 2016年 张玲玉. All rights reserved.
//

#import "FFHomeTopItem.h"

@implementation FFHomeTopItem

+ (instancetype)item
{
    return [[[NSBundle mainBundle] loadNibNamed:@"FFHomeTopItem" owner:nil options:nil] firstObject];
}

@end
