#
#  Be sure to run `pod spec lint local.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name             = 'local'
  s.version          = '0.0.5'
  s.summary          = 'Say Hello World'
 
  s.description      = <<-DESC
This fantastic view changes its color gradually makes your app look fantastic!
                       DESC
 
  s.homepage         = 'https://github.com/lemonnm/MyPod'
  s.license          = "MIT"
  s.author           = "Matthieu Lemonnier"
  s.source           = { :git => 'https://github.com/lemonnm/MyPod.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '9.0'
  # s.source_files = 'FantasticView/FantasticView.swift'
  s.source_files  = 'ElemPod/Classes/**/*.{h,m}'
 
  s.public_header_files = "ElemPod/Classes/**/*.h"

end
