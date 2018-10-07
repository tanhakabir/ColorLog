# ColorLog

[![Version](https://img.shields.io/cocoapods/v/ColorLog.svg?style=flat)](https://cocoapods.org/pods/ColorLog)
[![License](https://img.shields.io/cocoapods/l/ColorLog.svg?style=flat)](https://cocoapods.org/pods/ColorLog)
[![Platform](https://img.shields.io/cocoapods/p/ColorLog.svg?style=flat)](https://cocoapods.org/pods/ColorLog)

## Getting Started

ColorLog is avaliable with [CocoaPods](https://cocoapods.org). To use CocoaPods in your project,
navigate to your project using terminal and enter the following commands:

If you have never used any Pods in your project yet: (skip this if your already have a `Podfile`):
``` 
pod init 
```

Now add ColorLog using your favourite command line editor. Add the following line into your `Podfile` under the `target [YOUR PROJECT NAME]`

``` 
pod 'ColorLog'
```

Finally run in terminal:

``` 
pod install
```

## How to Use

Anywhere in your project if you would like to debug and print use:
``` 
Log.test("this is a test") 
```

Which will print in the following format:
```
13:51:38.487 TEST  ❇️❇️❇️❇️ in ViewController.swift:viewDidLoad():28:: this is a test
```

It can be used to print non String as well
``` 
Log.test(UIView()) 
```

Output:
```
14:20:00.313 TEST  ❇️❇️❇️❇️ in ViewController.swift:viewDidLoad():28:: Optional(<UITableView: 0x7fdbf4058600; frame = (0 20; 375 647); clipsToBounds = YES; autoresize = RM+BM; gestureRecognizers = <NSArray: 0x7fdbf1f60f20>; layer = <CALayer: 0x7fdbf307f7d0>; contentOffset: {0, 0}; contentSize: {375, 19920}; adjustedContentInset: {0, 0, 0, 0}>)
```

**NOTE: Swift by default requires every file you use this framework in to have be be imported. To bypass this, add the following to your `AppDelegate.swift` to make ColorLog globally available in your project.**

```swift 
@_exported import ColorLog
``` 
at the top of your `AppDelegate.swift`

### Types of Logs

All of the logs printed are color/emoji-coded. Aka recognizable by emoji/color.

1. Debug: `DEBUG 🐝🐝🐝🐝`
2. Info: `INFO  🖤🖤🖤🖤`
3. Warn: `WARN  ⚠️⚠️⚠️⚠️`
4. Error: `ERROR 🛑🛑🛑🛑`
5. Test: `TEST  ❇️❇️❇️❇️`
6. Monitor: `MONITOR 🔥🔥🔥🔥`

**By default, debug and info logs are silenced** To change this, set the `logLevel` to be either `.DEBUG`  or `.INFO` (no debugs, just info logs)

## Contributions

Feel free to submit any issues for any bugs or make any improvements on the basic [Log](ColorLog/Classes/Log.swift) file. 

## License

ColorLog is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
