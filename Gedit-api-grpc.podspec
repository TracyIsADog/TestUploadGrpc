
Pod::Spec.new do |s|


  s.name         = "Gedit-api-grpc"
  s.version      = "1.0.6"
  s.summary      = "Gedit-api-grpc"
  s.platform     = :ios
  s.description  = <<-DESC 
                          1231313 是一个用于测试上传cocoapods的demo
                     DESC
 s.homepage     = "https://github.com/TracyIsADog/TestUploadGrpc"
  s.license      = { :type => "Apache-2.0", :file => "LICENSE" }
  s.author             = { "TracyIsADog" => "303912095@qq.com" }
  s.source       = { :git => "https://github.com/TracyIsADog/TestUploadGrpc.git", :tag => "#{s.version}" }
  s.source_files  = "HelloWorld/Pods/*"
end