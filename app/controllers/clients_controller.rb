class ClientsController < ApplicationController
  def show
    @client = Client.find params[:id]
  end

  def new
    @client = Client.new
  end

  def create
    # TODO: create Client
  end

  def edit
    @client = Client.find params[:id]
  end

  def update
    @client = Client.find params[:id]
    # TODO: Updating Client
  end

  private
  def clients_params
     params.require(:clients).permit(:email, :password, :photo, :bio, :video)
  end
end
