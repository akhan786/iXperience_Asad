class WelcomeController < ApplicationController
  def index
  	@welcome_message = "Welcome to the Classmates App!"
  end
  def list
  	@classmates = ['Matthew','Asad', 'Arya', 'Charlotte', 'Emily', 'Alex', 'Dilys', 'Yunny', 'Enrique','Danny', 'Stanley', 'Pavi', 'Molly', 'Austin', 'Han', 'Gloryah','Oscar', 'Susana', 'Kate', 'Blake', 'Zach', 'Kaan', 'Urvish','Ben','Sofie','Jack','Bailey', 'Olivia']
  	
  	
  end	
end
