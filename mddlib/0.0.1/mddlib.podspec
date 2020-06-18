#
# Be sure to run `pod lib lint mddlib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'mddlib'
  s.version          = '0.0.1'
  s.summary          = 'decoder of mddlib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/andyweiqiu/mddlib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'andyweiqiu' => 'qiuwei@yy.com' }
  s.source           = { :git => 'https://github.com/andyweiqiu/mddlib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'mddlib/Classes/**/*'

  #s.preserve_paths = 'mddlib/third_lib/*.framework'

  s.vendored_frameworks = 'mddlib/third_lib/openmp.framework','mddlib/third_lib/mddforward.framework'

  s.frameworks = 'Accelerate'

  s.public_header_files = 'mddlib/Classes/Worker.h','mddlib/Classes/DecodeResult.h'

  s.pod_target_xcconfig = {"FRAMEWORK_SEARCH_PATHS" => "$(inherited) '$(PODS_TARGET_SRCROOT)/mddlib/third_lib'" ,'VALID_ARCHS[sdk=iphonesimulator*]' => ''}

  # s.resource_bundles = {
  #   'mddlib' => ['mddlib/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
