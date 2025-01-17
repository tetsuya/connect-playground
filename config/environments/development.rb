Rails.application.configure do
  # config.action_mailer.delivery_method = :letter_opener
  # config.action_mailer.perform_caching = false
  # config.action_mailer.perform_deliveries = true
  # config.action_mailer.raise_delivery_errors = false
  config.active_record.migration_error = :page_load
  config.active_record.verbose_query_logs = true
  config.active_support.deprecation = :log
  config.cache_classes = false
  config.consider_all_requests_local = true
  config.eager_load = false
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker

  if Rails.root.join("tmp", "caching-dev.txt").exist?
    config.action_controller.enable_fragment_cache_logging = true
    config.action_controller.perform_caching = true
    config.cache_store = :memory_store
    config.public_file_server.headers = {
      "Cache-Control" => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end

  config.after_initialize do
    Bullet.enable = true
    Bullet.alert = true
  end
end
