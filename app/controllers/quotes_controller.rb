class QuotesController < Rulers::Controller
  
  def a_quote
    string ="There is nothing either good or bad " +
      "but thinking makes it so." +
      "\n<br><pre>\n<br>#{env}\n<br></pre>"
    render :a_quote, :noun => :winking
  end
end
