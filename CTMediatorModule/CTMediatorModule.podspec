
Pod::Spec.new do |spec|
  spec.name         = "CTMediatorModule"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of CTMediatorModule."
  spec.description  = "测试组件化"
  spec.homepage     = "https://github.com/bigBingC/CTMediatorModule"
  spec.license      = "MIT"
  spec.author       = { "cuibing" => "cuibing@dankegongyu.com" }
  spec.source       = { :git => "https://github.com/bigBingC/CTMediatorModule.git", :tag => "#{spec.version}" }
  spec.source_files = "Class", "Class/**/*.{h,m}"
  spec.exclude_files= "Class/Exclude"
  # spec.dependency "JSONKit", "~> 1.4"
end
