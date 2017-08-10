Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Day la trang chinh
  root "home#index"
  #Dang ký thanh vien:
  get "/home/dangkythanhvien"=>"home#dangkythanhvien"
  post "/home/dangkythanhvien"=>"home#smdangkythanhvien"
  #Mua ban hang ne!
  get "/home/do-bong-da"=>"home#getbongda"
  get "/home/tap-gym"=>"home#gettapgym"
  get "/home/tap-yoga"=>"home#getyoga"
  get "/home/tap-tennis"=>"home#gettennis"
  get "/home/sanpham/:id"=>"home#hienthisanpham"
  get "/home/thongtinkhachhang/:id"=>"home#thongtinkhachhang"
  get "/home/diachi/:id"=>"ajax#diachi"
end
