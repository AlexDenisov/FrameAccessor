Pod::Spec.new do |s|
  s.name         = "FrameAccessor"
  s.version      = "1.0.0"
  s.platform     = :ios, '4.3'
  s.license      = 'LICENSE'
  s.summary      = "This version of frameaccessor also works with OSX."
  s.homepage     = "http://EXAMPLE/FrameAccessor"
  s.requires_arc = true
  s.author       = { "holgersindbaek" => "holgersindbaek@gmail.com" }
  s.source       = { :git => 'https://github.com/holgersindbaek/FrameAccessor.git', :tag => s.version.to_s }
  s.source_files = '*.{h,m}'
  s.prefix_header_contents = '#import <UIView+FrameAccessor.h>'
end
