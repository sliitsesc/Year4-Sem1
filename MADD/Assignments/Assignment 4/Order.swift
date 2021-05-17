import Foundation



// Assignment 4

// Question 01
class Order: NSObject {
    var orderNo: String?
    var customerRef: String?
    var noOfItems: String?
    
    init(orderNo: String, customerRef: String, noOfItems: String) {
        self.orderNo = orderNo
        self.customerRef = customerRef
        self.noOfItems = noOfItems
    }
}

let order1 = Order(orderNo: "23", customerRef: "000112232", noOfItems: "14")
let order2 = Order(orderNo: "24", customerRef:"000552232", noOfItems: "04")
let order3 = Order(orderNo: "25", customerRef: "000152232", noOfItems: "06")
let order4 = Order(orderNo: "26", customerRef: "000312232", noOfItems: "08")
let order5 = Order(orderNo: "27", customerRef: "000312232", noOfItems: "12")

// Question 02

var ordersList:[Order] = ()

ordersList.append(Order(orderNo: "23", customerRef: "000112232", noOfItems: "14"))
ordersList.append(Order(orderNo: "24", customerRef:"000552232", noOfItems: "04"))
ordersList.append(Order(orderNo: "25", customerRef: "000152232", noOfItems: "06"))
ordersList.append(Order(orderNo: "26", customerRef: "000312232", noOfItems: "08"))
ordersList.append(Order(orderNo: "27", customerRef: "000312232", noOfItems: "12"))

// Question 03
