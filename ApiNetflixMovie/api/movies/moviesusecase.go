package movies

//MovieUseCase MenuUseCase
type MovieUseCase interface {
	AddNewMovie(newMovie Movie) error
	GetMovies() ([]*Movie, error)
	GetMovieByID(movieID string) (Movie, error)
}
