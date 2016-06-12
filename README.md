# Tumboon-Server

Tumboon sever implementation in Swift

## Requirement
(currently support Mac OS X only)
* xcode & `xcodebuild`
* carthage

## Installation
* Run `carthage update --platform mac` to trigger carthage so dependencies will get fetch & build

## Build
* Run xcode with `cmd+r` and selecting tumboon as Target
* Check whether `http://localhost:8888` is working with browser of your choice and see "yey!" on the screen

## dependencies
* [Swifter](https://github.com/httpswift/swifter) - Basic Server implementation
* [Alamofire](https://github.com/Alamofire/Alamofire) - Networking
