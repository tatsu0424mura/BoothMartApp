class SessionsController < ApplicationController
 
  def new
  end

  def create
    user = User.find_by_login(params[:login])
    if user
      if user.password == params[:password]
        session[:login_id] = user.id
        redirect_to boothmarts_url, notice: "Hello, #{user.login}"
      else
        redirect_to root_url, notice: "Wrong Password!"
      end
    else
      redirect_to root_url, notice: "Unknown Login ID!" 
    end
  end
  
  def destroy
    reset.session
    # session[:login_id] = nil
    flash[:notice] = "Successfully logged out!"
    redirect_to root_url
      
  end
    

    
  
end
