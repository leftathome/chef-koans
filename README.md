chef-koans
==========

An experimental, test-driven way to learn about Chef. Takes some inspiration
from Ruby Koans and from other things that are awesome and simple.

Getting Ready
-------------
 * You have already ran `kitchen test` in the master branch without errors.
 * You have a connection to the Internet.
 * You have a web browser open to the [Chef 'resource' documentation URL][Resources]: http://docs.getchef.com/chef/resources.html
 * You have your favorite text editor or IDE open to [this cookbook's default recipe][Default recipe]

Step 1
------

Chef is declarative, not procedural.  Chef resources are, bash scripts do.

A bash script would install and start Apache by running the package installer and then starting the
service.

A Chef recipe does this by declaring that a package should exist and that a service should be running.

The package and the service are examples of Chef _resources_.  Anything that Chef manages on a system
is a resource.

Many resources come with Chef.  You can find all of them documented on the
[Chef documentation site][Resources].  Most Chef cookbook authors refer to this page often.

Open the [cookbook's default recipe][Default recipe] in your favorite editor.  This is the file Chef
reads when you run `kitchen test`.

You must add resources here that install the `apache2` package and start the `apache2` service to continue.

Run `kitchen test` when you are ready.

### Did it work?

#### Yes, the VM started and all tests passed!

 * Please check out branch `step-2`.

#### No, I encountered a problem.

 * You need to declare a `package` and a `service` to proceed.
 * Once you've modified the recipe and saved it, you can just re-run Chef on the VM
   with `kitchen converge`.
   * Make sure you run `kitchen test` successfully before moving on to the next
     lesson, though.  This guarantees that your cookbook will work on a completely
     new system.
 * To just re-run tests, run `kitchen verify`.
 * Are you still having problems?
   *  Google the error message - whatever is marked in red, or the first line of text that sounds ominous, like `NameError: failed to reticulate splines` or `frob() returned 1, expected 0`.
   *  Go to GitHub and search the issues [here](http://github.com/leftathome/chef-koans/issues) to see if anyone's come across your problem before.  Maybe someone has figured out your problem and posted the solution, or maybe it's the code's fault and you need to `git pull` to see the fix.
   *  Open a [GitHub issue](http://github.com/leftathome/chef-koans/issues/new) and we'll try to fix it.

[Resources]: http://docs.getchef.com/chef/resources.html
[Default recipe]: ./recipes/default.rb
