class DevelopersController < ApplicationController

  http_basic_authenticate_with name: 'Twirx', password: 'maslenak', except: [:index, :show]

  def index
    @developers = Developer.all
  end

  def show
    @developer = Developer.find(params[:id])
    @phones = Phone.all
    @tablets = Tablet.all
    @transformers = Transformer.all
    @watches = Watch.all
  end

  def new
    @developer = Developer.new
    @phones = Phone.all
    @tablets = Tablet.all
    @transformers = Transformer.all
    @watches = Watch.all
  end

  def edit
    @developer = Developer.find(params[:id])
    @phones = Phone.all
    @tablets = Tablet.all
    @transformers = Transformer.all
    @watches = Watch.all
  end

  def create
    @developer = Developer.new(developer_params)

    if @developer.save
      redirect_to @developer
    else
      render 'new'
    end
  end

  def update
    @developer = Developer.find(params[:id])

    if @developer.update(developer_params)
      redirect_to @developer
    else
      render 'edit'
    end
  end

  def destroy
    @developer = Developer.find(params[:id])
    @developer.destroy

    redirect_to developers_path
  end

  private
    def developer_params
      params.require(:developer).permit(:name, :description, :devices, :founded, :founders)
    end
end
