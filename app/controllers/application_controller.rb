class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private
  # 現在のユーザーを取得する
  # @_current_teamが空の場合は、session情報をキーにしてDBから検索する
  def current_team
    @_current_team ||= team.find_by(id: session[:team_id])
  end
end
