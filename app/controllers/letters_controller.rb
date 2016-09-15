class LettersController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def index
    @letters=Letter.all
  end
  def upvote
    @letter=Letter.find params[:id]
    @letter.update_attribute :scroe , @letter.scroe+1
    LetterRedisRepository.increament @letter
    redirect_to  letters_path,notice: "upvotedd"
  end
  def downvote
    @letter=Letter.find params[:id]
    @letter.update_attribute :scroe , @letter.scroe-1
    LetterRedisRepository.decreament @letter
    redirect_to  letters_path,notice: "downvotedd"
  end

  
end
