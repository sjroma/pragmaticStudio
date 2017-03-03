##### I'm taking a Ruby course on-line. Following are some general notes I'm taking along the way.

### Table of Contents
* [Ruby rules](#ruby-rules-n-guidelines)
* [Vocabulary](#vocabulary)
* [Classes vs Objects](#classes-vs-objects)

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

### Classes vs Objects
Object | Class
 ---   |  ---
  2    | Integer
  -5   | Integer
  7.2  | Float
  3.14 | Float
'hello'| String
'world'| String
  