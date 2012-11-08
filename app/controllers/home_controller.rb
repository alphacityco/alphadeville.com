class HomeController < ApplicationController
  
  def index

  end

  def send_mail
    respond_to do |format|      
      
      status = 401
      if verify_recaptcha
        status = 202
        if !params[:user][:email].blank? && !params[:user][:message].blank? && params[:user][:email]=~/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
          ContactMailer.on_contact_us( params[:user][:email], params[:user][:message] ).deliver
          status = 200
        end
      end      

      format.json { render :json => { :status=> status }.to_json }
    end
  end
  
end
