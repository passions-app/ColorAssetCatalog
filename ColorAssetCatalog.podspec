#
# Be sure to run `pod lib lint ColorAssetCatalog.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ColorAssetCatalog'
  s.version          = '1.2'
  s.swift_version    = '5.0'
  s.summary          = 'Adds iOS 14+ compatibility for named colors in asset catalogs.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  This Pod adds iOS 9+ compatibility for named colors in asset catalogs. It extends UIColor with a new optional initializer: `UIColor(asset:)` that works in the same way as `UIColor(named:)`.
                       DESC

  s.homepage         = 'https://github.com/samrayner/ColorAssetCatalog'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sam Rayner' => 'sam@samrayner.com' }
  s.source           = { :git => 'https://github.com/samrayner/ColorAssetCatalog.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/samrayner'

  s.ios.deployment_target = '14.0'

  s.source_files = 'ColorAssetCatalog/Classes/**/*'

  # s.resource_bundles = {
  #   'ColorAssetCatalog' => ['ColorAssetCatalog/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
