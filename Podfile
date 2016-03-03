
source 'https://github.com/CocoaPods/Specs.git'

# include source for a framework that I'm making. This should (I think) enable me to list it as a 
# dependency of pod b. 
# See https://github.com/ExoticObjects/test_sibling_dependencies_pod_b/blob/master/test_sibling_dependencies_pod_b.podspec
# for the dependency listing.
source 'https://github.com/ExoticObjects/test_sibling_dependencies_pod_a_framework.git'

platform :ios, '9.0'
use_frameworks!

def common_pods_for_target

  # point at repo of source code
  # pod 'test_sibling_dependencies_pod_a', :git => 'https://github.com/ExoticObjects/test_sibling_dependencies_pod_a.git'
  
  # point at dev pod
  # pod 'test_sibling_dependencies_pod_a', :path => '../test_sibling_dependencies_pod_a/'

  # point at framework made from dev pod
  # pod 'test_sibling_dependencies_pod_a_framework', :path => '../test_sibling_dependencies_pod_a_framework/'


  # point at framework on github. This framework can be accessed from the app delegate, but not from pod_b (below).
  pod 'test_sibling_dependencies_pod_a_framework', :git => 'https://github.com/ExoticObjects/test_sibling_dependencies_pod_a_framework.git'
  
  # local pod_b has a dependency on the pod_a framework, but it doesn't work!
  pod 'test_sibling_dependencies_pod_b', :path => '../test_sibling_dependencies_pod_b/'

  # pod_b from github
  # pod 'test_sibling_dependencies_pod_b', :git => 'git@github.com:ExoticObjects/test_sibling_dependencies_pod_b.git'

end


pre_install do |installer|
  # workaround for https://github.com/CocoaPods/CocoaPods/issues/3289
  def installer.verify_no_static_framework_transitive_dependencies; end
end


# POST INSTALL HOOK
post_install do |installer|

  files = Dir.glob("*.xcodeproj")
  proj_file = files[0]
  app_project = Xcodeproj::Project.open(proj_file);

  puts "{"
  app_project.native_targets.each do |target| #Set allow non modular includes on app target to 'yes'

    # puts 'native_targets: ' + target.inspect
    target.build_configurations.each do |config|
      config.build_settings['CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES'] = 'YES'
      puts '"MAIN_TARGET_' + config.name + '_SETTINGS" : ' + config.build_settings.to_json + ","
    end
  end

  app_project.save # Can't forget this or nothing will happen! (See https://github.com/CocoaPods/CocoaPods/issues/4618)

  installer.pods_project.build_configuration_list.build_configurations.each do |configuration| #Set allow non modular includes on POD target to 'yes'
    configuration.build_settings['CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES'] = 'YES'
    puts '"POD_TARGET_' + configuration.name + '_SETTINGS" : ' + configuration.build_settings.to_json  + ","
  end
  puts "}"
end

target :test_sibling_dependencies do
  common_pods_for_target
end












