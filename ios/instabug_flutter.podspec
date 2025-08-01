Pod::Spec.new do |s|
  s.name              = 'instabug_flutter'
  s.version           = '15.0.2'
  s.summary           = 'Flutter plugin for integrating the Instabug SDK.'
  s.author            = 'Instabug'
  s.homepage          = 'https://www.instabug.com/platforms/flutter'
  s.readme            = 'https://github.com/Instabug/Instabug-Flutter#readme'
  s.changelog         = 'https://pub.dev/packages/instabug_flutter/changelog'
  s.documentation_url = 'https://docs.instabug.com/docs/flutter-overview'
  s.license           = { :file => '../LICENSE' }

  s.source              = { :path => '.' }
  s.source_files        = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'

  s.ios.deployment_target = '12.0'
  s.pod_target_xcconfig   = { 
    'OTHER_LDFLAGS' => '-framework "Flutter" -framework "InstabugSDK"',
    'HEADER_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/Classes/Generated'
  }

  s.dependency 'Flutter'
  s.dependency 'Instabug', '15.1.1'
end

