### How memory leak occur in iOS?
A memory leak occur when contents are remains in the memory even after its lifecycle has ended.

```swift
class Person {
  let name:String

  init(name:String){
    self.name = name
  }
  
  deinit {
    print("\(name) is being deinitializing....")
  }
}

class Apartment {
  let no:Int
  var tenant: Person
  
  init(no:Int) {
    self.no = no
  }
}

let flutter: Person? = Person(name: "Flutter")
let apartment1 = Apartment(no: 123)
apartment1.tenant = flutter
flutter = nil
```
