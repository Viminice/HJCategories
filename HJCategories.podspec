
Pod::Spec.new do |s|

  s.name         = "HJCategories"
  s.version      = "0.0.5"
  s.summary      = "常用分类"
  s.homepage     = "https://github.com/shusheng732/HJCategories"
  s.license      = "MIT"
  s.author       = { "Vimin" => "shusheng732@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/shusheng732/HJCategories.git", :tag => s.version }
  s.source_files = "HJCategories", "HJCategories/*.{h}", "HJCategories/**/*.{h,m}"
  s.requires_arc = true
  s.dependency "MJRefresh", "~> 3.1.12"

end
