class AtenderController < ApplicationController
  
  def index
  	@fila = Fila.find(1)
  end
end
