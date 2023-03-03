class UsersController < ApplicationController
  def show
    @user = current_user
    authorize @user
    @markers = {
        lat: @user.latitude,
        lng: @user.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {user: @user}),
        marker_html: render_to_string(partial: "marker")
    }

  end

  def index
    @users = Users.all
    # The `geocoded` scope filters only users with coordinates
  end
end
