Pod::Spec.new do |s|
  s.name         = "protobuf-objc"
  s.version      = "1.0.0"
  s.summary      = "Protocol Buffers 2.5.0"
  s.homepage     = "https://code.google.com/p/protobuf"
  s.license      = 'Apache'
  s.authors      = { "Bobby Schulz" => "bobby@cueup.com", "Aaron Sarazan" => "aaron@levelmoney.com" }
  s.source       = { :git => "https://github.com/asarazan/protobuf-objc.git", :tag => "1.0.0" }
  s.platform     = :ios, '6.0'
  s.source_files = "src/runtime/Classes/**/*"
  s.preserve_paths= "src/compiler", "autogen.sh", "configure.ac", "Makefile.am"
  s.requires_arc = false
end