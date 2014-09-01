require 'pact/provider/rspec'
require 'spec_helper'
require_relative 'provider_model_for_pact_service_consumer'

Pact.service_provider 'Pact Example Service Provider' do

  # app { MyApp.new } # Optional, loads app from config.ru by default

  honours_pact_with 'Pact Example Service Consumer' do

    # This example points to a local file, however, on a real project with a continuous
    # integration box, you would publish your pacts as artifacts,
    # and point the pact_uri to the pact published by the last successful build.

    pact_uri '../pact-example/spec/pacts/pact_example_service_consumer-pact_example_service_provider.json'
  end
end