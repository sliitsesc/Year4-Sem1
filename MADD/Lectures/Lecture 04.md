## Structs

- ⚠️⚠️⚠️ Structs are value types, not reference types
- Provides extended functionality using methods
- Provides storage of data using properties
- A custom data type

## Generics

Generics are the means for writing useful and reusable code.
Used to implement flexible data structures that are not constrained to a single data type - used a single data type and define 

## Arrays

let numbers: Array<Int> = [0, 2, 1, 3, 1, 42]
let numbers1: [Int] = [0, 2, 1, 3, 1, 42]
let numbers = [0, 2, 1, 3, 1, 42]
let anyValueArray: [Any] = [“I am string”, 10]

## Sets

🧐 The Set provides no defined ordering

let uniqueNumbers: Set<Int> = [0, 2, 1, 3, 42] print(uniqueNumbers)
// Output: [42, 2, 0, 1, 3]

Example - Connection Pool - no unique order - just random 

## Hahable Values

- A set cannot have duplicates
- Swift’s basic built-in types are hashable 👉🏻 String, Bool, Int, Float, Double

## Mutual Sets

⚠️ Alternatively, we could check whether the element exists using the contains() Set instance method

if mutableStringSet.contains("Ten") { mutableStringSet.remove("Ten")
}

## Dictionaries

- Stores key , value pairs

- Also known as hash maps

## Memory Management

- ARC (automatic reference counting)
- Handles most of the memory management
- Each reference, that points to an instance of a class, is a socalled strong reference
- As long as there is at least one strong reference pointing to an instance, this instance will not be deallocated
- When there’s no strong reference pointing to that instance left, the instance will be deallocated
- The deinit method will only be called by the system when the instance gets deallocated

## Retain Cycle

- After the cycle ends the memory will remian
- These instances won’t be deallocated
- This is called a memory leak
- When the memory usage is to high, iOS will kill the app

## Weak References

- Weak references is a way to avoid retain cycles
- When only weak references are left and the instances will be deallocated.

## Unownend

- Unowened modifier does the same as weak with one exception

## Protocols

- A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality
- A protocol can be adopted by a class, structure, enumeration

protocol Purchaseable {
    var name: String { get set }
}

