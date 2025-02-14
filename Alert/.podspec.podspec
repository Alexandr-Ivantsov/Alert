Pod::Spec.new do |s|
  s.name         = ''
  s.version      = '0.1.0'
  s.homepage     = 'https://github.com/Alexandr-Ivantsov/Alert'
  s.author       = { 'Alexandr Ivantsov' => 'alexandrivantsov.ios@gmail.com' }
  s.source       = { :git => 'https://github.com/Alexandr-Ivantsov/Alert.git', :tag => s.version.to_s }
  s.platform     = :ios, '15.0'
  s.source_files  = 'Source/**/*.{h,m,swift}'
end