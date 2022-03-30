import UIKit
import Darwin

//type inference with floats and doubles (lecture discussion)
var myDoubleValue = 10.0
var myFloatValue = Float(10.0)
var myOtherFloat: Float = 5.0

//printing values
print("\n--- printing values ---")
print(myFloatValue,myOtherFloat, separator: ", \n", terminator: ".")
print(myFloatValue,myOtherFloat)

//string interpolation
print("\n--- string interpolation ---")
var name = "Lindsay"
print("Hello, \(name)")
print("\\(^.^)/")

//if statements (showing that brackets are okay now)
print("\n--- if statements (showing that brackets are okay now) ---")
var cool: Bool = true
if (cool) {
    print("you must be lindsay")
}

//illustrating no ++ operator
var myCoolInt = 10
//myCoolInt++ //doesn't work, no ++
myCoolInt+=1

//a loop equivalent to for (int i = 0; i < 10; i+=3)
print("\n--- a loop equivalent to for (int i = 0; i < 10; i+=3) ---")
for i in (0..<10) where i % 3 == 0
{
    print(i)
}

//while loop
print("\n--- while loop ---")
while cool
{
    print("Lindsay was cool once")
    cool = false
}

//foreach loop over an array
print("\n--- foreach loop over an array ---")
var myFriends = ["Aiden", "Not Nikita at all no way"]
for friend in myFriends
{
    print(friend)
}
//same loop, but getting the index
print("\n--- same loop, but getting the index ---")
for (i, friend) in myFriends.enumerated()
{
    print(i)
    print(friend)
}

//function sytnax - basic
print("\n--- function sytnax - basic ---")
func myAddingFunction() -> Int
{
    return 5+5
}
print(myAddingFunction())

//function labels (remember the robo voice? good times)
print("\n--- function labels (remember the robo voice? good times) ---")
func sayHello(_ name: String)
{
    print("Hello \(name)")
}
sayHello("Lindsay")

//nullables
print("\n--- nullables ---")
var myBoolVariable : Bool = true
//myBoolVariable = nil //not allowed

var isCool : Bool? = true
print("Lindsay is \(isCool)") //prints "Lindsay is Optional(cool)"
isCool = nil
print("Lindsay is \(isCool)") //prints "Lindsay is nil"

var nickname : String? = "Wouldnt you like to know"
//nickname = nil //uncomment this line to make forcibly unwrap crash below

//forcibly unwrap nullable
print("Lindsays alter ego is \(nickname!)")

//optional binding (safe, even if nickname = nil
print("\n--- optional binding ---")
if let name = nickname //we tried to bind nickname to name but we cannot because its nil go home
{
    print("Lindsay alter ego is \(name)")
}
else
{
    print("Lindsay has no other name")
}

//guards (had to be in a function to compile (guard must have a return in the else)
print("\n--- guard sample ---")
func guardSample()
{
    guard let name2 = nickname else
    {
        print("nickname was nil, abort")
        return
    }
    
    print("name2 was \(name2)")
}
guardSample()

/* sample output:
 
 
 --- printing values ---
 10.0,
 5.0.10.0 5.0

 --- string interpolation ---
 Hello, Lindsay
 \(^.^)/

 --- if statements (showing that brackets are okay now) ---
 you must be lindsay

 --- a loop equivalent to for (int i = 0; i < 10; i+=3) ---
 0
 3
 6
 9

 --- while loop ---
 Lindsay was cool once

 --- foreach loop over an array ---
 Aiden
 Not Nikita at all no way

 --- same loop, but getting the index ---
 0
 Aiden
 1
 Not Nikita at all no way

 --- function sytnax - basic ---
 10

 --- function labels (remember the robo voice? good times) ---
 Hello Lindsay

 --- nullables ---
 Lindsay is Optional(true)
 Lindsay is nil
 Lindsays alter ego is Wouldnt you like to know

 --- optional binding ---
 Lindsay alter ego is Wouldnt you like to know

 --- guard sample ---
 name2 was Wouldnt you like to know

 
 */
