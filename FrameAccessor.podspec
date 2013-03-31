Pod::Spec.new do |s|
  s.name     = 'FrameAccessor'
  s.version  = '1.0.1'
  s.license  = 'MIT'
  s.summary  = 'Easy access to view\'s frame.'
  s.homepage = 'https://github.com/holgersindbaek'
  s.description = %{
    You can access x, y, width, height, origin or size like properties.
    Like this:
    view.x = 15;
    view.width = 167;
  }
  s.author   = { "holgersindbaek" => "holgersindbaek@gmail.com" }
  s.source   = { :git => 'https://github.com/holgersindbaek/FrameAccessor.git', :tag => '1.0.1'}
  s.platform = :osx
  s.source_files = 'UIView+FrameAccessor.{h,m}'
end