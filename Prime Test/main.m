//
//  main.m
//  Prime Test
//
//  Created by Robert Baghai on 04/01/16.
//  Copyright © 2015 Robert Baghai. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL prime (int num);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int low = 2, n, primeCount = 0, j, k;
        NSLog(@"\nPlease enter a number higher than 2 for a list of twin primes\n");
        scanf("%d", &n);
        NSLog(@"Twin Primes between %d and %d:\n",low,n);
        for (int i = low; i <= n; i++) {
            j = i - 1;                  //creating two int's whose difference is 2
            k = i + 1;
            if (prime(j) && prime(k)) { //if 'j' and 'k' are prime.. print them out as twin primes
                NSLog(@"%2d %2d\n", j, k);
                primeCount++;
            }
        }
        NSLog(@"Number of twin primes is %d\n", primeCount);
        return 0;
    }
}

BOOL prime (int number) {
    if (number == 1)     return NO;  //exclude 1
    if (number % 2 == 0) return NO;  //exclude all even int's
    if (number == 3 || number == 5 || number == 7) return YES; //include 3, 5, 7 as prime number
    if (number % 3 == 0 || number % 5 == 0 || number % 7 == 0) return NO;  //exclude numbers divisible by 3, 5, 7
    return YES; //the number is a prime number
}
