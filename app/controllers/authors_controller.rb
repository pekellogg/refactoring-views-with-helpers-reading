class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  private

	def author_params
		params.require(:author).permit(:name, :genre, :bio, post_ids: [])
	end
end
