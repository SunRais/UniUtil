# Specify the layout file that should be used for each Devise controller
  UniUtil::Application.configure do
    config.to_prepare do
      Devise::SessionsController.layout       "private_area"
      Devise::RegistrationsController.layout  "private_area"
      Devise::ConfirmationsController.layout  "private_area"
      Devise::UnlocksController.layout        "private_area"
      Devise::PasswordsController.layout      "private_area"
    end
  end