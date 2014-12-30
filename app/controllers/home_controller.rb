class HomeController < ApplicationController
  def index
  	@register = Register.new
	@contact = Contact.new
  end
end
