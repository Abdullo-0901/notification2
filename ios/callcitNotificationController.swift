//
//  callcitNotificationController.swift
//  notification2
//
//  Created by Abdulloh Olimov on 22/09/24.
//

import Foundation
import UIKit
import CallKit

class ViewController:UIViewController, CXProviderDelegate {
  
  let provider: CXProvider? = nil
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let update = CXCallUpdate()
        update.remoteHandle = CXHandle(type: .generic, value: "Abdulloh Olimov")
        
        if #available(iOS 14.0, *) {
            let config = CXProviderConfiguration(localizedName: "YourAppName")
            config.includesCallsInRecents = true
            config.supportsVideo = true
            config.iconTemplateImageData = UIImage(named: "yourAppIcon")?.pngData() // Optional icon
           let  provider = CXProvider(configuration: config)
            provider.setDelegate(self, queue: nil)
            
            let uuid = UUID()
            provider.reportNewIncomingCall(with: uuid, update: update, completion: { error in
                if let error = error {
                    print("Failed to report incoming call: \(error.localizedDescription)")
                }
            })
        } else {
            // Fallback for earlier versions
        }
    }
    
    func providerDidReset(_ provider: CXProvider) {
        // Handle any reset logic if needed
    }
    
    func provider(_ provider: CXProvider, perform action: CXAnswerCallAction) {
        // Handle answer call logic
        action.fulfill()
    }
    
    func provider(_ provider: CXProvider, perform action: CXEndCallAction) {
        // Handle end call logic
        action.fulfill() // or action.fail() depending on the situation
    }
}
