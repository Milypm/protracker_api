if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_protracker_app", domain: "protracker-api.netlify.app"
else
  Rails.application.config.session_store :cookie_store, key: "_protracker_app"
end