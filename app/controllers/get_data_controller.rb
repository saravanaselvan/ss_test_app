class GetDataController < ApplicationController

	def create
		if params['jsonString'] != ""
			error_code = Ss2.send_js_request request, params
		end	
    respond_to do |format|
      format.json {
        render :json => { error_code: error_code}
      }
    end			
	end
end
