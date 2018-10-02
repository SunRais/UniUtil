# Specify the layout file that should be used for each Devise controller
  UniUtil::Application.configure do
    config.to_prepare do
      Devise::SessionsController.layout       "application"
      Devise::RegistrationsController.layout  "application"
      Devise::ConfirmationsController.layout  "application"
      Devise::UnlocksController.layout        "application"
      Devise::PasswordsController.layout      "application"
    end
  end