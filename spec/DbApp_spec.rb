ENV['RACK_ENV'] = 'test'

require 'rspec'
require 'spec_helper'
require 'rack/test'


describe DbApp do
  def app
    Sinatra::Application
  end

  it "gets the home page" do
    get '/'
    expect(last_response).to be_ok
  end
end
