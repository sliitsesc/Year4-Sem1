# Automatic Reference Counting 
**Swift uses Automatic Reference Counting (ARC)** to track and manage your app’s memory usage. In most cases, this means that memory management “just works” in Swift, and you don’t need to think about memory management yourself. ARC automatically frees up the memory used by class instances when those instances are no longer needed.
<a href="https://docs.swift.org/swift-book/LanguageGuide/AutomaticReferenceCounting.html" target="_blank">View more</a>

### How memory leak occur in iOS?
A memory leak occur when contents are remains in the memory even after its lifecycle has ended.

```swift
class Person {
  let name:String

  init(name:String){
    self.name = name
  }
  
  deinit {
    print("\(name) is being deinitialized....")
  }
}

class Apartment {
  let no:Int
  var tenant: Person?
  
  init(no:Int) {
    self.no = no
  }
  
  deinit { print("Apartment \(no) is being deinitialized") }
}

let flutter: Person? = Person(name: "Flutter")
let apartment1 = Apartment(no: 123)
apartment1.tenant = flutter
flutter = nil
```

### How to avoid retain cycle

A weak reference is a reference that doesn’t keep a strong hold on the instance it refers to, and so doesn’t stop ARC from disposing of the referenced instance. This behavior prevents the reference from becoming part of a strong reference cycle. You indicate a weak reference by placing the weak keyword before a property or variable declaration.

```swift
class Apartment {
  let no:Int
  weak var tenant: Person?
  
  init(no:Int) {
    self.no = no
  }
}
```
