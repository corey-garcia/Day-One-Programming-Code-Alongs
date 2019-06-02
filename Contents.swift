import UIKit




//I: Code Along: Print Statement
print("Hi, Kode with Klossy Students")


//II.I
//Why might we not want to do this?
//What do we want the computer to do?
print("Hi Corey")
print("Hi Megan")
print("Hi Karlie")
print("Hi Josh")


//If we just ran this, would we expect anything to show up?
func printsAnything(userInput: String) {
    var thingToPrint = userInput
    print(thingToPrint)
}


//what would we expect on the console if we were to run this?
printsAnything(userInput: "Hi, Kode with Klossy Students")


//II.II
//We want to build a function which takes in a number from the User, multiplies
//it by two, then prints out the result to the console


//incorrect version: the input is a string, and we're trying to multiply a string by a number
//which will not work because they're different data types: string vs Integer

func doubleInput(thingThatGoesIntoTheFunction: String) {
    var resultToPrint = thingThatGoesIntoTheFunction
    resultToPrint * 2
    print(resultToPrint)
}

//correct version:
func doubleInput(thingThatGoesIntoTheFunction: String) {
    var resultToPrint : String
    resultToPrint = thingThatGoesIntoTheFunction
    var intResult = Int(resultToPrint)
    intResult = intResult! * 2
    print(intResult!)
}


//what number should we expect to see on the console?
doubleInput(thingThatGoesIntoTheFunction: "6")


//II.III Conditionals section

//this function tells how much money you have in your bank account. If it's less than $50,
//we want the function to tell us 'You Don't Have That Much Money Left' along with our balance
//If our balance is more than %50, we want the function to tell us 'You have a lot of money left'
//along with our statement balance.


//incorrect version: this will not print out our current Balance
//because we did not use interpolation; it will just print out currentBalance
func checkBankBalance(currentBalance: Int) {
    if currentBalance < 50 {
        print("Your Balance is Low. Your Current Balance is currentBalance")
    } else {
        print ("Your Balance is Good. Your Current Balance is currentBalance")
    }
}


//correct version: uses interPolation to tell us our Current Bank Balance
func checkBankBalance(currentBalance: Int) {
    if currentBalance < 50 {
        print("Your Balance is Low. Your Current Balance is \(currentBalance)")
    } else {
        print ("Your Balance is Good. Your Current Balance is \(currentBalance)")
    }
}


//activity: Update Bank Balance
//project requirements: create a function that takes three parameters: the user's current bank balance,
//a debit that represents  how much is being taken out of the account or how much is being put into the account
//a Boolean which represents whether or not the debit represents a despoit. The functions should print out to the console
//the amount of the user's updated bank balance, and the amount the user withdrew or desposited

func updateBankBalance(currentBalance: Int, debit: Int, madeADeposit: Bool) {
    var newbalance = currentBalance
    if madeADeposit {
        newbalance = currentBalance + debit
        print("You made a deposit to your account. You deposited \(debit) dollars. Your current balance is \(newbalance)")
    } else {
        //case where we know we're withdrawing something from the account
        newbalance = currentBalance - debit
        print("You made a withdrawl to your account. You withdrew \(debit) dollars. Your current balance is \(newbalance)")
    }
}

//activity: Grading Scheme
//project requirements: create a function that takes in a student's grade on their test, and prints out what grade the student received, along with
//the score that they got on their test





