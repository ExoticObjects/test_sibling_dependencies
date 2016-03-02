source 'https://github.com/CocoaPods/Specs.git' # Need to list main cocoapods repo as a 'source' or place to look for code. It should be last. Pods found in private repos above will be used in favor of pods with the same name in public repo.
platform :ios, '9.0'
use_frameworks!

def common_pods_for_target
  # pod 'test_sibling_dependencies_pod_a', :git => 'https://github.com/ExoticObjects/test_sibling_dependencies_pod_a.git'
    pod 'test_sibling_dependencies_pod_a', :path => '../test_sibling_dependencies_pod_a/'
end

# ADD PODS TO XCODE TARGETS
target :test_sibling_dependencies do
  common_pods_for_target
end












