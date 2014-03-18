Rails.application.routes.draw do

  mount NoCms::Admin::Engine => "/admin"
  mount NoCms::Admin::Carrierwave::Engine => "/admin"
end
