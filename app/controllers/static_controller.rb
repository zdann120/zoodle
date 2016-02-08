class StaticController < ApplicationController
  def index
  	@polls = Poll.all
  end
end
