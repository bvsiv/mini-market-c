require 'rails_helper'

describe Customer do
  subject { described_class.new(params) }
  let(:params) {{name: "Justyna Witkowska", email: email, password: "1234"}}

  context "with empty params" do
    let(:params) {nil}
    it "validates Customer without params" do
      expect(subject).not_to be_valid
    end
  end

  context "with valid params" do
    let(:email) {"justyna@gmail.com"}
    it "validates Customer with params" do
      expect(subject).to be_valid
    end
  end

  context "with invalid email format" do
    let(:email) {"justynagmail.com"}
    it "validates Customer with params" do
      expect(subject).not_to be_valid
    end
  end

end
