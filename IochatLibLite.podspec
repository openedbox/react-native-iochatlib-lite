require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|

  s.name           = 'IochatLibLite'
  s.version        = package['version'].gsub(/v|-beta/, '')
  s.summary        = package['description']
  s.author         = package['author']
  s.license        = package['license']
  s.homepage       = package['homepage']
  s.requires_arc = true
  s.source       = { :git => "https://github.com/openedbox/react-native-iochatlib-lite.git" }
  s.source_files = 'ios/IochatLibLite/*.{h,m}'
  s.public_header_files = ['ios/IochatLibLite/*.h']
  s.platform     = :ios, "9.0"
  s.static_framework = true  
  s.dependency 'React'
end
