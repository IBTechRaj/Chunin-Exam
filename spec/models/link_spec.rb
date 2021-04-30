require 'rails_helper'


RSpec.describe Link, type: :model do

  it "is invalid if it does not have a lookup code" do
    link=Link.new(
        original_url: "https://link.springer.com/chapter/10.1057%2F9781403980212_4",
        
    )
    expect(link.valid?).to be(false)
end
it "is invalid if it does not have an original URL" do
    link=Link.new(
        lookup_code: "1234567"
    )
    expect(link.valid?).to be(false)
end


it "is invalid if the lookup code already exists" do
    link=Link.new(
        original_url: "https://link.springer.com/chapter/10.1057%2F9781403980212_4",
        lookup_code: "1234567"
    )
    link.save

    link_2=Link.new(
        original_url: "https://link.springer.com/chapter/10.1057%2F9781403980212_4",
        lookup_code: "1234567"
    )
    link.save


    expect(link_2.valid?).to be(false)
end

# it "is valid if it has an original URL and a lookup code" do
#     link=Link.new(
#         original_url: "therhejrhe",
#         lookup_code: "1234567"
#     )
#     expect(link.valid?).to be(false)
# end
end
