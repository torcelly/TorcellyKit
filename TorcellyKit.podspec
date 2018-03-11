Pod::Spec.new do |s|
  s.name         = "TorcellyKit"
  s.version      = "0.0.1"
  s.summary      = "Useful classes and categories used to develop my apps faster."
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.description  = <<-DESC
			Useful classes and categories used to develop
			my apps faster.
                  DESC

  s.homepage         = "https://github.com/torcelly/TorcellyKit"
  # s.screenshots    = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.author           = { "Fernando Torcelly" => "fernando@torcelly.com" }
  s.social_media_url = "http://twitter.com/torcelly"
  s.source           = { :git => "https://github.com/torcelly/TorcellyKit.git", :tag => "#{s.version}" }

  s.platform         = :ios
  s.requires_arc     = true

  s.source_files     = 'TorcellyKit/**/*.swift'
  s.frameworks       = 'UIKit'

  s.ios.deployment_target = '8.0'

end
