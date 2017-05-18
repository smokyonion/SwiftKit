Pod::Spec.new do |s|
  s.name         = "SwiftKit"
  s.version      = "0.1"
  s.summary      = "Swift Toolkits"
  s.description  = "Collections of Swift Foundation, Cocoa, UIKit extensions and utilities written in Swift."
  s.homepage     = "https://github.com/smokyonion/SwiftKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Vincent Wayne" => "mail@vwayne.com" }
  s.social_media_url   = ""
  s.ios.deployment_target = "10.0"
  s.osx.deployment_target = "10.12"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "10.0"
  s.source       = { :git => "https://github.com/smokyonion/SwiftKit.git" }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "Foundation"
end
