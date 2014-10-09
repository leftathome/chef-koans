chef-koans
==========

An experimental, test-driven way to learn about Chef.  Takes some inspiration from Ruby Koans
and from other things that are awesome and simple.

Getting Ready
-------------

 * Have the Chef-DK installed.
 * Have Vagrant installed.
 * (currently) have Virtualbox installed.
 * Clone this repository to a directory on your workstation using `git clone`.
 * Run `chef exec bundle install` from your local working copy.

You should now have everything you need on your workstation to begin learning Chef.

You _should_.

But let's test it.

Getting Started
---------------

If you're reading this README from your workstation, you're on the master branch of the repo.

Run `kitchen test`.  This will:
 * Invoke Test Kitchen (http://kitchen.ci/)
 * Download a Vagrant box image.
 * Start a new VM on your system.
 * Install the latest version of Chef on the new VM.
 * Run Chef against the /empty/ cookbook in this repository.
 * Run tests against the VM.

This is the test cycle you're going to use as you walk the path to enlightenment.  The first
time, it will take a few minutes.

### Did it work?

#### Yes, the VM started and all tests passed!

 * Please check out branch `step-1`.  You can use the command `git
   checkout -b step-1` followed by `git pull origin step-1` from
   within the chef-koans repository to do this.

#### No, I encountered a problem.

 * It's okay, lots of software doesn't work all the time.  Here are some things to try:
   *  Try it again.  It doesn't seem like it should work, but it can't hurt.
   *  Google the error message - whatever is marked in red, or the first line of text that sounds ominous, like `NameError: failed to reticulate splines` or `frob() returned 1, expected 0`.
   *  Go to GitHub and search the issues [http://github.com/leftathome/chef-koans/issues](here) to see if anyone's come across your problem before.  Maybe someone has figured out your problem and posted the solution, or maybe it's the code's fault and you need to `git pull` to see the fix.
   *  Open a [http://github.com/leftathome/chef-koans/issues/new](GitHub issue) and we'll try to fix it.

Getting Involved
----------------

If you have a lesson plan idea, find a bug or have any other idea that might make chef-koans better, please create an issue.  If you want to work on chef-koans, fork the repository on GitHub and send us a pull request.
