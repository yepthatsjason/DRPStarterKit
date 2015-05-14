#
# Be sure to run `pod lib lint DRPStarterKit.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "DRPStarterKit"
  s.version          = "1.0.0"
  s.summary          = "Collection of iOS classes to jumpstart development of new projects"
  s.description      = <<-DESC
                       This pod brings in a common classes that are generic and can be shared among
                       different iOS apps.
                       DESC
  s.homepage         = "https://github.com/yepthatsjason/DRPStarterKit"
  s.license          = 'MIT'
  s.author           = { "Jason Ederle" => "jason@funly.io" }
  s.source           = { :git => "https://github.com/yepthatsjason/DRPStarterKit.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'GoogleAnalytics-iOS-SDK'
  s.dependency 'APAddressBook'
  s.dependency 'ECPhoneNumberFormatter'
  s.dependency 'MBProgressHUD'
  s.dependency 'GPUImage'
  s.dependency 'APAddressBook'
  s.dependency 'SDWebImage'
  s.dependency 'AFNetworking'
  s.dependency 'DRPBase'

end
