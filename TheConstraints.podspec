Pod::Spec.new do |s|
  s.name = 'TheConstraints'
  s.version = '1.1'
  s.summary = 'TheConstraints falicates the Auto Layouts'
  s.description = <<-DESC
  TheConstraints written on Swift 5.0 by levantAJ
                       DESC
  s.homepage = 'https://github.com/levantAJ/TheConstraints'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Tai Le' => 'sirlevantai@gmail.com' }
  s.source = { :git => 'https://github.com/levantAJ/TheConstraints.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.swift_version = '5.0'
  s.source_files = 'TheConstraints/TheConstraints/*.{swift}'
  
end