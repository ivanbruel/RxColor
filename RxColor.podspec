#
# Be sure to run `pod lib lint RxColor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RxColor'
  s.version          = '1.0'
  s.summary          = 'RxSwift bindings for common UIColor setters'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
RxSwift bindings for common UIColor setters.
UIView (backgroundColor), UILabel (textColor) and UIButton (titleColor and tintColor+titleColor)
                       DESC

  s.homepage         = 'https://github.com/ivanbruel/RxColor'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ivan Bruel' => 'ivan.bruel@gmail.com' }
  s.source           = { :git => 'https://github.com/ivanbruel/RxColor.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ivanbruel'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RxColor/Classes/**/*'

  s.dependency 'RxSwift', '~> 2.6'
  s.dependency 'RxCocoa', '~> 2.6'
end
