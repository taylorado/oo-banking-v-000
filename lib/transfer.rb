class Transfer
  # your code here
  attr_accessor :status
  attr_reader :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?
    (@sender.valid? && @receiver.valid?)
  end

  def execute_transaction
    if (@sender.valid? == false  || @sender.balance < @amount)
      @status = "rejected"
      "Transaction rejected. Please check your account balance."

    else
    end
  end


end
