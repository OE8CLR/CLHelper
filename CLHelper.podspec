Pod::Spec.new do |spec|

  spec.name             = 'CLHelper'
  spec.version          = '1.0'
  spec.license          = { :type => 'MIT' }
  spec.homepage         = 'https:/www.google.com/+ChristophLückler'
  spec.authors          = { 'Christoph Lückler' => 'oe8clr+development@gmail.com' }
  spec.summary          = 'Helper Classes for iOS / OS X development'
  spec.source           = { :git => 'https://github.com/OE8CLR/CLHelper.git', :tag => '1.0' }
  
  spec.platform    		= :ios, '5.0'
  spec.requires_arc     = true
  
  spec.source_files     	= 'CLHelper/Categories/*.{h,m}'
  
end