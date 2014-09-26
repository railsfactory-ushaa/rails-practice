class AvailabilitiesController < ApplicationController
  before_filter :authenticate_user!, :except => [:new]

  def new

  $s = params[:device_id]
  availabilities=Schedule.new
  end
  
     def display
          n=params[:from_date]
         x=params[:to_date]
	a=params[:availabilities][:"from_time(4i)"]
         c=params[:availabilities][:"from_time(5i)"]
	 b=params[:availabilities][:"to_time(4i)"]
         d=params[:availabilities][:"to_time(5i)"]
	e=a << ":" << c
	 q=b << ":" << d
         #s=Schedule.find(:all,:conditions=>["fromdate <=? AND todate >=?",n,x])
	 s= Schedule.where("fromdate <=? AND todate >=? AND fromtime <=? AND totime >=? ",n,x,e,q)

         #s.count
	# s.each do |so|
        # so=Schedule.where("fromtime >=? AND totime >=?",e,q)
	#end
                 
                  if s.count == 0
                  flash[:notice] = "Date is Available..."
                  
			 
		  else
                   flash[:notice] = "Sorry!!The date is not available."

               end 


    
end
























end
