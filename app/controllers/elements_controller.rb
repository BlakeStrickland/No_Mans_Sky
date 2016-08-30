class ElementsController < ApplicationController
  def index
    @elements = Element.all
    respond_to do |format|
      format.html
      format.csv {send_data @elements.to_csv}
    end
  end

  def import
    Element.import(params[:file])
    redirect_to elements_path, notice: "Elements Imported"
  end
end
