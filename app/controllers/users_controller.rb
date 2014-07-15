class UsersController < ApplicationController
  def show
  	HardWorker.perform_async('bob', 5)
  end
end
