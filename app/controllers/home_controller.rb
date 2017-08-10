class HomeController < ApplicationController
  #TRANG CHINH:
  def index
  end
  #TRANG HIEN THI SAN PHAM DUOC TIM KIEM
  def ketquatimkiem
    @tukhoa = params[:tukhoa]
    @ketqua = Sanpham.where('tensanpham LIKE?',"%"+@tukhoa+"%").all
  end
  #TRANG THONG TIN SAN PHAM
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
  #TRANG HIEN THI SAN PHAM
  def hienthisanpham
    @id = params[:id]
    @showsp = Sanpham.find(@id)
  end
  #TRANG THONG TIN KHACH HANG
  def thongtinkhachhang
    @showsp = Sanpham.find(params[:id])
    @tinh = Province.all
  end
  #TRANG SUBMIT THONG TIN KHACH HANG
  def smthongtinkhachhang
    #Insert vao bang khach hang:
    khachhang = Khachhang.new(:name=>params[:ten_khachhang],:sodienthoai=>params[:sodienthoai],
    :email=>params[:email],:id_tinh=>params[:tinh],:id_quan=>params[:quan],:sonha=>params[:xa])
    khachhang.save
    redirect_to root_path
  end
end
