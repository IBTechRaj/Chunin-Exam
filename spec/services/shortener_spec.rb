require "rails_helper"

RSpec.describe Shortener do
it "shortens a given URL to a 7 char lookup code" do
    url="https://link.springer.com/chapter/10.1057%2F9781403980212_4"
shortener = Shortener.new(url)
expect(shortener.lookup_code.length).to eq(7)
end


end