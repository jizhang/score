platform :ios, '9.0'
inhibit_all_warnings!

target 'Score' do
  pod 'Masonry', '1.1.0'
  pod 'HexColors', '4.0.0'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '9.0'
    end
  end
end
