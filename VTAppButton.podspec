Pod::Spec.new do |s|

  s.name         = 'VTAppButton'
  s.version      = '1.0.0'
  s.summary      = 'UIButton looking like an app icon.'
  s.description  = <<-DESC
                   `UIButton` looking like an app icon.
                   DESC
  s.homepage     = 'https://github.com/vtourraine/VTAppButton'

  s.license      = 'MIT'

  s.author       = { 'Vincent Tourraine' => 'me@vtourraine.net' }
  s.social_media_url = 'https://twitter.com/vtourraine'

  s.platform     = :ios, '13.0'

  s.source       = { :git => 'https://github.com/vtourraine/VTAppButton.git', :tag => '1.0.0' }
  s.source_files = 'Sources', 'Sources/**/*.{swift}'

  s.frameworks = 'UIKit', 'QuartzCore'
  s.requires_arc = true

end
