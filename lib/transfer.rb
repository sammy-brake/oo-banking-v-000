class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount
    @status = "pending"
  end 
  
  def valid?
    sender.valid? && receiver.valid?
  end 
  
  def execute_transaction
<<<<<<< HEAD
   if @status == "pending" && valid? 
    sender.balance -= amount 
    receiver.balance += amount 
    @status = "football"
   else
   "Transaction rejected. Please check your account balance."
   @status = "rejected"
   end 
=======
   if @status == "pending" && self.valid? 
    sender.balance -= amount 
    receiver.balance += amount 
    @status = "complete"
 else
   
 end 
>>>>>>> b9f45c57ab44ad8601613badc83da4bfe3be7ee0
  
  end 
  
  def reverse_transfer
    if @status == "complete"
      sender.balance += amount 
      receiver.balance -= amount
      @status = "reversed"
    end 
  end 
end
