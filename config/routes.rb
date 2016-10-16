Rails.application.routes.draw do

  %w(about library community partners products tools about_wikihouse_foundation propose prospectus).each do |page|
    get page, to: "static##{page}", as: page
  end

  resources :things, path: 'types'

  root to: 'static#landing'
end
