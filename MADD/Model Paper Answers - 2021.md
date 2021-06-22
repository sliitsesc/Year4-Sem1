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


6. Briefly explain what are the Lazy properties in Swift.

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

7. Briefly explain what are the Type properties in Swift. 
  
  Properties associate values with a particular class, structure, or enumeration.
  ```swift
  let age:Int // type property
  ```

8. Compare value types and reference types in Swift. 

9. What are the access modifiers available in Swift? Explain them briefly. 

10. Describe what is an extension in Swift.

11. Consider the following structure that models a Person. Write an extension to make it possible to instantiate a Person instance as shown below.
```swift
struct Person {
  var name: String
}

var x = Person(name: "Amal")
```

12. What is a Delegate in Swift? 
13. What are the collection types available in Swift? 
14. Consider the following structure that models a car. What are the keywords in Swift to initialize a variable and a constant? Provide examples using the given Car data type?
```swift
struct Car {
  let engineCapacity: Int
  
  init(_ engineCapacity: Int) {
    self.engineCapacity = engineCapacity
  }
}
```
15. Do Swift initializers return values? Why?
16. What is the use of Double question mark (??) in Swift? 
17. What is an Optional in Swift? What problem do Optionals solve?
18. Type an empty de initializer for a class called Person.
19. Briefly explain what is Optional Binding in Swift with an example. 
20. Briefly explain what is Optional Guard in Swift with an example.
21. Consider the following structure that models a car..
    a) Above code will generate a run time error. Explain why?
    ```swift
    struct Car {
      let engineCapacity: Int
  
      init(_ engineCapacity: Int) {
        self.engineCapacity = engineCapacity
       }
    }
    
    let electriCar = Car(engineCapacity: nil)
    let capacity = electricCar.engineCapacity
    ```

22. How to eliminate the run time error of the above code, by using Optional Chaining? Demonstrate in code.
23. Briefly explain the life cycle of an iOS application. (Images are accepted with a description)
24. Briefly explain the Auto layout, and how does it work. 
25. What are the differences between a push segue and a modal segue? 

26. Briefly explain why Generics are used in Swift.

27. What is the name of the Garbage Collection process found in iOS? Briefly explain how it works. 

28. Explain Cropping, Letterboxing and Pillarboxing. (Images are accepted with a description.
 
29. Briefly explain what are the application states of an iOS App. (images are accepted with a description)

