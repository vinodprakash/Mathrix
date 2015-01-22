class HomeController < ApplicationController
  def index
  	@register = Register.new
  @contact = Contact.new
  end
  def team
  	
  end
  def events
  	
  end
  def gallery
  	
  end
  def aboutus
  	
  end
  def sponsors
  	
  end
  def contactus
  @register = Register.new
  @contact = Contact.new
  end
end
