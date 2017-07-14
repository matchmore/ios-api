Pod::Spec.new do |s|
  s.name = 'ALPS'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.version = '0.0.1'
  s.source = {:git => 'git@bitbucket.org:alps/alps-client-ios-api.git', :tag => 'v0.0.1'}
  s.authors = 'ALPS Team'
  s.license = 'Apache License, Version 2.0'
  s.homepage = 'http://matchmore.io'
  s.summary = 'ALPS RESTful API'
  s.description = 'This is ALPS pod description'
  s.source_files = 'ALPS/Classes/Swaggers/**/*.swift'
  s.dependency 'Alamofire', '~> 4.0'
end
