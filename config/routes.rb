Rails.application.routes.draw do

  root 'home#top'
    #toolルーティング
    #自分史
    get "my_history" => "tool#my_history"
    post "my_history" => "tool#my_history_submit"
    get "my_history/:id_pass" => "tool#my_history_result"

    #SWOT
    get "swot" => "tool#swot"

    #wct
    get "wcm" => "tool#wcm"

    #mmp
    get "mmp" => "tool#mmp"

    

    #モチベーション
    get "motivation" => "tool#motivation"
    post "motivation" => "tool#motivation_graph"
    get "motivation_search" => "tool#motivation_search"
    post "motivation/:pass/edit" => "tool#motivation_edit"
    post "motivation/:id/destroy" => "tool#motivation_destroy"
    get "motivation/:pass" => "tool#motivation_result"

    get 'home/top'
    #warning
    get "warning" => "home#warning"

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
