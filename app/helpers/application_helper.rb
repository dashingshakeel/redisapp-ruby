module ApplicationHelper
  def top_letter_cache 
    "top-leeters/"+ Letter.maximum(:updated_at).to_i.to_s
  end
end
