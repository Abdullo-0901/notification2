//
//  customNotification.swift
//  notification2
//
//  Created by Abdulloh Olimov on 21/09/24.
//

//import Foundation

//@objc(customNotification) class  customNotification:NSObject{
//  @objc static func requireMainQueueSetup() ->Bool { return true}
//  
//  @objc public func MyNotification(param:String){
//    print(param)
//  }
//}

import Foundation

@objc(customNotification) class customNotification: NSObject {
  @objc static func requireMainQueueSetup() -> Bool {
    return true
  }

  @objc public func MyNotification(_ param: String) {
    print(param + "Hello")
  }
}

