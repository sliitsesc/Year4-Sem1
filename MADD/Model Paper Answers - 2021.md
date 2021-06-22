# 2021 MADD Model Paper Answers

1. **Briefly explain what is a Native app and explain what are the pros and cons in Native apps?** <br/>
  
  Native software or data-formats are those that were designed to run on a particular operating system. In a more technical sense, native code is code written            specifically for a certain processor. In contrast, cross-platform software can be run on multiple operating systems and/or computer architectures.
<table>
  <tr>
    <th>Pros</th>
    <th>Cons</th>
  </tr>
  
  <tr>
    <td>
      Offer Speed
    </td>
    <td>Lengthy download process</td>
  </tr>
  
  <tr>
    <td>
      Offline Support
    </td>
    <td>No flexibility</td>
  </tr>
  
  <tr>
    <td>
      Recognizable UIs
    </td>
    <td>Expensive</td>
  </tr>
  
  <tr>
    <td>
      More Secure
    </td>
    <td>Frequent Updates</td>
  </tr>
  
  <tr>
    <td>
      Allow developers to access full features
    </td>
    <td>Only runs on one OS</td>
  </tr>
</table>

2. **Briefly explain what is a Hybrid app and explain what are the pros and cons in Hybrid apps?**

Hybrid apps, like native apps, run on the device, and are written with web technologies (HTML5, CSS and JavaScript).

<table>
  <tr>
    <th>Pros</th>
    <th>Cons</th>
  </tr>
  
  <tr>
    <td>Higher flexibility</td>
    <td>More complex testing and intergration</td>
  </tr>
  
  <tr>
    <td>Fast development</td>
    <td>Lack of community support</td>
  </tr>
  
  <tr>
    <td>Cheaper than native development</td>
    <td>Lack of offline support</td>
  </tr>
  
  <tr>
    <td>No frequent updates</td>
    <td>Less secure</td>
  </tr>
</table>

3. **What are the main iOS Development prerequisites?** 

- XCode
- Mac Computer
- Swift kwowledge

4. **Explain in your words what are the main disadvantages of developing apps for iOS.**

  - Expensive Development
  - Time consuming development
  - Lengthy download process
  - App maintainance is expensive
  - Publishing a app to AppStore is very expensive
  - Limited talent developers
  - Swift is harder to lear
  - Poor interact with 3rd party tools
  - Language is long

5. **What is the recommended architecture pattern for developing iOS apps? Briefly explain what they are.**  

**MVC - Model View Controller** - Models store data such as order, Views render the data for users, for an example table which show list of products
Controllers cobine two by converting data to some form which views can render.

**MVVM - Model View ViewModel** - In here presentation and business parts communicate with each other using reactive binding called view and view modal.

**VIPER - View Interactor Presenter Entity Routing** - It is the Cleanest Architecture to iOS apps. The word VIPER stands for View, Interactor, Presenter, Entity, and Routing. Clean Architecture divides an app’s logical structure into layers of responsibility. 


6. **Briefly explain what are the Lazy properties in Swift.**

A lazy stored property is a property whose initial value isn’t calculated until the first time it’s used. You indicate a lazy stored property by writing the lazy modifier before its declaration.
```swift
class DataImporter {
    var filename = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
  
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
```

7. **Briefly explain what are the Type properties in Swift.**
  
  Properties associate values with a particular class, structure, or enumeration.
  ```swift
  let age:Int // type property
  ```

8. **Compare value types and reference types in Swift.**

<table>
  <tr>
    <th>Value Type</th>
    <th>Reference Type</th>
  </tr>
  
  <tr>
    <td>ypes in Swift fall into one of two categories: first, “value types”, where each instance keeps a unique copy of its data, usually defined as a struct, enum, or tuple. </td>
    <td>The second, “reference types”, where instances share a single copy of the data, and the type is usually defined as a class.</td>
  </tr>
  
  <tr>
    <td>
      The most basic distinguishing feature of a value type is that copying — the effect of assignment, initialization, and argument passing — creates an independent instance with its own unique copy of its data:
      <pre>
      swift
      // Value type example
      struct S { var data: Int = -1 }
      var a = S()
      var b = a						// a is copied to b
      a.data = 42						// Changes a, not b
      println("\(a.data), \(b.data)")	// prints "42, -1"
      </pre>
    </td>
    <td>
      Copying a reference, on the other hand, implicitly creates a shared instance. After a copy, two variables then refer to a single instance of the data, so   modifying data in the second variable also affects the original, e.g.:
      <pre>
      swift
        // Reference type example
        class C { var data: Int = -1 }
        var x = C()
        var y = x						// x is copied to y
        x.data = 42						// changes the instance referred to by x (and y)
        println("\(x.data), \(y.data)")	// prints "42, 42"
      </pre>
    </td>
  </tr>
  
  <tr>
    <td>Mutable</td>
    <td>Immutable</td>
  </tr>
