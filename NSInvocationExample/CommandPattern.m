//
//  CommandPattern.m
//  NSInvocationExample
//
//  Created by Dmitriy Arkhipov on 10.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "CommandPattern.h"

@implementation CommandExecutor {

    NSInvocation *specCommand;
}

- (void) setSpecificCommand:(NSInvocation *)sCommand {

    specCommand = sCommand;
}

- (void) executeSpecificCommand {

    [specCommand invoke];
}

@end



@implementation TextWriter

- (void) printTestText {

    NSLog(@"TextWriter: print test text COMMAND PATTERN");

}

- (void) secondTestText {

    NSLog(@"TextWriter: print test text COMMAND PATTERN, test new selector and one signature");


}

@end


