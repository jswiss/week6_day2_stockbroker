class ClientsController < ApplicationController

	def index
		@clients = Client.all
	end

	def new
		@client = Client.new
	end

	def create
		@client = Client.find(params[:id])
	end

end
