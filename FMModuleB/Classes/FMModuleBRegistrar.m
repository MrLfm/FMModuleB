//
//  FMModuleBRegistrar.m
//  FMModuleB
//
//  Created by FumingLeo on 2025/11/12.
//

#import "FMModuleBRegistrar.h"
#import "FMModuleB/FMModuleB-Swift.h"

@implementation FMModuleBRegistrar

+ (void)load {
    [FMModuleB registerService];
}

@end
