#
# Be sure to run `pod lib lint ZZiruruAlert.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZZiruruAlert'
  s.version          = '0.1.0'
  s.summary          = 'A simple alert for open source library tutorial.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This is practice repository for open source library tutorial.
A simple alert with your custom title text, confirm text and completion action. 
                       DESC

  s.homepage         = 'https://github.com/jae57/ZZiruruAlert'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jae57' => 'jaeeee9@gmail.com' }
  s.source           = { :git => 'https://github.com/jae57/ZZiruruAlert.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '14.0'
  s.swift_versions = '5.0'

  s.source_files = 'ZZiruruAlert/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ZZiruruAlert' => ['ZZiruruAlert/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
