
class RumorsController < ApplicationController
  def index
    @rumors = Rumor.all
  end

  def new
#    @rumor = Rumor.new
  end

  def create
    @rumor = Rumor.new
    @rumor.a_author = params[:a_author]
    @rumor.content = params[:content]
    @rumor.save
    #    if @rumor.save
    #      flash[:success] = "Rumor Shared"
    #    else
    #      flash[:error] = "Problem while saving"
    #    end
    redirect_to rumor_path(@rumor.id)
  end

def show
  @rumor = Rumor.find(params[:id])
end

def edit
  @rumor = Rumor.find(params[:id])
end

def update
  @rumor = Rumor.find(params[:id])
  @rumor.update(rumor_params)
  redirect_to root_path
end

def destroy
  @rumor = Rumor.find(params[:id])
  @rumor.destroy
  redirect_to root_path
end

private
  def rumor_params
    params.require(:rumor).permit(:a_author, :content)
  end

end
