//
//  CommandPattern.h
//  NSInvocationExample
//
//  Created by Dmitriy Arkhipov on 10.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface CommandExecutor : NSObject

- (void) setSpecificCommand:(NSInvocation *)specCommand;
- (void) executeSpecificCommand;

@end




@interface TextWriter : NSObject

//@property (assign, nonatomic) SEL printSelector; //example property with selector type

- (void) printTestText;

- (void) secondTestText;

@end