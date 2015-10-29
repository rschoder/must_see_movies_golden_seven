Rails.application.routes.draw do

  get("/", { :controller => "movies", :action => "index" })

  #Routes to CREATE movies
  get("/movies/new", { :controller => "movies", :action => "new_form"})

  get("/create_movie", { :controller => "movies", :action => "create_row"})

  #routes to DELETE movies
  get("/delete_movie/:id", { :controller => "movies", :action => "delete_movie"})

  #routes to EDIT movies
  get("/movies/:id/edit", { :controller => "movies", :action => "edit_form" })

  get("/update_movie/:id", { :controller => "movies", :action => "update_row" })

  # Routes to READ movies
  get("/movies",           { :controller => "movies", :action => "index" })
  get("/movies/:id",       { :controller => "movies", :action => "show" })

end