</table>



9. **What are the access modifiers available in Swift? Explain them briefly.** 
  - Public - everyone can read and write
  - Private - read and write only inside the method
  - File Private - Can read and write in the same file
  - Internal - Only your swift code can read and write property. If you ship your code to another framework it wont work.

10. **Describe what is an extension in Swift.**

Extensions add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you don’t have access to the original source code (known as retroactive modeling).

11. Consider the following structure that models a Person. Write an extension to make it possible to instantiate a Person instance as shown below.
```swift
struct Person {
  var name: String
}

var x = Person(name: "Amal")
```
answer
```swift
extention Person {
  
}
```

12. What is a Delegate in Swift? 

Delegation is a simple and powerful pattern in which one object in a program acts on behalf of, or in coordination with, another object. 

13. What are the collection types available in Swift? 

* Arrays
* Sets
* Dictionaries

14. Consider the following structure that models a car. What are the keywords in Swift to initialize a variable and a constant? Provide examples using the given Car data type?
```swift
struct Car {
  let engineCapacity: Int
  
  init(_ engineCapacity: Int) {
    self.engineCapacity = engineCapacity
  }
}
```

answer

To declare a constant we can use `let` in swift and to declare a variable we can use `var`
```swift
let car1 = Car(engineCapacity: 100) 
car1 = Car(engineCapacity: 200) // ERROR: we cannot assign another object to car1 because car1 is a constant

var car2 = Car(engineCapacity: 100)
car2 = Car(engineCapacity: 200) // This is possible since car2 is a variable
```

15. Do Swift initializers return values? Why?

No. Initialization is the process for preparing a class, struct or enum for use. During this process setup initial values for stored property
Unlike Objective-C swift doesn’t return values, Their primary role is to ensure that new instances of a type are correctly initialized.

16. What is the use of Double question mark (??) in Swift? 

**Double question mark** is a nil-coalescing operator. In plain terms, it is just a shorthand for saying != nil . First it checks if the the return value is nil, if it is indeed nil

17. **What is an Optional in Swift? What problem do Optionals solve?**

return nil if something goes wrong. The return value will then be an optional of your type, for you to unwrap however you want.

18. **Type an empty de initializer for a class called Person.**

```swift
class Person {
  deinit{
  
  }
}
```

19. **Briefly explain what is Optional Binding in Swift with an example.** 

```swift
class Person {
  var name: String? // If name is null that won't be a problem and won't be any compilation errors
}
```


20. **Briefly explain what is Optional Guard in Swift with an example.**

An alternative to if let is guard let, which also unwraps optionals. guard let will unwrap an optional for you, but if it finds nil inside it expects you to exit the function, loop, or condition you used it in.
```swift
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}
```

21. **Consider the following structure that models a car**..
    a) Above code will generate a run time error. Explain why?
    ```swift
    struct Car {
      let engineCapacity: Int
  
      init(_ engineCapacity: Int) {
        self.engineCapacity = engineCapacity
       }
    }
    
    let electriCar = Car(engineCapacity: nil)
    let capacity = electricCar.engineCapacity!
    ```
    
    because in above code engineCapacity cannot be `nil` since `let electriCar = Car(engineCapacity: nil)` creating obeject with nil value and in the next line `let capacity = electricCar.engineCapacity` code trying to access the `engineCapacity` which is already `nil`

22. **How to eliminate the run time error of the above code, by using Optional Chaining? Demonstrate in code**.

```swift
struct Car {
      let engineCapacity: Int?
  
      init(_ engineCapacity: Int?) {
        self.engineCapacity = engineCapacity
       }
    }

let capacity = electricCar?.engineCapacity
```

23. **Briefly explain the life cycle of an iOS application. (Images are accepted with a description)**

<img src="https://docs-assets.developer.apple.com/published/61283402a3/024b99c5-4ab6-4ee0-bb41-6e6426ec6a64.png" width="500"/>

Every iOS application passes through the following states as it runs. ... Not Running: the app is considered to be in a Not Running state when it is not yet launched or terminated by the system or user. Inactive: the app is in an inactive state when it is in the foreground but receiving events.

24. **Briefly explain the Auto layout, and how does it work.** 

Auto Layout dynamically calculates the size and position of all the views in your view hierarchy, based on constraints placed on those views. 

25. What are the differences between a push segue and a modal segue? 

26. Briefly explain why Generics are used in Swift.

27. What is the name of the Garbage Collection process found in iOS? Briefly explain how it works. 

28. Explain Cropping, Letterboxing and Pillarboxing. (Images are accepted with a description.
 
29. Briefly explain what are the application states of an iOS App. (images are accepted with a description)

