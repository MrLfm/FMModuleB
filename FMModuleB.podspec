Pod::Spec.new do |s|
  s.name             = 'FMModuleB'
  s.version          = '0.0.1'
  s.summary          = '组件B'
  
  s.homepage         = 'https://github.com/MrLfm/FMModuleB'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MrLfm' => 'lfm_1992@126.com' }
  s.source           = { :git => 'https://github.com/MrLfm/FMModuleB.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'

  s.source_files = 'FMModuleB/Classes/**/*'
  
  # 定义bundle文件
  s.resource_bundles = {
    'FMModuleBBundle' => ['FMModuleB/Classes/**/*.{xib,nib}'],
  }
  
  # 依赖组件
  s.dependency 'FMModuleBase'
  s.dependency 'FMModuleCenter'
end
