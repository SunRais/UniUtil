class UsersController < ApplicationController
	def index
		
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
	end

	private

		def user_params
			params.require(:user).permit(:nome, :cognome, :sesso, :eta, :indirizzo, :citta, :numero_di_telefono, :email, :numero_matricola, :password)
		end
end
