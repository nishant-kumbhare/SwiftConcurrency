import UIKit
import Dispatch
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
func syncExecution() {
    let concurrentQueue = DispatchQueue(label:"com.concurrent",attributes:.concurrent)
    concurrentQueue.sync{
        for value in 0...5 {
            print("value:- \(value)")
        }
    }
    concurrentQueue.sync {
        for value in 6...10 {
            print("value:- \(value)")
        }
    }
}

func asyncExecution() {
    let concurrentQueue = DispatchQueue(label:"com.concurrent",attributes:.concurrent)
    concurrentQueue.async{
        for value in 0...5 {
            print("value:- \(value)")
        }
    }
    concurrentQueue.async {
        for value in 6...10 {
            print("value:- \(value)")
        }
    }
}

syncExecution()
print("=====")
asyncExecution()
