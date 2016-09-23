# iPhone-Cellular-Network-Strength

## Synopsis

Simple utility to get cellular network strength of iPhone/iPad

## Preview
![iPhone-Cellular-Network-Strength](Previews/preview.gif)
## Usages
Check out the [demo app](https://github.com/jawadasif/iPhone-Cellular-Network-Strength/tree/master/DemoProject_Objective-C) for an example.

Add `JACellularNetworkStrength.h` and `JACellularNetworkStrength.m` to your project.

~~~objective-c
int strengthLevel = [[JACellularNetworkStrength sharedInstance]strengthLevel];
double rawStrength = [[JACellularNetworkStrength sharedInstance]rawStrength];
~~~

## Build status

[![Build Status](https://travis-ci.org/ogt/boxchareditor.png?branch=gh-pages)](https://travis-ci.org/jawadasif/iPhone-Cellular-Network-Strength)


License
---
iPhone-Cellular-Network-Strength is available under MIT license. See the LICENSE file for more info.
