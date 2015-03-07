# example-ci
![Travis badge](https://travis-ci.org/m-andres/example-ci.svg?branch=bad-test)

An example repo in Ruby for continuous integration with Travis CI

## About continuous integration

This is an extremely simple introduction to automation of builds,
tests and continuous integration. Feel free to improve or correct
it by forking the project and making a pull request.

### Builds

This may seem obvious, so skip this section if you are already
familiar with the concept of *build*.

When you're developing a code-based project, making a build means
the generation of an executable or other form of prepared package
out of your code, including any tests that may be used to check
its proper operation.

Thus, a build is *successful* if an executable can be generated
and it passes all the tests. Otherwise, we say that the build
*failed*.

Usually the final form of the program (your executable or package)
at any point in time is called a build of the program, and can
be assigned a number (the *build number*).

### Build automation

Instead of using the command shell to compile and link programs,
build automation allows us to automatically do that task. For
example, Makefiles are scripts that state how a project must be
built out of source code. This enables developers to just run
`make` and forget about compilation lines. There are tools that
automate the creation of these Makefiles as well.

After the building system is established, developers can use these
types of automation:

* On-demand: manually running the script (such as a Makefile).
* Scheduled: automatically building according to a schedule.
* Triggered: building whenever changes are made in the source code.

### Test automation

Tests for a software project must be exhaustive, that is, they
must check every path the program could follow. For this task,
developers can create a series of tests based on expectations,
so that they run in each build of the program, checking each
time that the program is producing the desired output.

Tests are so important there exists an entire methodology for
development based on them, aptly called
[Test-driven development](https://en.wikipedia.org/wiki/Test-driven_development).
In this type of methodologies, devs first write a set of tests
and then write code, repeatedly checking its functioning and
closing the cycle when their code passes every test. Automated
tests allow for this type of methodologies to be fast-paced and
reliable.

### Continuous integration

Continuous integration implies that developers frequently merge
changes into the main copy of the project (for example, the
*master* branch of the repository on Github).

Continuous integration builds on test automation in that these
merges are made possible by automating tests to check that
developing code will not break another copy. Tests are run on
a server when it detects a new commit.

This also allows to automatic (scheduled or triggered)
regeneration of documentation and measurement of performance.

### Travis CI

Travis CI is a hosted continuous integration service providing
free build and test automation for public Github repositories.

By signing in with your Github account on [travis-ci.org](http://travis-ci.org)
you can turn on push tracking on any of your repositories,
and configure the build process with a `.travis.yml` file.

You can learn how to write these configuration files for
each language in [the documentation](http://docs.travis-ci.com/user/getting-started/).

### Sources

Wikipedia
[1](https://en.wikipedia.org/wiki/Continuous_integration),
[2](https://en.wikipedia.org/wiki/Build_automation),
[3](https://en.wikipedia.org/wiki/Test_automation)
