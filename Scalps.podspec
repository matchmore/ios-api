Pod::Spec.new do |s|
  s.name = 'Scalps'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.version = '0.0.1'
  s.source = {:git => 'https://scalps@bitbucket.org/scalps/ios-api.git', :tag => 'v0.0.1'}
  s.authors = 'Scalps Team'
  s.license = 'Apache License, Version 2.0'
  s.homepage = 'http://scalps.io'
  s.summary = 'Scalps RESTful API in Swift'
  s.description = 'This is Scalps pod descriptrion'
  s.source_files = 'Scalps/Classes/Swaggers/**/*.swift'
  s.dependency 'Alamofire', '~> 4.0'
end
