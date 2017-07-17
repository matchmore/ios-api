Pod::Spec.new do |s|
  s.name = 'Alps'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.version = '0.0.3'
  s.source = {:git => 'git@bitbucket.org:alps/alps-client-ios-api.git', :tag => s.version}
  s.authors = 'Alps Team'
  s.license = 'Apache License, Version 2.0'
  s.homepage = 'http://matchmore.io'
  s.summary = 'Alps RESTful API'
  s.description = 'This is Alps pod description'
  s.source_files = 'Alps/Classes/Swaggers/**/*.swift'
  s.dependency 'Alamofire', '~> 4.0'
end
