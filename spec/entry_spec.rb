require_relative '../models/entry'

RSpec.describe Entry do  #file is a spec file which tests Entry class

  describe "attributes" do #all specs will test Entry attributes

    it "should respond to name" do #each 'it' describes a new test
      entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      expect(entry).to respond_to(:name)
    end

    it "should respond to phone number" do
      entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      expect(entry).to respond_to(:phone_number)
    end

    it "should respond to email" do
      entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      expect(entry).to respond_to(:email)
    end

    describe "#to_s" do
     it "prints an entry as a string" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"

       expect(entry.to_s).to eq(expected_string)
     end

  end
end
