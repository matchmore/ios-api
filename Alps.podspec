Pod::Spec.new do |s|
  s.name = 'Alps'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.version = '0.5.1'
  s.source = {:git => 'https://github.com/MatchMore/alps-ios-api.git'}
  s.authors = 'Matchmore Alps SDK Team'
  s.homepage = 'http://matchmore.io'
  s.summary = 'Matchmore Alps RESTful API'
  s.description = 'This is Alps pod description'
  s.source_files = 'Alps/Classes/Swaggers/**/*.swift'
  s.dependency 'Alamofire', '~> 4.0'
end
