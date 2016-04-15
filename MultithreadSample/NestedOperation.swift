//
//  NestedOperation.swift
//  MultithreadSample
//
//  Created by Kimisira on 2016/04/10.
//  Copyright © 2016年 Kimisira. All rights reserved.
//

import Foundation
class NestedOperation: NSOperation {
    override func main() {
        NSLog("Nested isMainThead:\(NSThread.isMainThread())")
        NSLog("Nested Thread:\(NSThread.currentThread())")
    }
}