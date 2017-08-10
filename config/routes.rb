Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Day la trang chinh
  root "home#index"
  #Dang ký thanh vien:
  get "/home/dangkythanhvien"=>"home#dangkythanhvien"
  post "/home/dangkythanhvien"=>"home#smdangkythanhvien"
  #Ket qua tim kiem san pham:
  post "/home/tim-kiem/ket-qua"=>"home#ketquatimkiem"
  #Mua ban hang ne!
  get "/home/do-bong-da"=>"home#getbongda"
  get "/home/tap-gym"=>"home#gettapgym"
  get "/home/tap-yoga"=>"home#getyoga"
  get "/home/tap-tennis"=>"home#gettennis"
  get "/home/sanpham/:id"=>"home#hienthisanpham"
  get "/home/thongtinkhachhang/:id"=>"home#thongtinkhachhang"
  post "/home/thongtinkhachhang/submit"=>"home#smthongtinkhachhang"
  #Ham xu ly ajax: De nhan lay thong tin
  get "/home/diachi/:id"=>"ajax#diachi"
  get "/home/diachi/vanchuyen/:id"=>"ajax#vanchuyen"
end
