class ConnectsController < ApplicationController
  def index
    @coffees = Coffee.all
  end
end
