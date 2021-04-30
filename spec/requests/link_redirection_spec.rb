require 'rails_helper'

RSpec.describe "Link redirection", type: :request do

    it "redirects to the given URL with short link" do
        url = "https://link.springer.com/chapter/10.1057%2F9781403980212_4"
        shortener = Shortener.new(url)
        link = shortener.generate_short_link

        get link.shortened_url
        expect(response).to redirect_to(link.original_url)
    end

end