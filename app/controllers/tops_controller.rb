class TopsController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]
end
