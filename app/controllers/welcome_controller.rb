class WelcomeController < ApplicationController
  def index
    if session[:key].blank? then
      session[:key] = 0
      @txt = "セッションを作成したよ"
    else
      session[:key] += 1
      @txt = "あなたは#{session[:key]}回このページを閲覧しました。"
    end
  end
end
