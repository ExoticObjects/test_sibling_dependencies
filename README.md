# test_sibling_dependencies

Given a project with dependencies like this:

* Project (with dependency on Framework_A
  * Framework_A
  * Pod_B (with dependency on Framework_A
  
I can't get Pod_B to see Framework_A.

That's essentially the problem. The best way to see the issue is to look at the [PodFile](https://github.com/ExoticObjects/test_sibling_dependencies/blob/master/Podfile) and then compile the project to see the bugs.
  
