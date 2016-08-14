//
//  FFHomeDropdown.m
//  FFMeituanHD
//
//  Created by 张玲玉 on 16/8/14.
//  Copyright © 2016年 张玲玉. All rights reserved.
//

#import "FFHomeDropdown.h"

@implementation FFHomeDropdown

+ (instancetype)item
{
    return [[[NSBundle mainBundle] loadNibNamed:@"FFHomeDropdown" owner:nil options:nil] firstObject];
}

@end
