#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint speed_test.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'speed_test'
  s.version          = '1.0.0'
  s.summary          = 'A new Flutter plugin to speed test internet.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'https://github.com/zidhaanfa/speed_test'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Zidanfath' => 'zidanfath.code@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'speed_test_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
end