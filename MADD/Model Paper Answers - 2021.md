# 2021 MADD Model Paper Answers

1. Briefly explain what is a Native app and explain what are the pros and cons in Native apps. 

2. Briefly explain what is a Hybrid app and explain what are the pros and cons in Hybrid apps.
3. What are the main iOS Development prerequisites?    
4. Explain in your words what are the main disadvantages of developing apps for iOS.
5. What is the recommended architecture pattern for developing iOS apps? Briefly explain what they are.  
6. Briefly explain what are the Lazy properties in Swift.
7. Briefly explain what are the Type properties in Swift. 
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
    ```

22. 

