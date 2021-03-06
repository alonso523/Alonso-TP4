#permite crear la sesion de usuario para la autenticacion
class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    render 'inicio/menu', :notice => "Signed in!"
  end

def destroy
  session[:user_id] = nil
  render 'inicio/index', :notice => "Signed out!"
end

end
