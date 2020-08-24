package movies

import "enigmaNetflixApp/utils"

type moviesUseCaseImpl struct {
	moviesRepository MovieRepository
}

//InitMoviesUseCaseImpl InitMoviesUseCaseImpl
func InitMoviesUseCaseImpl(moviesRepository MovieRepository) MovieUseCase {
	return &moviesUseCaseImpl{moviesRepository}
}

func (value moviesUseCaseImpl) AddNewMovie(newMovie Movie) error {
	err := utils.ValidateInputNotNil(newMovie.TitleMovie, newMovie.DurationMovie, newMovie.ImageMovie, newMovie.SynopsisMovie)
	if err != nil {
		return err
	}
	err = value.moviesRepository.AddNewMovie(newMovie)
	if err != nil {
		return err
	}
	return nil
}

func (value moviesUseCaseImpl) GetMovies() ([]*Movie, error) {
	movies, err := value.moviesRepository.GetMovies()
	if err != nil {
		return nil, err
	}
	return movies, nil
}
func (value moviesUseCaseImpl) GetMovieByID(movieID string) (Movie, error) {
	movie, err := value.moviesRepository.GetMovieByID(movieID)
	if err != nil {
		return movie, err
	}
	return movie, nil
}
