class RfidController < ApplicationController
	def show
		@rfid = Rfid.find(params[:id])
	end
end
