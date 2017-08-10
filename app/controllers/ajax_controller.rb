class AjaxController < ApplicationController
  def diachi
    @huyen = District.where(:provinceid=>params[:id])
    render "ajaxdiachi"
  end
end
