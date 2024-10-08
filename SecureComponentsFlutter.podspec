Pod::Spec.new do |s|
  s.name             = 'SecureComponentsFlutter'
  s.version          = '1.6.6'
  s.license          = { :type => 'MIT' }
  s.summary          = 'Flutter build variant'
  s.homepage         = 'https://weavr-io'
  s.authors          = { 'Weavr' => 'info@weavr.com' }
  s.platform         = :ios
  s.source 	     = { :git => 'https://github.com/weavr-io/secure-components-flutter-ios', :tag => s.version.to_s }
  s.requires_arc     = true
  s.ios.deployment_target    = '13.0'
  s.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited)',
    'LIBRARY_SEARCH_PATHS' => '$(SDKROOT)/usr/lib/swift', 
}

  s.default_subspec = 'Core'

  s.subspec 'Core' do |sp|
    sp.vendored_frameworks = 'WeavrComponents.xcframework' 
  end

end