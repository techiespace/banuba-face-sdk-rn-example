//
//  CameraViewController.swift
//  localliveconsumermobile
//
//  Created by Shreyas Waghmare on 25/04/21.
//

import UIKit
import BanubaSdk

class CameraViewController: UIView {
  @IBOutlet weak var effectView: EffectPlayerView!
  private var sdkManager = BanubaSdkManager()
  private let config = EffectPlayerConfiguration(renderMode: .video)
  public var myLabel: UILabel?
      override init(frame: CGRect) {

          super.init(frame:frame)
        weak var effectView: EffectPlayerView!

        sdkManager.setup(configuration: config)
        setUpRenderSize()
        effectView?.effectPlayer = sdkManager.effectPlayer
        sleep(20)
        print("Shreyas effectView is: ", effectView)
          myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 100))
          addSubview(myLabel!)
      }

      required init?(coder aDecoder: NSCoder) {
          super.init(coder: aDecoder)
      }
    
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        effectView?.layoutIfNeeded()
//        sdkManager.setup(configuration: config)
//        setUpRenderSize()
//        effectView?.effectPlayer = sdkManager.effectPlayer
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        sdkManager.input.startCamera()
//        _ = sdkManager.loadEffect("UnluckyWitch", synchronous: true)
//        sdkManager.startEffectPlayer()
//    }
//
//    deinit {
//        sdkManager.destroyEffectPlayer()
//    }
//
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        sdkManager.stopEffectPlayer()
//        sdkManager.removeRenderTarget()
//        coordinator.animateAlongsideTransition(in: effectView, animation: { (UIViewControllerTransitionCoordinatorContext) in
//            self.sdkManager.autoRotationEnabled = true
//            self.setUpRenderSize()
//        }, completion: nil)
//    }
    
    private func setUpRenderTarget() {
//        guard let effectView = self.effectView.layer as? CAEAGLLayer else { return }
//        sdkManager.setRenderTarget(layer: effectView, playerConfiguration: nil)
//        sdkManager.startEffectPlayer()
    }
    
    private func setUpRenderSize() {
        switch UIApplication.shared.statusBarOrientation {
        case .portrait:
            config.orientation = .deg90
            config.renderSize = CGSize(width: 720, height: 1280)
            sdkManager.autoRotationEnabled = false
            setUpRenderTarget()
        case .portraitUpsideDown:
            config.orientation = .deg270
            config.renderSize = CGSize(width: 720, height: 1280)
            setUpRenderTarget()
        case .landscapeLeft:
            config.orientation = .deg180
            config.renderSize = CGSize(width: 1280, height: 720)
            setUpRenderTarget()
        case .landscapeRight:
            config.orientation = .deg0
            config.renderSize = CGSize(width: 1280, height: 720)
            setUpRenderTarget()
        default:
            setUpRenderTarget()
        }
    }
//
//    @IBAction func closeCamera(_ sender: UIBarButtonItem) {
//        dismiss(animated: true, completion: nil)
//    }
}
