
Pod::Spec.new do |s|
  s.name         = "react-native-grpc"
  s.version      = "1.0.0"
  s.summary      = "RNReactNativeGrpc"
  s.description  = <<-DESC
                  RNReactNativeGrpc
                   DESC
  s.homepage     = "http://www.beerwithai.com/"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "nitin.i.joy@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/issacnitin/react-native-grpc.git", :tag => "master" }
  s.source_files  = "ios/RNReactNativeGrpc/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  
