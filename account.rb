class Account
  def initialize(interest_rate)
    @interest_rate = interest_rate
  end

  def interest_for_amount_days(amount, days)
    @interest_rate * amount * days / 365
  end

  def gamma(input_val, quantity, year_to_date)
    Gamma.new(self, input_val, quantity, year_to_date).compute
  end

  def delta
    1234
  end

  class Gamma
    attr_reader :account,
                :input_val,
                :quantity,
                :year_to_date,
                :important_value_1,
                :important_value_2,
                :important_value_3

    def initialize(account, input_val, quantity, year_to_date)
      @account = account
      @input_val = input_val
      @quantity = quantity
      @year_to_date = year_to_date
    end

    def compute
      @important_value_1 = (input_val * quantity) + account.delta
      @important_value_2 = (input_val * year_to_date) + 100

      important_thing

      @important_value_3 = important_value_2 * 7
      # ...
      important_value_3 - 2 * important_value_1
    end

    def important_thing
      if (year_to_date - important_value_1) > 100
        @important_value_2 -= 20
      end
    end
  end
end