class TechnologiesController < ApplicationController
  def index
    @technologies = Technology.all
    respond_to do |format|
      format.html
      format.csv {send_data @technologies.to_csv}
    end
  end

  def import
    Technology.import(params[:file])
    redirect_to technologies_path, notice: "Technologies Imported"
  end
end
