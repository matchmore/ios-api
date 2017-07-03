Pod::Spec.new do |s|
  s.name = 'Alps'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.version = '0.0.2'
  s.source = {:git => 'git@bitbucket.org:alps/alps-client-ios-api.git', :tag => s.version}
  s.authors = 'Alps Team'
  s.license = 'BSD 3-Clause License'
  s.homepage = 'http://alps.io'
  s.summary = 'Alps RESTful API in Swift'
  s.description = 'This is Alps pod descriptrion'
  s.source_files = 'Alps/Classes/Swaggers/**/*.swift'
  s.dependency 'Alamofire', '~> 4.0'
end
