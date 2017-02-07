##### I'm taking a Ruby course on-line. Following are some general notes I'm taking along the way.

### Table of Contents
* [Installing Ruby on Mac OS X](#installing-ruby-on-mac-os-x)
* [Generate the core Ruby documentation](#generate-the-core-ruby-documentation)
* [Ruby rules](#ruby-rules-n-guidelines)
* [Vocabulary](#vocabulary)

# Installing Ruby on Mac OS X
* By default, Ruby 2.0 is pre-installed with Mac OS X.  It's best not to mess around with the system-installed Ruby as it is intended
 to be used by the operating system and apps installed by Apple.  
   The following steps are a guide to installing Ruby 2.3.0 using the [Ruby Version Manager (RVM)](https://rvm.io) which is a
 command-line tool that makes it easy to install and manage multiple independent Ruby environments on the same machine.  This makes
 it easy to switch between Ruby versions.  It's a little extra effort up front but it's worth it in the end.   
 
* RVM compiles Ruby versions from source code.  To do that, RVM uses the GCC compiler and other build tools.  GCC isn't installed by 
 default on Mac OS X.  GCC is only available after you've installed Apple's Command Line Tools for Xcode.  
   Check to see if you already have GCC installed by typing the following at the command prompt in a terminal window:   
   ```gcc --version```  
   If you see a version number, you're good.  If the gcc command isn't found, you may get a dialog asking if you'd like to install 
 Apple's Command Line Tools for Xcode.  Go ahead and click "Install" to automatically download and install the Command Line Tools.  

* Next, to install RVM from its GitHub repository (the recommended way), you need a working version of the git version control system.  
   Check to see if you already have git installed by typing the following at the command prompt in a terminal window:  
    ```git --version```   
    If you see a version number, you're good.  If the git command isn't found, then download the latest version of the graphical Git
 installer from the [git-osx-installer](https://code.google.com/archive/p/git-osx-installer/downloads) downloads page.  Once it's finished
 downloading, double-click the .dmg file to start the install process.  

* From the command prompt in a terminal window, install RVM by typing (or copying and pasting) the following:   
 ```curl -L https://get.rvm.io | bash -s stable```  

* When the RVM installation completes, close your terminal session and open a new one.  Confirm that RVM is properly loaded in the 
 new terminal session by typing:  
 ```rvm --version```  
    You should see a version number with no errors.    

* With RVM installed, now you can now install Ruby 2.3.0.  To do that type:  
  ```rvm install 2.3.0```  
   This will download, compile and install Ruby into a directory managed by RVM (it's under the ~/.rvm directory).  You may see some help
 info displayed followed by a prompt at the bottom of the screen.  Press the spacebar to scroll through the help pages or press 'q' to skip
 over the help and proceed with the installation.    

* When the install is complete and you're back at the command prompt, set Ruby 2.3.0 as the current Ruby version in your terminal session
 by typing:  
 ```rvm use 2.3.0```  

* Verify that Ruby 2.3.0 is the current Ruby version by typing:  
  ```ruby -v```  
    You should see something like the following, though your exact patch number, date and revision may be slightly different:   
    ```ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-darwin14]```  

* Set Ruby 2.3.0 as the default version to be used whenever you open any new terminal sessions by typing:   
  ```rvm --default use 2.3.0```  

* Setting up RVM seems like a lot of work but there is a payoff.  You can now easily switch between Ruby versions.  For example, if you 
 ever want to go back to the system-installed version of Ruby, simply type:   
 ```rvm system```  
    And to switch back to Ruby 2.3.0 type:  
    ```rvm 2.3.0``` or ```rvm default```  
    To see all versions of Ruby under RVM's control type:  
    ```rvm list```  

# Generate the core Ruby documentation
* After installing Ruby, generate the core Ruby documentation by typing:    
 ```rvm docs generate-ri```
 
    It takes a little while to complete but, in the end you'll have all the Ruby documentation at your fingertips  
* Now you can easily call methods on an object.  For instance, the *String* object has a lot of methods
    * Run ```ri String``` to show what methods go with the String object 
    * Or if you know the method of the object and want to see the parameters run ```String.center```
* ```ri -i``` will run it interactively
   
An on-line version can be found at;
* API Documentation [Index of Files, Classes & Methods in Ruby](http://ruby-doc.org/core-2.3.1/)

# Ruby rules n guidelines
* Use two spaces per indentation level (aka soft tabs)
    * [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide)
* _Variable_ names can be a mixture of letters or numbers (or an underscore) and the first character of a variable name 
must be a lowercase letter or underscore
* _Method_ names should start with a lowercase letter followed by a mix of letters, number and underscores    
  * Method names may end with a question mark or an exclamation point.    
     * Question mark means the method _should_ return a boolean       
     * An exclamation point indicates the method will modify the object it is called on

# Vocabulary
* In the following line of code, _capitalize_ is a **method** called on the **object** named _name_ and assigned to
the **variable** named _text_    
  ```text = "#{name.capitalize} has a health of #{health}"```
* In the case of the line of code below, _center_ is a **method** that takes two **parameters**    
  ```puts text.center(50, '*')```
* A **class** is a factory (blueprint) that instantiates **objects (instances)**. 
* Objects have unique **state** and a common set of **methods (behaviors)**.
* An **instance** variable exists for the life of an **object**.
* **Instance** methods have access to their object's **instance** variables.
* Class names start with an **uppercase** letter and multi-word class names have each word capitalized 
* Method names start with a **lowercase** letter    
* Variable names start with a **lowercase** letter    
* Instance variables start with an **@ sign**
