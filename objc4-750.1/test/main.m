//
//  main.m
//  test
//
//  Created by yongle on 2018/12/22.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <objc/message.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Class newClass = objc_allocateClassPair(objc_getClass("NSObject"), "newClass", 0);
        objc_registerClassPair(newClass);
        id newObject = [[newClass alloc] init];
        NSLog(@"%@", newObject);
    }
    return 0;
}
