package api

import (
	"enigmaNetflixApp/api/movies"
	"enigmaNetflixApp/config"
)

//Init Init
func Init() {
	db := config.InitDB()
	router := config.CreateRouter()

	moviesRepo := movies.InitMoviesRepositoryImpl(db)
	moviesUseCase := movies.InitMoviesUseCaseImpl(moviesRepo)
	movies.MovieController(router, moviesUseCase)
	config.RunServer(router)
}
