Rails.application.routes.draw do

  root 'home#top'
    #toolルーティング
    #自分史
    get "my_history" => "tool#my_history"
    post "my_history" => "tool#my_history_submit"
    get "my_history/:id_pass/edit" => "tool#my_history_edit"
    post "my_history_update" => "tool#my_history_update"
    get "my_history/:id_pass" => "tool#my_history_result"
    get "my_history_search" => "tool#my_history_search"
    

    #SWOT
    get "swot" => "tool#swot"
    post "swot" => "tool#swot_submit"
    get "swot/:id_pass" => "tool#swot_result"
    get "swot_search" => "tool#swot_search"

    #wct
    get "wcm" => "tool#wcm"
    post "wcm" => "tool#wcm_submit"
    get "wcm/:id_pass" => "tool#wcm_result"
    get "wcm_search" => "tool#wcm_search"

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
