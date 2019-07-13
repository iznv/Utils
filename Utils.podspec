Pod::Spec.new do |s|

  s.name = "Utils"
  s.version = "0.0.6"
  s.summary = "Extensions, base classes, etc."
  s.homepage = "https://github.com/iznv/Utils"

  s.license = {
  	:type => "MIT",
  	:file => "LICENSE"
  }

  s.author = { "Ivan Zinovyev" => "zinovyev-ivan@yandex.ru" }
  s.social_media_url = "https://www.instagram.com/zinovyev.apps"

  s.platform = :ios, "12.0"
  s.swift_version = "5.0"

  s.source = {
  	:git => "https://github.com/iznv/Utils.git",
  	:tag => "#{s.version}"
  }

  s.source_files  = "Utils/**/*.{swift}"

  s.framework  = "UIKit"

end
