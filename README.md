![project-builder](./build.system.jpg "Project Builder") 
# oliv-soft-project-builder
This project will help you to build the Weather Wizard and the Navigation Desktop.
- It requires Gradle and Java. Gradle will be downloaded and installed if missing.

You obviously need [git](https://help.github.com/articles/set-up-git/) (ie on Windows, you need the git bash tool).

To proceed:

- Clone this project in your environment
- Modify the script named `set.gradle.env` to match your context
- Run the script named `build.all`

### Preamble
This project refers to several independent sub-projects, this is intentional, as several of them can be used
independently of the project you're on right now.
This is sometime a bit cumbersome, as every sub-project has to be checked in separately, but it brings some flexibility to the software,
and to all the projects that may depend on the sub-projects.

### First check out with git
<pre>
Welcome to Git (version 1.8.4-preview20130916)

Run 'git help git' to display the help index.
Run 'git help <command>' to display help for specific commands.

oliv@OLIV-LAP /path.to/OlivSoft.git
<b>$ git clone https://github.com/OlivierLD/oliv-soft-project-builder.git</b>
Cloning into 'oliv-soft-project-builder'...
remote: Counting objects: 254, done.
remote: Compressing objects: 100% (69/69), done.
remote: Total 254 (delta 38), reused 2 (delta 2), pack-reused 182Receiving objects:  75% (191/254), 20.62 MiB | 971.00 KiB/s
Receiving objects: 100% (254/254), 20.87 MiB | 984.00 KiB/s, done.
Resolving deltas: 100% (146/146), done.
Checking connectivity... done

oliv@OLIV-LAP /path.to/OlivSoft.git
<b>$ cd oliv-soft-project-builder/
$ chmod +x set.gradle.env
$ chmod +x checkout.sh
$ chmod +x build.all
$ chmod +x gradlew</b>

oliv@OLIV-LAP /path.to/OlivSoft.git/oliv-soft-project-builder (master)
<b>$ cat set.gradle.env</b>
#!/bin/bash
export JAVA_HOME=/d/Java/jdk1.7.0_45
echo Gradle Env is set.
./gradlew --version
</pre>
<b>Note</b>: If you are behind a firewall, you will need a proxy. Set it in the file named `gradle.properties`.
<pre>
oliv@OLIV-LAP /path.to/OlivSoft.git/oliv-soft-project-builder (master)
<b>$ ./build.all</b>
Do you need a proxy (say n if you don't know) ? [n]|y >n
Unsetting git proxies
Setting env
Gradle Env is set.

------------------------------------------------------------
Gradle 2.3
------------------------------------------------------------

Build time:   2015-02-16 05:09:33 UTC
Build number: none
Revision:     586be72bf6e3df1ee7676d1f2a3afd9157341274

Groovy:       2.3.9
Ant:          Apache Ant(TM) version 1.9.3 compiled on December 23 2013
JVM:          1.7.0_45 (Oracle Corporation 24.45-b08)
OS:           Windows 7 6.1 amd64

Step 1 - Checkout
Checking out javanmeaparser...
[....]

BUILD SUCCESSFUL

Total time: 36.317 secs

oliv@OLIV-LAP /path.to/OlivSoft.git/oliv-soft-project-builder (master)
$
</pre>

If the build process went well, you ready to generate your own distribution.

#### Generate your distribution
Do look into the [`release`](https://github.com/OlivierLD/release) module in the directories generated by the commands above.
