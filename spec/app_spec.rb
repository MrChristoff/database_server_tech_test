ENV['RACK_ENV'] = 'test'

require 'rspec'
require 'spec_helper'
require 'rack/test'

def app
  Sinatra::Application
end

describe 'App controller' do

  describe "GET '/'" do
    it "Loads home page" do
      get '/'
      expect(last_response).to be_ok
    end
  end

end
