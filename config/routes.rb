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



  get("/", { :controller => "directors", :action => "index" })

  #Routes to CREATE directors
  get("/directors/new", { :controller => "directors", :action => "new_form"})

  get("/create_director", { :controller => "directors", :action => "create_row"})

  #routes to DELETE directors
  get("/delete_director/:id", { :controller => "directors", :action => "delete_movie"})

  #routes to EDIT directors
  get("/directors/:id/edit", { :controller => "directors", :action => "edit_form" })

  get("/update_director/:id", { :controller => "directors", :action => "update_row" })

  # Routes to READ directors
  get("/directors",           { :controller => "directors", :action => "index" })
  get("/directors/:id",       { :controller => "directors", :action => "show" })


end
