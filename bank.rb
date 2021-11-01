class BankError < StandardError
end
class BankAmountNegativeError < StandardError
end

class Bank
  def initialize(money)
    @money = money
  end

  def deposit(amount)
    if amount <= 0
      raise BankError
    end

    @money += amount
  end

  def balance
     @money
  end

  def withdraw(amount)
    if amount <= 0
      raise BankError.new("WTF")
    end

    if amount > @money
      raise BankAmountNegativeError
    end
    
    @money -= amount
    amount
  end


end