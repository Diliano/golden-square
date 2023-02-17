require 'password_checker'

RSpec.describe PasswordChecker do
  it "returns true if password is equal to or longer than 8 characters" do
    password_checker = PasswordChecker.new()
    expect(password_checker.check("greatpassword")).to eq true
  end

  it "fails and returns an error when the passowrd is less tahn 8 characters" do
    password_checker = PasswordChecker.new()
    expect { password_checker.check("great") }.to raise_error "Invalid password, must be 8+ characters."
  end
end