//
//  BViewController.swift
//  ModuleB
//
//  Created by FumingLeo on 2025/11/12.
//

import UIKit
import FMModuleBase

class BViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 从base组件获取图片资源
        let image = UIImage(named: "3", in: .base, with: nil)
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        imageView.frame = view.bounds
        view.sendSubviewToBack(imageView)
    }

    @IBAction func back(_ sender: Any) {
        dismiss(animated: true)
    }

}
