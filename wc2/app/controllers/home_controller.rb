require 'koala'
class HomeController < ApplicationController
  before_action :set_auth

  def index
  end

  def profile
    unless session.nil?
      @graph = Koala::Facebook::API.new(session['omniauth']['credentials']['token'])
      posts = @graph.get_connections("me", "feed")
      @long_string = "";
      posts.each do |post|
        if post['message']
          @long_string += post['message'].gsub('\n', ' ') + " "
        end
      end
    end
  end

  private
  def set_auth
  	@auth = session[:omniauth] if session[:omniauth]
  end
end
