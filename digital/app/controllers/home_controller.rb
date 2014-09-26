class HomeController < ApplicationController
def index

end
def search
  @location = Location.find(params[:location])
end
end
