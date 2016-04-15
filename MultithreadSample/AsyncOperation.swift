//
//  AsyncOperation.swift
//  MultithreadSample
//
//  Created by Kimisira on 2016/04/12.
//  Copyright © 2016年 Kimisira. All rights reserved.
//

import Foundation

//NSOperatioクラスの拡張
class AsyncOperation:NSOperation{
    
    override var  executing: Bool{
        get{ return _executing }
        set(newValue){
            //プロパティの値が変わることを通知
            willChangeValueForKey("executing")
            
            _executing = newValue
            
            //プロパティの値が変わったことを通知
            didChangeValueForKey("executing")
        }
    }
    private var _executing = false
    
    
    override var finished: Bool{
        get {return _finished }
        set(newValue){
            
            willChangeValueForKey("finished")
            
            _finished = newValue
            
            didChangeValueForKey("finished")
        }
    }
    private var _finished = false
    
    
    override var asynchronous: Bool{
        get{
            return true
        }
    }
    
    override func start() {
        //実行ちゅうを通知
        self.executing = true
        
        NSLog("isMainThead:\(NSThread.isMainThread())")
        NSLog("Thread:\(NSThread.currentThread())")
        
        self.executing = false
        self.finished = true
    }
    
    
    
    
    
    
    
    
}