#
# Be sure to run `pod lib lint LibIrmakFile.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LibIrmakFile'
  s.version          = '0.1.7'
  s.summary          = 'LibIrmakFile the description.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  'LibIrmakFile the longest description.'
                       DESC

  s.homepage         = 'https://github.com/irmakozonay'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'irmakozonay' => 'irmakoz@msn.com' }
  s.ios.vendored_frameworks = 'LibIrmakFile.framework'
  s.source           = { :http => 'https://github.com/irmakozonay/LibIrmakFile/raw/main/LibIrmakFile.zip' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.0'

  s.source_files = 'LibIrmakFile.zip'
#  s.exclude_files = 'LibIrmakFile/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LibIrmakFile' => ['LibIrmakFile/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
