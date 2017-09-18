class CorsairsController < ApplicationController
  def index
    @corsairs=Corsair.all
  end

  def show
    @corsair=Corsair.find(params[:id])
  end

  def edit
    @corsair=Corsair.find(params[:id])
  end

  def update
    @corsair=Corsair.find(params[:id])
    @corsair.update(corsair_params)
    if @corsair.save
      flash[:success] = "Modification réussie !"
      redirect_to corsairs_path
    else
      render 'update'
    end
  end

  def delete

  end

  def destroy
    @corsair=Corsair.find(params[:id])
    @corsair.destroy
    redirect_to corsairs_path
  end

  def new
    @corsair=Corsair.new
  end

  def create
  @corsair = Corsair.new(corsair_params)
  if @corsair.save
    flash[:success] = "Inscription réussie !"
    redirect_to corsairs_path
  else
    render 'new'
  end
end

  private

  def corsair_params
    params.require(:corsair).permit(:first_name, :age, :slack_handle, :github_handle, :bio, :likeness)
  end
end
