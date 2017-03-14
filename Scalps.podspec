Pod::Spec.new do |s|
  s.name = 'Scalps'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.version = '0.0.2'
  s.source = {:git => 'git@bitbucket.org:scalps/scalps-client-ios-api.git', :tag => s.version}
  s.authors = 'Scalps Team'
  s.license = 'BSD 3-Clause License'
  s.homepage = 'http://scalps.io'
  s.summary = 'Scalps RESTful API in Swift'
  s.description = 'This is Scalps pod descriptrion'
  s.source_files = 'Scalps/Classes/Swaggers/**/*.swift'
  s.dependency 'Alamofire', '~> 4.0'
end
