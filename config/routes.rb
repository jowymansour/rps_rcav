Rails.application.routes.draw do

  root 'game#rock'
  get '/rock' => 'game#rock'
  get '/paper' => 'game#paper'
  get '/scissors' => 'game#scissors'

end
