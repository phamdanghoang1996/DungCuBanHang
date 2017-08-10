class AjaxController < ApplicationController
  def diachi
    @huyen = District.where(:provinceid=>params[:id])
    render "ajaxdiachi"
  end
  def vanchuyen
    @phi=Province.where(:provinceid=>params[:id])
    render "ajaxphivanchuyen"
  end
end
