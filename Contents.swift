import UIKit

//Intention: We are going to create a bank account that will allow us to make deposits, make withdrawals and transfer funds between two accouts.
//Because of our intentions, we know that we're going to need three functions at least!
class BankAccount {
    //properties will go below here:
    
    var accountName : String
    var currentBalance : Double
    var routingNumber : Int
    
    //add your initializer, which will contain your properties above
    
    init(){
        accountName = "Name123"
        currentBalance = 0.0
        routingNumber = 0
    }
    //Your challenge is to create functions for depositing, withdrawing, setting account name, and setting routing number - 4 functions
    
    func makeDeposit(depositAmount : Double) {
        currentBalance = currentBalance + depositAmount
    }
    func makeWithdrawal(withdrawalAmount : Double){
        currentBalance = currentBalance - withdrawalAmount
    }
    func setAccountName(name : String){
        accountName = name
    }
    func setRoutingNumber(newRoutingNumber : Int){
        routingNumber = newRoutingNumber
    }
    //this check everything function allows me to make sure that I set everything correctly!
    func checkEverything(){
        print(accountName)
        print(currentBalance)
        print(routingNumber)
    }
    //I need to create a function wher I am able to transfer money from Elora's account into Jamie's account.
    
    //For sender and recipient, I am going to create OBJECTS within a function. Meaning that I am going to create a bank account everytime I access this account transfer. This is going to be important when we work with Aviatrix (project) on Wednesday.
    
    func accountTransfer(sender: BankAccount, recipient: BankAccount, transferAmount: Double, senderRoutingNumber: Int){
        
        if sender.routingNumber == senderRoutingNumber{
            sender.currentBalance = sender.currentBalance - transferAmount
            recipient.currentBalance = recipient.currentBalance + transferAmount
            print("The recipient has successfully received the transfer!")
        }else{
            print("I'm sorry, but the info that you typed in is not correct! Please try a different routing number.")
        }
    }
}

//This is outside of the class, I am going to creat bank acounts(objects)

var jamiesBankAccount = BankAccount()
var eloraBankAccount = BankAccount()

eloraBankAccount.setAccountName(name: "Elora's Bank Account")
eloraBankAccount.setRoutingNumber(newRoutingNumber: 999)
eloraBankAccount.makeDeposit(depositAmount: 1000.0)

jamiesBankAccount.setAccountName(name: "Jamie's Bank Account")
jamiesBankAccount.setRoutingNumber(newRoutingNumber: 555)
jamiesBankAccount.makeDeposit(depositAmount: 10.0)

eloraBankAccount.accountTransfer(sender: eloraBankAccount, recipient: jamiesBankAccount, transferAmount: 1.00, senderRoutingNumber: 999)



jamiesBankAccount.checkEverything()
eloraBankAccount.checkEverything()

