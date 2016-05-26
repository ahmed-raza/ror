class AssembliesController < ApplicationController
  def index
    @assemblies = Assembly.all
  end

  def show
    @assembly = Assembly.find(params[:id])
  end

  def new
    @assembly = Assembly.new
    @parts = Part.all
  end

  def create
    @assembly = Assembly.new(params[:assembly])
    # @parts = Part.find(params[:assembly][:parts])
    # @assembly.parts << @parts

    if @assembly.save
      redirect_to assemblies_path, :notice => "Assembly created successfully."
    else
      render "new"
    end
  end

end
