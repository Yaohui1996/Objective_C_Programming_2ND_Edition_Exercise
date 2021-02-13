//
//  main.m
//  ImageFetch
//
//  Created by YaohuiLi on 2021/1/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL* url = [NSURL URLWithString:@"https://w.wallhaven.cc/full/2k/wallhaven-2kp12m.jpg"];
        NSURLRequest* request = [NSURLRequest requestWithURL:url];
        NSError* error = nil;
        NSData* data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
        if (!data) {
            NSLog(@"detch failed: %@",[error localizedDescription]);
            return 1;
        }
        NSLog(@"The file is %lu bytes",(unsigned long)[data length]);
        BOOL written = [data writeToFile:@"/Users/yaohui/Desktop/hhh.jpg" options:NSDataWritingAtomic error:&error];
        if (!written) {
            NSLog(@"write failed: %@",[error localizedDescription]);
            return 1;
        }
        NSLog(@"Success!");
        
        //读取文件
        NSData* readData = [NSData dataWithContentsOfFile:@"/Users/yaohui/Desktop/hhh.jpg"];
        NSLog(@"The file read from the disk has %lu bytes",(unsigned long)[readData length]);
        
        
    }
    return 0;
}
