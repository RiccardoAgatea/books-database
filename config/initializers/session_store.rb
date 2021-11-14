# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :cookie_store, key: '_books_backend_session',  #TODO: rename it
                                       secure: Rails.env.production?
