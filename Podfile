
source 'https://github.com/CocoaPods/Specs.git' # Need to list main cocoapods repo as a 'source' or place to look for code. It should be last. Pods found in private repos above will be used in favor of pods with the same name in public repo.
platform :ios, '9.0'
use_frameworks!

def common_pods_for_target

  # point at repo
  # pod 'test_sibling_dependencies_pod_a', :git => 'https://github.com/ExoticObjects/test_sibling_dependencies_pod_a.git'
  
  # point at dev pod
  # pod 'test_sibling_dependencies_pod_a', :path => '../test_sibling_dependencies_pod_a/'

  # point at framework made from dev pod
  pod 'test_sibling_dependencies_pod_a', :path => '../test_sibling_dependencies_pod_a_framework/'

end

target :test_sibling_dependencies do
  common_pods_for_target
end












