//
//  ViewController.swift
//  MultithreadSample
//
//  Created by Kimisira on 2016/04/08.
//  Copyright © 2016年 Kimisira. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        let queue = NSOperationQueue()
//        let  ope = NormalOperation()
//        
//        queue.addOperation(ope)
//        ope.addObserver(self, forKeyPath: "ope1", options: .New, context: nil)
//        
//
//        
//        
        
//        queue.addOperationWithBlock{
//            NSLog("isMainThead:\(NSThread.isMainThread())")
//            NSLog("Thread:\(NSThread.currentThread())")
        
//        }
//        queue.addOperationWithBlock{
//            NSLog("isMainThead:\(NSThread.isMainThread())")
//            NSLog("Thread:\(NSThread.currentThread())")
//        }
//        queue.addOperationWithBlock{
//            NSLog("isMainThead:\(NSThread.isMainThread())")
//            NSLog("Thread:\(NSThread.currentThread())")
//        }
//
        let queue = NSOperationQueue()
        let ope1 = AsyncOperation()
        let ope2 = AsyncOperation()
        let ope3 = AsyncOperation()
        
        queue.addOperation(ope1)
        queue.addOperation(ope2)
        queue.addOperation(ope3)
        
        ope1.addObserver(self, forKeyPath: "finished", options: .New, context: nil)
        ope2.addObserver(self, forKeyPath: "finished", options: .New, context: nil)
        ope3.addObserver(self, forKeyPath: "finished", options: .New, context: nil)
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
        NSLog("Operation end")
        object?.removeObserver(self,forKeyPath: keyPath!)
    
    }
    
}

