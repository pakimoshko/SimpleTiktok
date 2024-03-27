# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'TikTok' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

pod 'SnapKit'
pod 'BMPlayer'  

  # Pods for TikTok

  target 'TikTokTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'TikTokUITests' do
    # Pods for testing
  end

end


post_install do |installer|
    installer.generated_projects.each do |project|
        project.targets.each do |target|
            target.build_configurations.each do |config|
                config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '17.4'
            end
        end
    end
end


