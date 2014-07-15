class UsersController < ApplicationController
  def show
  	puts 'Before worker'
  	HardWorker.perform_async('bob', 5)
  	puts 'After worker'
  end
end
