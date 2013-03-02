helpers do
  WRONG_RESPONSES = ["No way Jose", "Nope", "Come on buddy", "No", "Close, but no cigar", "Esa respuesta es una mierda", "chigau yo aho"]
  CORRECT_RESPONSES = ["Winner winner chicken dinner", "Yes!", "Correct!", "Show off", "Si senior", "Bien hecho tio", "dai atari!!"]
  
  def login(id)
    session[:user_id] = id
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    //memoization - allows it to cache the data so you don't have to keep going to the database to check the user id
    //if anything to the left of ||= is not nil, show that else go do the stuff on the right
    //the instance variable is just convention
  end

  def logged_in
    redirect '/' if current_user.nil?
  end

  def logout
    session.delete(:user_id)
  end

  def session_message
    session[:message]
  end

  def wrong_answer
    session[:message] = WRONG_RESPONSES.sample
  end

  def correct_answer
    session[:message] = CORRECT_RESPONSES.sample    
  end
end
