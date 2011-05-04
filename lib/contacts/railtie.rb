require 'contacts'
require 'rails'

module Contacts
  class Railtie < Rails::Railtie
    initializer "setup configuration" do
      config_file = Rails.root.join("config", "contacts.yml")
      if config_file.file?
        configuration = YAML.load(ERB.new(config_file.read).result)[Rails.env]
        Contacts.configure(configuration) if configuration.present?
      end
    end
  end
end
