class SampleController < ApplicationController
def index
@sample = Sample.all
@sample = Sample.where(user_id: current_user.id)

end
def show
 @sample =Sample.find(params[:id])
end

def new
 @sample=Sample.new
end

def create
@sample=Sample.new(params[:sample].permit(:title,:desc))
@sample.user=current_user
 if @sample.save
 redirect_to sample_index_path, :notice => "ur post was saved"
else
render "new"
end
end

def destroy
@sample=Sample.find(params[:id])
@sample.destroy
redirect_to sample_index_path, :notice=>"ur item is deleted"
end
end
