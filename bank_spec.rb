require "./bank"
RSpec.describe Bank do
  #context可以打成describe
  context "存錢功能" do
    it "可以領錢" do
      #3A   
      #Arrange
      account = Bank.new(10) 
      #Act
      account.deposit(5) 
      #Assert
      expect(account.balance).to be 15
    end

    it "不可以存 0 元或是小於 0 元的金額（越存錢越少！）" do
      account = Bank.new(10)
      expect { account.deposit(-5) }.to raise_exception BankError

      #expect{account.deposit(-5)}.to be 10

    end

    it "可以領錢" do
      account = Bank.new(10)
      money = account.withdraw(1)

      expect(money).to be 1
      expect(account.balance).to be 9
    end

    it "不能領負的錢" do
      account = Bank.new(10)
      expect { account.withdraw(-3) }.to raise_exception BankError
    end

    it "不能領超過餘額的錢" do
      account = Bank.new(10)
      expect { account.withdraw(20) }.to raise_exception BankAmountNegativeError
    end
    
  end
end