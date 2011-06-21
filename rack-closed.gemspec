Gem::Specification.new do |s|
  s.name        = "rack-closed"
  s.version     = "0.0.1"
  s.authors     = ["Phil Lee"]
  s.email       = ["asmega@ph-lee.com"]
  s.homepage    = "https://github.com/asmega/rack-closed"
  s.summary     = "For websites that are open 9 till 5"
  s.description = "Rack middleware for website open 9 till 5"
 
  s.required_rubygems_version = ">= 1.3.6"
 
  s.files        = Dir.glob("{lib}/**/*") + %w(LICENSE README.textile)
  s.require_path = 'lib'
end
