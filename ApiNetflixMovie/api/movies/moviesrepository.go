package movies

//MovieRepository MovieRepository
type MovieRepository interface {
	AddNewMovie(newMovie Movie) error
	GetMovies() ([]*Movie, error)
	GetMovieByID(movieID string) (Movie, error)
}
