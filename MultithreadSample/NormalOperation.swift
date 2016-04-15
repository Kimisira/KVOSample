//
//  NormalOperation.swift
//  MultithreadSample
//
//  Created by Kimisira on 2016/04/08.
//  Copyright © 2016年 Kimisira. All rights reserved.
//

import Foundation

class NormalOperation: NSOperation {
    override func main() {
        NSLog("isMainThead:\(NSThread.isMainThread())")
        NSLog("Thread:\(NSThread.currentThread())")
       
//        //処理の入れ子実行
        let queue = NSOperationQueue.currentQueue()!
        let ope1 = NestedOperation()
        let ope2 = NestedOperation()
        let ope3 = NestedOperation()

        queue.addOperation(ope1)
        queue.addOperation(ope2)
        queue.addOperation(ope3)
    }
}