//
//  Log.swift
//  SwiftyLogger
//
//  Created by Tanha Kabir on 2018-10-07.
//  Copyright © 2018 Tanha Kabir. All rights reserved.
//  Copyright © 2016 Jon Mercer. All rights reserved.
//

import Foundation

// Possible levels of log messages to log
public enum LogLevel: Int {
    case DEBUG = 1
    case INFO = 2
    case WARN = 3
    case ERROR = 4
    case FATAL = 5
    case TEST = 6
}

public class Log {
    private init() {}
    
    // Specify which types of log messages to display. Default level is set to WARN, which means Log will print any log messages of type only WARN, ERROR, FATAL, and TEST. To print DEBUG and INFO logs, set the level to a lower value.
    public static var logLevel: LogLevel = LogLevel.DEBUG
    
    /**
     Used for when you're doing tests. Testing log should be removed before commiting
     
     How to use: Log.test("this is my message")
     Output: 13:51:38.487 TEST  ❇️❇️❇️❇️ in InputNameViewController.swift:addContainerToVC():77:: this is test
     
     To change the log level, visit the LogLevel enum
     
     - Parameter logMessage: The message to show
     - Parameter classPath: automatically generated based on the class that called this function
     - Parameter functionName: automatically generated based on the function that called this function
     - Parameter lineNumber: automatically generated based on the line that called this function
     */
    public static func test(_ logMessage: Any, classPath: String = #file, functionName: String = #function, lineNumber: Int = #line) {
        if logLevel.rawValue <= LogLevel.TEST.rawValue {
            let fileName = URLUtil.getNameFromStringPath(classPath)
            print("\(Date().timeStamp()) TEST  ❇️❇️❇️❇️ in \(fileName):\(functionName):\(lineNumber):: \(logMessage)")
        }
    }
    
    /**
     Used when something unexpected happen, such as going out of bounds in an array. Errors are typically guarded for.
     
     How to use: Log.error("this is error")
     Output: 13:51:38.487 ERROR 🛑🛑🛑🛑 in InputNameViewController.swift:addContainerToVC():76:: this is error
     
     To change the log level, visit the LogLevel enum
     
     - Parameter logMessage: The message to show
     - Parameter classPath: automatically generated based on the class that called this function
     - Parameter functionName: automatically generated based on the function that called this function
     - Parameter lineNumber: automatically generated based on the line that called this function
     */
    public static func error(_ logMessage: Any, classPath: String = #file, functionName: String = #function, lineNumber: Int = #line) {
        if logLevel.rawValue <= LogLevel.ERROR.rawValue {
            let fileName = URLUtil.getNameFromStringPath(classPath)
            print("\(Date().timeStamp()) ERROR 🛑🛑🛑🛑 in \(fileName):\(functionName):\(lineNumber):: \(logMessage)")
        }
    }
    
    /**
     Used when something catastrophic just happened. Like app about to crash, app state is inconsistent, or possible data corruption.
     
     How to use: Log.error("this is error")
     Output: 13:51:38.487 FATAL 🔥🔥🔥🔥 in InputNameViewController.swift:addContainerToVC():76:: data in corrupted state!
     
     To change the log level, visit the LogLevel enum
     
     - Parameter logMessage: The message to show
     - Parameter classPath: automatically generated based on the class that called this function
     - Parameter functionName: automatically generated based on the function that called this function
     - Parameter lineNumber: automatically generated based on the line that called this function
     */
    public static func fatal(_ logMessage: Any, classPath: String = #file, functionName: String = #function, lineNumber: Int = #line) {
        if logLevel.rawValue <= LogLevel.ERROR.rawValue {
            let fileName = URLUtil.getNameFromStringPath(classPath)
            print("\(Date().timeStamp()) FATAL 🔥🔥🔥🔥 in \(fileName):\(functionName):\(lineNumber):: \(logMessage)")
        }
    }
    
    /**
     Used when something went wrong, but the app can still function.
     
     How to use: Log.warn("this is warn")
     Output: 13:51:38.487 WARN  ⚠️⚠️⚠️⚠️ in InputNameViewController.swift:addContainerToVC():75:: this is warn
     
     To change the log level, visit the LogLevel enum
     
     - Parameter logMessage: The message to show
     - Parameter classPath: automatically generated based on the class that called this function
     - Parameter functionName: automatically generated based on the function that called this function
     - Parameter lineNumber: automatically generated based on the line that called this function
     */
    public static func warn(_ logMessage: Any, classPath: String = #file, functionName: String = #function, lineNumber: Int = #line) {
        if logLevel.rawValue <= LogLevel.WARN.rawValue {
            let fileName = URLUtil.getNameFromStringPath(classPath)
            print("\(Date().timeStamp()) WARN  ⚠️⚠️⚠️⚠️ in \(fileName):\(functionName):\(lineNumber):: \(logMessage)")
        }
    }
    
    /**
     Used when you want to show information like username or question asked.
     
     How to use: Log.info("this is info")
     Output: 13:51:38.486 INFO  ℹ️ℹ️ℹ️ℹ️ in InputNameViewController.swift:addContainerToVC():74:: this is info
     
     To change the log level, visit the LogLevel enum
     
     - Parameter logMessage: The message to show
     - Parameter classPath: automatically generated based on the class that called this function
     - Parameter functionName: automatically generated based on the function that called this function
     - Parameter lineNumber: automatically generated based on the line that called this function
     */
    public static func info(_ logMessage: Any, classPath: String = #file, functionName: String = #function, lineNumber: Int = #line) {
        if logLevel.rawValue <= LogLevel.INFO.rawValue {
            let fileName = URLUtil.getNameFromStringPath(classPath)
            print("\(Date().timeStamp()) INFO  ℹ️ℹ️ℹ️ℹ️ in \(fileName):\(functionName):\(lineNumber):: \(logMessage)")
        }
    }
    
    /**
     Used for when you're rebugging and you want to follow what's happening.
     
     How to use: Log.debug("this is debug")
     Output: 13:51:38.485 DEBUG 👾👾👾👾 in InputNameViewController.swift:addContainerToVC():73:: this is debug
     
     To change the log level, visit the LogLevel enum
     
     - Parameter logMessage: The message to show
     - Parameter classPath: automatically generated based on the class that called this function
     - Parameter functionName: automatically generated based on the function that called this function
     - Parameter lineNumber: automatically generated based on the line that called this function
     */
    public static func debug(_ logMessage: Any, classPath: String = #file, functionName: String = #function, lineNumber: Int = #line) {
        if logLevel.rawValue <= LogLevel.DEBUG.rawValue {
            let fileName = URLUtil.getNameFromStringPath(classPath)
            print("\(Date().timeStamp()) DEBUG 👾👾👾👾 in \(fileName):\(functionName):\(lineNumber):: \(logMessage)")
        }
    }
    
    
}

// MARK:- Helpers for Log class
fileprivate struct URLUtil {
    static func getNameFromStringPath(_ stringPath: String) -> String {
        //URL sees that "+" is a " "
        let stringPath = stringPath.replacingOccurrences(of: " ", with: "+")
        let url = URL(string: stringPath)
        return url!.lastPathComponent
    }
    
    static func getNameFromURL(_ url: URL) -> String {
        return url.lastPathComponent
    }
}

extension Date {
    fileprivate func timeStamp() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss.SSS"
        return formatter.string(from: self)
    }
}
