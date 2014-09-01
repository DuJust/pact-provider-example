Pact.provider_states_for 'Pact Example Service Consumer' do
  provider_state 'model exists' do
    set_up {}

    tear_down {}
  end
end
