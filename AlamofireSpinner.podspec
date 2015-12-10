#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name                    = "AlamofireSpinner"
  s.version                 = "0.1.0"
  s.summary                 = "Tiny Alamofire plugin that starts and stops the network activity indicator."
  s.homepage                = "https://github.com/dclelland/AlamofireSpinner"
  s.license                 = { :type => 'MIT' }
  s.author                  = { "Daniel Clelland" => "daniel.clelland@gmail.com" }
  s.source                  = { :git => "https://github.com/dclelland/AlamofireSpinner.git", :tag => "0.1.0" }
  s.platform                = :ios, '8.0'
  s.ios.deployment_target   = '8.0'
  s.ios.source_files        = 'AlamofireSpinner.swift'
  s.requires_arc            = true
  
  s.dependency 'Alamofire', '~> 3.1'
end
