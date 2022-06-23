# frozen_string_literal: true

RSpec.describe AccountSafe do
  it "has a version number" do
    expect(AccountSafe::VERSION).not_to be nil
  end

  it "calculate assets given liabilites and equity" do
    expect(AccountSafe.assets(liab: 10,  equ: 10)).to eq(20)
  end
end
