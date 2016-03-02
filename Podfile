
source 'https://github.com/CocoaPods/Specs.git' # Need to list main cocoapods repo as a 'source' or place to look for code. It should be last. Pods found in private repos above will be used in favor of pods with the same name in public repo.
source 'https://github.com/ExoticObjects/test_sibling_dependencies_pod_a_framework.git'
platform :ios, '9.0'
use_frameworks!

pre_install do |installer|
  # workaround for https://github.com/CocoaPods/CocoaPods/issues/3289
  def installer.verify_no_static_framework_transitive_dependencies; end
end

def common_pods_for_target

  # point at repo
  # pod 'test_sibling_dependencies_pod_a', :git => 'https://github.com/ExoticObjects/test_sibling_dependencies_pod_a.git'
  
  # point at dev pod
  # pod 'test_sibling_dependencies_pod_a', :path => '../test_sibling_dependencies_pod_a/'

  # point at framework made from dev pod
  # pod 'test_sibling_dependencies_pod_a_framework', :path => '../test_sibling_dependencies_pod_a_framework/'

  # or at that same pod on github
  pod 'test_sibling_dependencies_pod_a_framework', :git => 'https://github.com/ExoticObjects/test_sibling_dependencies_pod_a_framework.git'
  
  # local pod_b has a dependency on the pod_a framework 
  pod 'test_sibling_dependencies_pod_b', :path => '../test_sibling_dependencies_pod_b/'

end

target :test_sibling_dependencies do
  common_pods_for_target
end












