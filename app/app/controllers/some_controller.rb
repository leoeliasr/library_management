# app/controllers/some_controller.rb
class SomeController < ApplicationController
    before_action :require_login, only: [:restricted_action]
  end
  