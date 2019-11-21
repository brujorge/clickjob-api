if Rails.env === "production"
  Rails.application.config.session_store :cookie_store, key: "_authentication_clickjob", domain: "clickjob-api.herokuapp.com"
else 
  Rails.application.config.session_store :cookie_store, key: "_authentication_clickjob"
end

