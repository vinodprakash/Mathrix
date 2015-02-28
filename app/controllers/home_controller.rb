class HomeController < ApplicationController
  def index
  	  @register = Register.new
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
  @contact = Contact.new
  end
end
