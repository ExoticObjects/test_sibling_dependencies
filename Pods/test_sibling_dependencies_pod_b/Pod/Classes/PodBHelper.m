//
// Created by Jim Kremens on 3/3/16.
//

#import "PodBHelper.h"
//#import <test_sibling_dependencies_pod_a/PodAHelper.h>
//#import <tes

@implementation PodBHelper {

}

- (void)helperMethod {

    PodAHelper * helper = [[PodAHelper alloc] init];
}

@end