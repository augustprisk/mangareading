class ChaptersController < ApplicationController
  def create
  	@manga = Manga.find(params[:manga_id])
  	@chapter = Manga.chapters.create(chapter_params)
  	redirect_to manga_path(@manga)
  end

  private
  	def chapter_params
  		params.require(:chapter).permit(:chapter_number, images: [])
  	end
end
