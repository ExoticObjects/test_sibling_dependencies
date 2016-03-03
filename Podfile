
source 'https://github.com/CocoaPods/Specs.git'

# include source for a framework that I'm making. This should (I think) enable me to list it as a 
# dependency of pod b. 
# See https://github.com/ExoticObjects/test_sibling_dependencies_pod_b/blob/master/test_sibling_dependencies_pod_b.podspec
# for the dependency listing.
source 'https://github.com/ExoticObjects/test_sibling_dependencies_pod_a_framework.git'

platform :ios, '9.0'
use_frameworks!

pre_install do |installer|
  # workaround for https://github.com/CocoaPods/CocoaPods/issues/3289
  def installer.verify_no_static_framework_transitive_dependencies; end
end

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
  # pod 'test_sibling_dependencies_pod_b', :path => '../test_sibling_dependencies_pod_b/'

  # pod_b from github
  pod 'test_sibling_dependencies_pod_b', :git => 'git@github.com:ExoticObjects/test_sibling_dependencies_pod_b.git'

end

target :test_sibling_dependencies do
  common_pods_for_target
end












