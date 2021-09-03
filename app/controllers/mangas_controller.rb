class MangasController < ApplicationController
  def index
  	@mangas =  Manga.all
  end

  def show
  	@manga = Manga.find(params[:id])
  end

  def new
  	@manga = Manga.new
  end

  def edit
  end

  def create
  	@manga = Manga.new(manga_params)

    if @manga.save
      redirect_to @manga
    else
      render :new
    end
  end

  def destroy
    @manga = Manga.find(params[:id])
    @manga.destroy

    redirect_to root_path
  end

  private

  	def manga_params
  		params.require(:manga).permit(:title, :image)
  	end
end
