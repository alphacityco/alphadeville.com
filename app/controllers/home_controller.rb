class HomeController < ApplicationController
  
  def index

  end

  def send_mail
    respond_to do |format|      
      
      status = 202
      if verify_recaptcha && !params[:user][:email].blank? && !params[:user][:message].blank?
        status = 200
      end

      format.json { render :json => { :status=> status }.to_json }
    end
  end
  
end
