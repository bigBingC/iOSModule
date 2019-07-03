Pod::Spec.new do |spec|

  spec.name         = "BeeHiveModule"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of BeeHiveModule."
  spec.description  = "BeeHive"
  spec.homepage     = "https://github.com/bigBingC/BeeHiveModule"
  spec.license      = "MIT"
  spec.author       = { "cuibing" => "cuibing@dankegongyu.com" }
  spec.source       = { :git => "https://github.com/bigBingC/BeeHiveModule.git", :tag => "#{spec.version}" }
  spec.source_files = "Class", "Class/**/*.{h,m}"
  spec.exclude_files= "Class/Exclude"
  # spec.dependency "JSONKit", "~> 1.4"

end
