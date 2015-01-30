# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "capistrano-friday"
  spec.version       = '0.1.0'
  spec.authors       = ["Vladimir Kochnev"]
  spec.email         = ["hashtable@yandex.ru"]
  spec.summary       = %q{You better stab yourself if you deploy on friday!}
  spec.description   = %q{You better stab yourself if you deploy on friday!}
  spec.homepage      = "https://github.com/marshall-lee/capistrano-friday"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano', '~> 3.0'
  spec.add_dependency 'colorize'
end
