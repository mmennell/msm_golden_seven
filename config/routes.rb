Rails.application.routes.draw do
    get('/', { :controller => 'movies', :action => 'index' })

# Movies

    get('/movies/new_form', { :controller => 'movies', :action => 'new_form' })
    get('/create_movie', { :controller => 'movies', :action => 'create_row' })

    get('/movies', { :controller => 'movies', :action => 'index' })
    get('/movies/:id', { :controller => 'movies', :action => 'show' })

    get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form' })
    get('/update_movie/:id', { :controller => 'movies', :action => 'update_row' })

    get('/delete_movie/:id', { :controller => 'movies', :action => 'destroy' })

# Actors

    get('/actors/new_form', { :controller => 'actors', :action => 'new_form' })
    get('/create_actor', { :controller => 'actors', :action => 'create_row' })

    get('/actors', { :controller => 'actors', :action => 'index' })
    get('/actors/:id', { :controller => 'actors', :action => 'show' })

    get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form' })
    get('/update_actor/:id', { :controller => 'actors', :action => 'update_row' })

    get('/delete_actor/:id', { :controller => 'actors', :action => 'destroy' })

# Directors

    get('/directors/new_form', { :controller => 'directors', :action => 'new_form' })
    get('/create_director', { :controller => 'directors', :action => 'create_row' })

    get('/directors', { :controller => 'directors', :action => 'index' })
    get('/directors/:id', { :controller => 'directors', :action => 'show' })

    get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
    get('/update_director/:id', { :controller => 'directors', :action => 'update_row' })

    get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' })
    
end
