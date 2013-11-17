require 'spec_helper'

describe Guest do

  before { @guest = Guest.new(name: "Con Way", email: "conway@beach.com", phone: "212-343-4567", comments:"I need some help, thanks") }

  subject { @guest }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:phone) }
  it { should respond_to(:comments) }

  it { should be_valid}

  describe "when name is not present" do
    before { @guest.name = " " }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @guest.email = " " }
    it { should_not be_valid }
  end  

  describe "when phone is not present" do
    before { @guest.phone = " " }
    it { should_not be_valid }
  end  

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @guest.email = invalid_address
        expect(@guest).not_to be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @guest.email = valid_address
        expect(@guest).to be_valid
      end
    end
  end  

  describe "email address with mixed case" do
    let(:mixed_case_email) { "Foo@ExAMPle.CoM" }

    it "should be saved as all lower-case" do
      @guest.email = mixed_case_email
      @guest.save
      expect(@guest.reload.email).to eq mixed_case_email.downcase
    end
  end  

  describe "when phone format is invalid" do
    it "should be invalid" do
      numbers = %w[73649857,234-3252345, (345)235-2354, 2354]
      numbers.each do |invalid_phone|
        @guest.phone = invalid_phone
        expect(@guest).not_to be_valid
      end
    end
  end

  describe "when phone format is valid" do
    it "should be valid" do
      @guest.phone = "232-234-2353"
      expect(@guest).to be_valid
    end
  end

end