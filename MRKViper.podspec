
Pod::Spec.new do |s|
	s.name         = "MRKViper"
	s.version      = "0.7.1"
	s.summary      = "MRKTrace library for VIPER development"
	s.description  = "MRKTrace library for VIPER development"
	s.homepage     = "https://github.com/mrktrace/MRKViper"
	# s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


	# ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

	s.license      = "MIT"

	# ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

	s.author             = { "MRKTrace" => "mrktrace@gmail.com" }
	s.social_media_url   = "http://twitter.com/OfficiaMRKTrace"

	# ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

	#s.platform     = :ios, "11.0"
	#s.swift_version = "4.0"

	# ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

	s.source       = { :git => "https://github.com/mrktrace/MRKViper.git", :tag => "0.7.1" }

	# ――― Sub specs ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

	s.subspec 'viper' do |v|
		v.source_files  = 	"mrkViper/src/**/*.swift"
	end
end
