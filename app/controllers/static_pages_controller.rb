class StaticPagesController < ApplicationController
  def home
  end

  def help
  end
  
  def about
    ＠sessio[:user_id]
    current_youser ||= Uer.find_by(id: session[:user_id])
  end
  
  def contact
  end

end
