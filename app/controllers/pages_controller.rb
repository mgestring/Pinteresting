class PagesController < ApplicationController
  def home
  end

  def about
  end

  def therorlist

  	@hide_form = params[:hide_form] || false
  	@company_name = params[:company_name] || @company_name || ""
  	@individual_name = params[:individual_name] || ""
  	@email = params[:email] || ""

  end

# submit method is being used to record the log information
  def submit
    
  	log = Log.new do |u|
	  	u.company_name = params[:company_name]
	  	u.individual_name = params[:individual_name]
	  	u.email = params[:email]
	  	u.date_time = DateTime.current
	  	u.ip = request.remote_ip
  	end

  	begin
  		log.save!
  	rescue ActiveRecord::RecordInvalid => e
      flash[:error] = e.message
      redirect_to therorlist_path(company_name: params[:company_name],
        individual_name: params[:individual_name],
        email: params[:email]) and return
  	end
    
    text = "Log created. Below are shown the log entries created till now:"
    
    Log.find(:all).each do |a|
      text << "<br />" + " id: " + a.id.to_s + " company_name " + a.company_name + " individual_name " + a.individual_name + " email " + a.email + " date_time " + a.date_time.to_s + " ip " + a.ip
    end
    flash[:success] = text.html_safe
    redirect_to therorlist_path(hide_form: true) and return

  end

  def reportahire
  end


end
