class TestController < ApplicationController
  def test
    @data = params[:data]

    respond_to do |format|
      format.html
      format.json {render json: @data}
    end
  end

  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html
      format.json {render json: @post}
    end
  end

  def test_constraints

  end
end
