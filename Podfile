# Uncomment the next line to define a global platform for your project
platform :osx, '9.0'

target 'App' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  
  # ignore all warnings from all pods
  inhibit_all_warnings!

  # Pods for Moment App
  
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CLANG_WARN_DOCUMENTATION_COMMENTS'] = 'NO'
        end
    end
end
