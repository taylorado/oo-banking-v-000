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
    (@sender.valid? && @receiver.valid? && @sender.balance > @amount)
  end

  def execute_transaction
    if self.valid? == false || @status == "completed"
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    else
      @sender.deposit(-@amount)
      @receiver.deposit(@amount)
      @status = "complete"
    end
  end


end
