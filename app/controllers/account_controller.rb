#
# $Id: account_controller.rb 1 2007-09-12 17:47:33Z nicb $
#
class AccountController < ApplicationController
  model   :user
# layout  'scaffold'

  def login
    case request.method
      when :post
        if session['user'] = User.authenticate(params['user_login'], params['user_password'])

          flash['notice']  = "Login successful"
		  next_action = session['user'].user_type == 'admin' ? "welcome_admin" : "welcome"
          redirect_back_or_default :action => next_action # , :protocol => "https://"
        else
          @login    = params['user_login']
          @message  = "Login unsuccessful"
      end
    end
  end
  
  def signup
    case request.method
      when :post
        @user = User.new(params['user'])
        
        if @user.save      
          session['user'] = User.authenticate(@user.login, params['user']['password'])
          flash['notice']  = "Signup successful"
          redirect_back_or_default :action => "welcome"          
        end
      when :get
        @user = User.new
    end      
  end  
  
  def delete
    if params['id'] and session['user']
      @user = User.find(params['id'])
      @user.destroy
    end
    redirect_back_or_default :action => "welcome"
  end  
    
  def logout
    session['user'] = nil
	redirect_to(:action => :login)
  end
    
  def welcome
  end

  def welcome_admin
  	@users = User.find(:all)
  end

  def admin_user
  	@user = User.find(params[:id])
  end
  
end
