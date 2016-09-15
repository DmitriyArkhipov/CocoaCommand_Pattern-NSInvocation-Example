//
//  ViewController.m
//  NSInvocationExample
//
//  Created by Dmitriy Arkhipov on 10.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "ViewController.h"
#import "CommandPattern.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CommandExecutor *commander = [[CommandExecutor alloc] init];
    
    TextWriter *textWriter = [[TextWriter alloc] init];
    
    //Сигнатуру создавать заново не требуется потому что имя метода не имеет занчения. В контексте Objective-C. Сигнатура - это структура имени метода (аргументов и их количества + типы возвращаемых значений)
    
    NSMethodSignature *signature = [textWriter methodSignatureForSelector:@selector(printTestText)];
    NSInvocation *invocationToPass = [NSInvocation invocationWithMethodSignature:signature];
    [invocationToPass setTarget:textWriter];
    [invocationToPass setSelector:@selector(printTestText)];
    
    
    
    [commander setSpecificCommand:invocationToPass];
    
    
    [commander executeSpecificCommand];
    

    [invocationToPass setSelector:@selector(secondTestText)];
    [commander executeSpecificCommand];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
