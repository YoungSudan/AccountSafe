# frozen_string_literal: true

RSpec.describe AccountSafe do
  before(:all) do
    @balance = AccountSafe::Balance.new(assets: 20, liab: 10,  equ: 10)
    @income = AccountSafe::Income.new(rev: 100, exp: 30, cogs: 10, opp_ex: 10)
  end

  it 'has a version number' do
    expect(AccountSafe::VERSION).not_to be nil
  end

  describe AccountSafe::Balance do
    it 'calculate assets given liabilites and equity' do
      expect(@balance.assets).to eq(20)
    end

    it 'validates that assets = liabilities + equity' do
      expect(@balance.validate_balance!).to eq(true)
      @balance.liab = 0
      expect(@balance.validate_balance!).to eq(false)
    end
  end

  describe AccountSafe::Income do
    it 'calculate net income' do
      expect(@income.net_income).to eq(70)
    end

    it 'calculate gross profit' do
      expect(@income.gross_prof).to eq(90)
    end

    it 'calculate operating income' do
      expect(@income.opp_income).to eq(80)
    end
  end
end
