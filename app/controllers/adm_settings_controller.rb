class AdmSettingsController < ApplicationController

	before_action :authenticate_user!

	include AdmHelper

	layout "adm_layout"

	def index
		@setting = Option.find(1)
	end

	def update
		@setting = Option.find(1)
		@setting.site_title = params[:option][:site_title]
		@setting.site_description = params[:option][:site_description]
		@setting.site_domain = params[:option][:site_domain]
		@setting_save = @setting.save


		if @option_save 
			redirect_to "/adm/settings"
		else
			render "index"
		end
	end

end
