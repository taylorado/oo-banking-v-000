class Transfer
  # your code here
  attr_accessor :status
  attr_reader :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @status = "Pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end
end
