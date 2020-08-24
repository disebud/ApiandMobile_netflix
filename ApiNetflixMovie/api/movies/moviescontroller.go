package movies

import (
	"encoding/json"
	"log"
	"net/http"

	"github.com/gorilla/mux"
)

//MenuHandler MenuHandler
type movieHandler struct {
	movieUseCase MovieUseCase
}

//MovieController MoviesController
func MovieController(r *mux.Router, movieService MovieUseCase) {
	movieHandler := movieHandler{movieService}
	r.HandleFunc("/movie", movieHandler.AddMovies).Methods(http.MethodPost)
	r.HandleFunc("/movies", movieHandler.AllMovie).Methods(http.MethodGet)
	r.HandleFunc("/movie/{id}", movieHandler.MovieByID).Methods(http.MethodGet)
}

//AllMovie AllMenus
func (value movieHandler) AllMovie(w http.ResponseWriter, r *http.Request) {
	allMovie, err := value.movieUseCase.GetMovies()
	w.Header().Set("Content-Type", "application/json")
	if err != nil {
		w.Write([]byte("Data Movies Not Found"))
		log.Println("Data Movies Not Found")
	}
	movieResponse := allMovie
	byteOfMoviesResponse, err := json.Marshal(movieResponse)
	if err != nil {
		w.Write([]byte("Oops something when wrong from Movies"))
		log.Println("Oops something when wrong from Movies")
	}
	log.Println("get all menu success")
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	w.Write(byteOfMoviesResponse)
}

//AddMovies InsertMenu
func (value movieHandler) AddMovies(w http.ResponseWriter, r *http.Request) {
	var newMovie Movie
	_ = json.NewDecoder(r.Body).Decode(&newMovie)
	err := value.movieUseCase.AddNewMovie(newMovie)
	if err != nil {
		w.Write([]byte("Insert Movie Failed Cannot null"))
		log.Print(err)
	} else {
		w.Write([]byte("Insert Movie Success"))
		log.Println("Insert Movie Success")
	}
}

//MovieByID MenuById
func (value movieHandler) MovieByID(w http.ResponseWriter, r *http.Request) {
	param := mux.Vars(r)
	idMovie := param["id"]
	movie, err := value.movieUseCase.GetMovieByID(idMovie)
	if err != nil {
		w.Write([]byte("Data Movie Not Found"))
		log.Println("Data Movie not found")
	}
	movieResponse := movie
	byteOfMovieResponseByID, err2 := json.Marshal(movieResponse)
	if err2 != nil {
		w.Write([]byte("Oops something when wrong from Movie"))
		log.Println("Oops something when wrong from Movie")
	} else if err == nil {
		log.Println("get movie from id success")
		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusOK)
		w.Write(byteOfMovieResponseByID)
	}
}
