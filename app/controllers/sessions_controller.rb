class SessionsController < ApplicationController
 
  def new
  end

  def create # внутри этого действия хэш params имеет всю инф-ю, необх-ю для аутентиф-и польз-й по имейлу и паролю
  	user=User.find_by(email: params[:session][:email].downcase) # вытягиваем польз из бд по имейлу
  	if user && user.authenticate(params[:session][:password])
  	# авторизировать пользов и отправить на user's show page
  	sign_in user # dont understand
  	redirect_to user
  else
  	flash[:error] = 'Invalid email/password combination'
  	render 'new'
  end
end

  def destroy
  end

end



