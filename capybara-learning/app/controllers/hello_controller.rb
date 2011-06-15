class HelloController < ApplicationController
  def world
  end

  def items
    # render :json => { :result => [] }
    render :json => { :result => [1, 3, 5, 7, 9] }
  end
end
