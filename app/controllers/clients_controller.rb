class ClientsController < ApplicationController

  before_action :find_client, only: [:edit, :update]
  before_action :client, only: [:new]

  def index
    @clients = Client.all
  end

  def new
  end

  def create
    @client = Client.new(name: params[:client][:name], seller_ids: params[:client][:seller_ids])
    if @client.save
      redirect_to clients_path
    else 
      render :new
    end
  end

  def edit
  end

  def update
    redirect_to clients_path if @client.update(name: params[:client][:name], seller_ids: params[:client][:seller_ids])
  end

  private 

  def find_client
    @client = Client.find(params[:id])
  end

  def client
    @client ||= Client.new
  end

end
