class Account
  def gamma(input_val, quantity, year_to_date)
    important_value_1 = (input_val * quantity) + delta
    important_value_2 = (input_val * year_to_date) + 100
    if (year_to_date - important_value_1) > 100
      important_value_2 -= 20
    end
    important_value_3 = important_value_2 * 7
    # ...
    important_value_3 - 2 * important_value_1
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
  end
end