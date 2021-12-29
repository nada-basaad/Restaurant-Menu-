import Foundation
//-------------------------------------------------------
// User Order
class Order{
    //var appetizers = ""
    var main : [String] = []
    var drinks : [String] = []
    var appetizers : [String] = []
    var total : Int = 0
}
//-------------------------------------------------------
// User Information
class Info {
    var name = ""
    var phone = ""
    var neighborhood = ""
    var street = ""
    var homeNum = ""
}
let order = Order()
let information = Info()
var exit = "1"
var choise = "9"

print("        ******* Welcome to N Lounge ******* ")
print("\n---------------------------------------------------------")
// Categories
repeat{
    print("""
1- Menu📓
2- Your Order 📋
3- Apply Order 💳
""")
    print("\nPlease enter your choise or 0 to exit ")
    choise = readLine() ?? "0"
    print("\n")
    switch choise {
    case "0":
        exit = choise
    case "1":
        menu()
    case "2":
        orderList()
    case "3":
        applyOrder()
    default:
        break
    }} while exit != "0"

//repeat{
//    menu()
//} while exit != "0"
//-------------------------------------------------------
// Exit
print("\n\n---------------------------------------------------------")
print("Thank you 🤍, We are waiting you again.")
//-------------------------------------------------------
// Menu
func menu (){
    print("\n\n...... Menu ......\n")
    print(" 1- Appetizers (Enter 1) \n 2- Main Courses (Enter 2) \n 3- Drinks (Enter 3) \n \nEnter your choise or 9 to back or 0 to exit :")
    choise = readLine() ?? "0"
    print("\n")
    switch choise {
    case "0":
        exit = choise
    case "1":
        appetizers()
    case "2":
        mainCourses()
    case "3":
        drinks()
    case "9":
        break
    default:
        break
//        print("Please enter your choise or 0 to exit ")
//        choise = readLine() ?? "9"
//        if choise == "0"
//        {
//            exit = choise
//        }
//        else{
//            // continue
//        }
    }
    
}
//-------------------------------------------------------
// Appetizers Menu
func appetizers (){
    print("""
1- Ceaser salad 🥙               35 SR
2- Kale & Quinoa salad 🥗        46 SR
3- Spicy tuna wasabi 🌯          48 SR
""")
    print("Please enter your choise or 9 to back or 0 to exit")
    choise = readLine() ?? "0"
    print("\n")
    switch choise {
    case "0":
        exit = choise
    case "1":
        order.appetizers.append("Ceaser salad          35 SR")
        order.total=order.total+35
    case "2":
        order.appetizers.append("Kale & Quinoa salad   46 SR")
        order.total=order.total+46
    case "3":
        order.appetizers.append("Spicy tuna wasabi     48 SR")
        order.total=order.total+48
    case "9":
        break
    default:
        break
//        print("Please enter your choise or 9 to back or 0 to exit ")
//        choise = readLine() ?? "0"
//        if choise == "9"
//        {
//            break
//        }
//        if choise == "0"
//        {
//            exit = choise
//
//        }
    }
}
//-------------------------------------------------------
// Main Courses Menu
func mainCourses (){
    print("""
1- Loung 'wagyu' Burger 🍔       55 SR
2- Herb chicken burger  🍔       51 SR
3- Chicken pesto pizza 🍕        56 SR
4- Mushroom penne 🍝             57 SR
5- Fettuccini 🍜                 51 SR
""")
    print("\nPlease enter your choise or 9 to back or 0 to exit ")
    choise = readLine() ?? "0"
    print("\n")
    switch choise {
    case "0":
        exit = choise
    case "1":
        order.main.append("Loung 'wagyu' Burger  55 SR")
        order.total=order.total+55
    case "2":
        order.main.append("Herb chicken burger   51 SR")
        order.total=order.total+51
    case "3":
        order.main.append("Chicken pesto pizza   56 SR")
        order.total=order.total+56
    case "4":
        order.main.append("Mushroom penne        57 SR")
        order.total=order.total+57
    case "5":
        order.main.append("Fettuccini            51 SR")
        order.total=order.total+51
    case "9":
        break
    default:
        break
//        print("\nPlease enter your choise or 9 to back or 0 to exit ")
//        choise = readLine() ?? "0"
//        if choise == "9"
//        {
//            break
//        }
//        if choise == "0"
//        {
//            exit = choise
//
//        }
    }
}
//-------------------------------------------------------
// Drinks Menu
func drinks (){
    print("""
1- Fresh orange juice 🍹         16 SR
2- Pepsi 🍷                      6 SR
3- 7 up 🍸                       6 SR
4- Water                         3 SR
""")
    print("\nPlease enter your choise or 9 to back or 0 to exit")
    //drinks menu choise
    choise = readLine() ?? "0"
    print("\n")
    switch choise {
    case "0":
        exit = choise
    case "1":
        order.drinks.append("Fresh orange juice    16 SR")
        order.total=order.total+16
    case "2":
        order.drinks.append("Pepsi                 6 SR")
        order.total=order.total+6
    case "3":
        order.drinks.append("7 up                  6 SR")
        order.total=order.total+6
    case "4":
        order.drinks.append("Water                 3 SR")
        order.total=order.total+3
    case "9":
        break
    default:
        break
//        print("Please enter your choise or 9 to back or 0 to exit ")
//        choise = readLine() ?? "0"
//        if choise == "9"
//        {
//            break
//        }
//        if choise == "0"
//        {
//            exit = choise
//
//        }
    }
}
//-------------------------------------------------------
// Print order
func orderList (){
    print("\n---------------------------------------------------------")
    print("Your order is:\n")
    
    //appetizers
    if order.appetizers.isEmpty == false {
        for a in order.appetizers{
            print(a)
        }    }

    
    //main courses
    if order.main.isEmpty == false{
        for m in order.main{
            print(m)
        }    }

    //drinks
    if order.drinks.isEmpty == false{
        for d in order.drinks{
            print(d)
        }    }
    print("---------------------------\n Total: \(order.total)")
    print("\n---------------------------------------------------------")
}
//-------------------------------------------------------
// delivery or pick up
func applyOrder (){
    print("""
1- Pick up 🛍
2- Delivery 🚙
""")
    print("\nPlease enter your choise or 9 to back or 0 to exit")
    //drinks menu choise
    choise = readLine() ?? "0"
    print("\n")
    switch choise {
    case "0":
        exit = choise
    case "1":
        pickUp()
    case "2":
        address()
    case "9":
        break
    default:
        break
}
}
//-------------------------------------------------------
// Pick up
func pickUp (){
    print("---------------------------------------------------------")
    print("\nName: ")
    information.name = readLine() ?? ""
    print("Phone: ")
    information.phone = readLine() ?? ""
    print("\n---- Your order will be ready after 45 minutes 😋 ----")
    exit = "0"
}
//-------------------------------------------------------
// Delivery
func address (){
    print("---------------------------------------------------------")
    print("\nName: ")
    information.name = readLine() ?? ""
    print("Phone: ")
    information.phone = readLine() ?? ""
    print("Neighborhood:")
    information.neighborhood = readLine() ?? ""
    print("Street: ")
    information.street = readLine() ?? ""
    print("Home number: ")
    information.homeNum = readLine() ?? ""
    print("\n---- Your order will be deliverd in  60 - 80 minutes 🚗 ----")
    exit = "0"
}
