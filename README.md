##### I'm taking a Ruby course on-line. Following are some general notes I'm taking along the way.

### Table of Contents
* [Ruby rules](#ruby-rules-n-guidelines)
* [Vocabulary](#vocabulary)
* [Objects vs Classes](#objects-vs-classes)
* [Classes vs Methods](#classes-vs-methods)

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
  ```ruby 
  text = "#{name.capitalize} has a health of #{health}"
  ```
* In the case of the line of code below, _center_ is a **method** that takes two **parameters**    
  ```ruby 
  puts text.center(50, '*')
  ```
* A **class** is a factory (blueprint) that instantiates **objects (instances)**. 
* Objects have unique **state** and a common set of **methods (behaviors)**.
* An **instance** variable exists for the life of an **object**.
* **Instance** methods have access to their object's **instance** variables.
* Class names start with an **uppercase** letter and multi-word class names have each word capitalized 
* Method names start with a **lowercase** letter    
* Variable names start with a **lowercase** letter    
* Instance variables start with an **@ sign**
* Methods such as _each_ that invoke a block of code repeatedly are often called **iterators** because they iterate over the objects in a collection
* By convention, multi-line blocks start with **do** and end with **end**
* By convention, single line blocks start with **{** and end with **}**
* Block parameters are always placed within **vertical bars (||)**
* In the example below, the value of the method parameter is *5*
```ruby
1.upto(5) do |count|
  puts "#{count} situps"
  puts "#{count} pushups"
  puts "#{count} chinups"
end
```
* In the example above, the block parameter is **count** and it is a **local** variable. Its value is filled in by the upto method and as a local variable, **count** is only accessible inside the block.
* The _each_ method iterates through each element in a collection and assigns each element in turn to the **block parameter(s)**.
* In the code below, **type** is the block parameter. Block parameters are **local** variables. They only live for the life of the block.
```ruby
flavors = ['chocolate', 'vanilla', 'cinnamon']

flavors.each do |type|
  puts type.reverse
end
```
* In the example above, the code block is run 3 times, once for each element in the array

---
### Objects vs Classes
Object  | Class
 ---    |  ---
 2      | Integer
 -5     | Integer
 7.2    | Float
 3.14   | Float
 'hello'| String
 'world'| String

### Classes vs Modules
 | CLASS | MODULE 
 --- | --- | ---
 **Instantiation** | Can be instantiated | Cannot be instantiated
 **Usage** | object creation | Mixin facility. Provide a namespace.
 **Superclass** | Module | Object
 **Methods** | Class methods and instance methods | Module methods and instance methods
 **Inheritance** | Inherits behavior and can be base for inheritance | No inheritance
 **Inclusion** | Cannot be included | Can be included in classes and modules by using the include command <br/> <sup>(includes all instance methods as instance methods in a class/module)<sup>
 **Extension** | Cannot extend with extend command <br/> <sup>(only with inheritance)<sup> | Module can extend instance by using extend command <br/> <sup>(extends given instance with singleton methods from module)<sup>
  
