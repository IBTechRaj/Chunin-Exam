require "rails_helper"

RSpec.describe Shortener do
it "shortens a given URL to a 7 char lookup code" do
    url="https://link.springer.com/chapter/10.1057%2F9781403980212_4"
shortener = Shortener.new(url)
expect(shortener.lookup_code.length).to eq(7)
end

it "gives each URL its own lookup code" do

    url="https://link.springer.com/chapter/10.1057%2F9781403980212_4"
    shortener = Shortener.new(url)
    code_1 = shortener.lookup_code

    url="https://link.springer.com/chapter/10.1057%2F9781403980214_8"
    shortener = Shortener.new(url)
    code_2 = shortener.lookup_code

    expect(code_2).not_to eq(code_1)
end

end