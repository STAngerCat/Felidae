#
# Be sure to run `pod lib lint Felidae.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Felidae'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Felidae.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/MapleYin/Felidae'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MapleYin' => 'i@maple.im' }
  s.source           = { :git => 'https://github.com/MapleYin/Felidae.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Felidae/Classes/**/*'
  
#  s.module_name = 'Felidae'

  s.framework = "UIKit"

end
