class AdmUsersController < ApplicationController

	before_action :authenticate_user!

	include AdmHelper

	layout "adm_layout"

	def index
		adm_check current_user.level

		@users = User.all.order('created_at DESC').paginate(page: params[:page], per_page: 10)
		@setting = Option.find(1)
	end

	def new
		adm_check current_user.level
		
		@user = User.new
		@setting = Option.find(1)
	end


end
