

Pod::Spec.new do |s|



  s.name         = "Animation1.spec"
  s.version      = "0.0.1"
  s.summary      = "A short description of Animation1.spec."


  s.homepage     = "http://github.com/fish-yan/Animation1.spec"


  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author             = { "fish-yan" => "757094197@qq.com" }

  s.source       = { :git => "http://github.com/fish-yan/Animation1.spec.git", :tag => "#{s.version}" }

  s.source_files  = "*.{h,m}"

end
