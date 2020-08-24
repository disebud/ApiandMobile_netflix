package movies

import "database/sql"

type moviesRepositoryImpl struct {
	db *sql.DB
}

//InitMoviesRepositoryImpl InitMoviesRepositoryImpl
func InitMoviesRepositoryImpl(db *sql.DB) MovieRepository {
	return &moviesRepositoryImpl{db}
}

//AddNewMovie AddNewMovie
func (value moviesRepositoryImpl) AddNewMovie(newMovie Movie) error {
	transaction, err := value.db.Begin()
	if err != nil {
		transaction.Rollback()
		return err
	}
	query := `insert into movies(title,duration,image,synopsis)values(?,?,?,?)`
	_, err = value.db.Query(query, &newMovie.TitleMovie, &newMovie.DurationMovie, &newMovie.ImageMovie, &newMovie.SynopsisMovie)
	if err != nil {
		transaction.Rollback()
		return err
	}
	transaction.Commit()
	return nil
}

//GetMovies GetMovies
func (value moviesRepositoryImpl) GetMovies() ([]*Movie, error) {
	movies := []*Movie{}
	query := `select * from movies`
	data, err := value.db.Query(query)
	if err != nil {
		return nil, err
	}
	for data.Next() {
		movie := Movie{}
		err = data.Scan(&movie.IDMovie, &movie.TitleMovie, &movie.DurationMovie, &movie.ImageMovie, &movie.SynopsisMovie)
		if err != nil {
			return nil, err
		}
		movies = append(movies, &movie)
	}
	return movies, nil

}

//GetMovieByID GetMovieByID
func (value moviesRepositoryImpl) GetMovieByID(movieID string) (Movie, error) {
	var movie Movie
	query := `select * from movies where id = ?`
	err := value.db.QueryRow(query, movieID).Scan(&movie.IDMovie, &movie.TitleMovie, &movie.DurationMovie, &movie.ImageMovie, &movie.SynopsisMovie)
	if err != nil {
		return movie, err
	}
	return movie, nil
}
