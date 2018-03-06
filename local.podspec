#
#  Be sure to run `pod spec lint local.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name             = 'local'
  s.version          = '0.0.9'
  s.summary          = 'Say Hello World'
 
  s.description      = <<-DESC
This fantastic view changes its color gradually makes your app look fantastic!
                       DESC
 
  s.homepage         = 'https://github.com/lemonnm/MyPod'
  s.license          = "MIT"
  s.author           = "Matthieu Lemonnier"
  s.source           = { :git => 'https://github.com/lemonnm/MyPod.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '9.0'
  s.source_files  = 'ElemPod/**/*.{h,m}'
  s.public_header_files = 'ElemPod/Classes/MyHeaders.h'
 
 
 s.subspec 'MCM' do |ss|
     ss.source_files = 'ElemPod/Classes/MCM/*.{h,m}'
     ss.public_header_files = 'ElemPod/Classes/MCM/HelloPod.h'
 end
 

  s.dependency 'AFNetworking', '3.2.0'
end
