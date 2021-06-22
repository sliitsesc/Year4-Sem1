# 2018 December (Repeat)

1) 
c) How optionals help to create a Failable Initializer in Swift?

We can write these in your own structs and classes by using `init?()` rather than `init()`, and return nil if something goes wrong. The return value will then be an optional of your type, for you to unwrap however you want.

d) There is a need to set a maximum engine capacity limit of 2000 for Car data type. Use a
Failable Initializer to modify the above-defined Car type.

```swift
struct Car {
  let engineCapacity: Int?
  
  init?(_ engineCapacity: Int) {
    guard engineCapacity <= 2000 {
      self.engineCapacity = engineCapacity
    } else {
      self.engineCapacity = nil
    }
  }
}
```

Explain what Grand Central Dispatch is. How does it operate?

Dispatch, also known as Grand Central Dispatch (GCD), contains language features, runtime libraries, and system enhancements that provide systemic, comprehensive improvements to the support for concurrent code execution on multicore hardware in macOS, iOS, watchOS, and tvOS.
The BSD subsystem, Core Foundation, and Cocoa APIs have all been extended to use these enhancements to help both the system and your application to run faster, more efficiently, and with improved responsiveness. Consider how difficult it is for a single application to use multiple cores effectively, let alone to do it on different computers with different numbers of computing cores or in an environment with multiple applications competing for those cores. GCD, operating at the system level, can better accommodate the needs of all running applications, matching them to the available system resources in a balanced fashion.


