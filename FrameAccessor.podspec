Pod::Spec.new do |s|
  s.name         = "FrameAccessor"
  s.version      = "0.1"
  s.platform     = :osx, '10.6'
  s.license      = 'MIT'
  s.summary      = "This version of frameaccessor also works with OSX."
  s.homepage     = "http://EXAMPLE/FrameAccessor"
  s.requires_arc = true
  s.author       = { "holgersindbaek" => "holgersindbaek@gmail.com" }
  s.source       = { :git => 'https://github.com/holgersindbaek/FrameAccessor.git', :tag => s.version.to_s }
  s.source_files = '*.{h,m}'
  s.prefix_header_contents = '#import <UIView+FrameAccessor.h>'
end
