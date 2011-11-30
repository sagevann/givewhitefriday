require 'sinatra'
require 'data_mapper'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/development.db")
# TODO: Add database models here.

DataMapper.finalize
DataMapper.auto_upgrade!

class Donations
  include DataMapper::Resource
  property :id,           Serial
  property :name,         String, :required => true
  property :amount,       String, :required => true
  property :charity,      String
  property :completed_at, DateTime
end
DataMapper.finalize


helpers do
  def parse_donation()
    #name = rack.request.query_hash["name"]
   puts params
   # name = request.query_string.match("name=(.*)").gsub(/%20/,' ')
    { name: 'name' }
  end
end

class GiveWhiteFriday  < Sinatra::Application
  set :views, settings.root + '/../views'

  get '/' do
    erb :index
  end
  
  get '/about' do
    erb :about
  end
  
  get '/callback' do
    Donations.create( params )
    erb :callback
  end
  
  get '/data' do
    @donations = Donations.all
    erb :data
  end
  
  get '/donate/:name/:amount/:charity' do
    Donations.create( params )
    "Successfully added #{params[:name]}'s donation to #{params[:charity]} of #{params[:amount]}"
  end
  
end
