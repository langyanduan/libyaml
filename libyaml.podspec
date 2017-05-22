#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|
  spec.name             = 'libyaml'
  spec.version          = '0.1.7'
  spec.summary          = 'LibYAML - A C library for parsing and emitting YAML.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  spec.description      = <<-DESC
                       LibYAML is a YAML 1.1 parser and emitter written in C.
                       DESC

  spec.homepage         = 'http://pyyaml.org/wiki/LibYAML'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'Kirill Simonov' => 'xi@resolvent.net' }
  spec.source           = { :git => 'https://github.com/yaml/libyaml.git', :tag => spec.version.to_s }

  spec.ios.deployment_target = '8.0'
  spec.module_name = 'libyaml'
 
  spec.public_header_files = 'include/yaml.h'
  spec.source_files = 'src/*.{h,c}', 'include/*.h'
  spec.xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/libyaml/include"' }
  spec.compiler_flags = '-DHAVE_CONFIG_H'
end