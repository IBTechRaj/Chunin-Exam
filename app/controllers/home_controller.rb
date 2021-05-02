class HomeController < ApplicationController
  def index
    @link = Link.new

    # render plain: "You IP address is #{client_ip}"
  end

  private def client_ip
    request.ip
  end

end
