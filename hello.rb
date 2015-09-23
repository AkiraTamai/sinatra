require 'sinatra'

get '/' do
  "Hello World!"
end

get '/aiit' do
  "Hi, AITT"
end

get '/list' do
  "show list"
end

get 'list2' do
  "show list2"
end

get 'list3' do
  "show list3"
end


get '/foo' do
  status, headers, body = call env.merge("PATH_INFO" => '/map')
  [status, headers, body.map(&:upcase)]
end

get '/map' do
  "map"
  "map2"
  "map3"
  "map4"
  "map5"
  "map6"
end





