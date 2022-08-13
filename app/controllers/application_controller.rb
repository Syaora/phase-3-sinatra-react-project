class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/trainers" do
    trainers = Trainer.all 
    trainers.to_json
  end

  post "/trainers" do 
    trainer = Trainer.create(
      name: params[:name],
      hometown: params[:hometown]
    )
    trainer.to_json
  end

  get '/trainers/:id' do
    trainer = Trainer.find(params[:id])
    trainer.to_json(include: :pokemons)
  end

  post '/pokemons' do
    pokemon = Pokemon.create(
      name: params[:name],
      species: params[:species],
      trainer_id: params[:trainer_id]
    )
    pokemon.to_json
  end

  #Change Pokemon name
  patch '/pokemons/:id' do
    pokemon = Pokemon.find(params[:id])
    pokemon.update(
      name: params[:name]
    )
    pokemon.to_json
  end

  #Release Pokemon
  delete '/pokemons/:id' do
    pokemon = Pokemon.find(params[:id])
    pokemon.destroy
    pokemon.to_json
  end
end
