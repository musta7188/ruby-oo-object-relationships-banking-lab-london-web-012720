class Transfer


  attr_accessor :status, :receiver, :amount, :sender

   def initialize(sender, receiver, amount)
     @sender = sender
     @receiver = receiver
     @amount = amount
     @status = "pending"
   end

   def valid?
    sender.valid? && receiver.valid? ? true : false
   end

   def execute_transaction
    if self.status == "pending"
    if self.valid? === true && sender.balance >= self.amount
  receiver.balance += self.amount 
  sender.balance -= self.amount
   self.status = "complete" 
    else
      self.status = "rejected"
  "Transaction rejected. Please check your account balance."
    end
  end
   end

   def reverse_transfer
   
    if status == "complete"
    sender.balance += @amount ; receiver.balance -= @amount
    self.status =  "reversed"
    self.status = "reversed"

    end
  
   
   end
 end
