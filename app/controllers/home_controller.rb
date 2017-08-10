class HomeController < ApplicationController

  def index
  end

  def getbongda
    @spbongda = Sanpham.where(:loaisanpham_id=>"1")
  end
  def gettapgym
    @sptapgym = Sanpham.where(:loaisanpham_id=>"2")
  end
  def getyoga
    @sptapya = Sanpham.where(:loaisanpham_id=>"3")
  end
  def gettennis
    @sptennis = Sanpham.where(:loaisanpham_id=>"4")
  end
  def hienthisanpham
    @id = params[:id]
    @showsp = Sanpham.find(@id)
  end
  def thongtinkhachhang
    @showsp = Sanpham.find(params[:id])
    @tinh = Province.all
  end

  def dangkythanhvien

  end
  def smdangkythanhvien

  end
end
