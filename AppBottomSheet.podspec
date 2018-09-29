#
# Be sure to run `pod lib lint AppBottomSheet.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AppBottomSheet'
  s.version          = '1.0'
  s.swift_version    = '4.0'
  s.summary          = 'A Sweet for Bottom Action Sheet. Plugit to play'
  s.homepage         = 'https://github.com/karthikAdaptavant/AppBottomSheet.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'karthikAdaptavant' => 'karthik.samy@a-cti.com' }
  s.source           = { :git => 'https://github.com/karthikAdaptavant/BottomSheet.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'AppBottomSheet/Classes/**/*'
end

