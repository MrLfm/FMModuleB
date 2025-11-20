//
//  FMModuleB.swift
//  FMModuleB
//
//  Created by FumingLeo on 2025/11/12.
//

import Foundation
import FMModuleCenter

@objc public class FMModuleB: NSObject, @preconcurrency FMModuleCenterProtocol {
    // 注册组件服务
    @MainActor @objc public static func registerService() {
        FMModuleCenter.shared.register(FMModuleBServiceProtocol.self, serviceImpl: FMModuleBServiceImpl())
        print("✅ 已注册服务：\(FMModuleBServiceProtocol.self)")
    }
}

// 组件对外提供的服务
public class FMModuleBServiceImpl:  FMModuleBServiceProtocol {
    public init() {}
    
    public func getBViewController() -> UIViewController {
        // 找到xib文件所在bundle
        let bundle = Bundle(for: BViewController.self)
        let nibBundleURL = bundle.url(forResource: "FMModuleBBundle", withExtension: "bundle")
        let nibBundle = nibBundleURL.flatMap { Bundle(url: $0) }

        // 注意 nibName 不要写 NSStringFromClass，否则会变成 "ModuleB.BViewController"
        return BViewController(nibName: "BViewController", bundle: nibBundle)
    }
}
