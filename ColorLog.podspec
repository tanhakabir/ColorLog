#
# Be sure to run `pod lib lint ColorLog.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ColorLog'
  s.version          = '0.1.1'
  s.summary          = 'Simple logging for Swift applications with colorful logs for visibility.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'All logs have associated colors, so that when a TEST log or ann ERROR log is printed, it is easily recognizable and filterable'

  s.homepage         = 'https://github.com/tanhakabir/ColorLog'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tanhakabir' => 'tanhakabir.ca@gmail.com' }
  s.source           = { :git => 'https://github.com/tanhakabir/ColorLog.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'
  s.swift_version = '3.0'

  s.source_files = 'ColorLog/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ColorLog' => ['ColorLog/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
