NoCms::Admin.menu_items << {
  name: 'carrierwave',
  url: proc { NoCms::Admin::Carrierwave::Engine.routes.url_helpers.attachments_path }
}
