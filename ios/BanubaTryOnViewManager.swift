//
//  BanubaTryOnViewManager.swift
//  localliveconsumermobile
//
//  Created by Shreyas Waghmare on 23/04/21.
//

import Foundation
import BanubaEffectPlayer
import BanubaSdk
@objc(BanubaTryOnViewiOSManager)
class BanubaTryOnViewiOSManager: RCTViewManager {
  override func view() -> UIView! {
    BanubaSdkManager.initialize(
        resourcePath: [Bundle.main.bundlePath + "/effects"],
        clientTokenString: banubaClientToken)
//    UInt32 seconds = 4
//    sleep(4)
//    DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
        // Put your code which should be executed with a delay here
    let newView = CameraViewController(frame:CGRect(x:0, y:0, width:500, height:400))
    newView.myLabel?.text = "Testing taylor swift"
//      let cam = CameraViewController()
      return newView;
//    }
    
//    let label = UILabel()
//    label.text = "Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter Swift Counter "
//    label.textAlignment = .center
//    return label
  }
}
