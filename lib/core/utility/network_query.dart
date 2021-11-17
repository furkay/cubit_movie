enum NetworkQuery { search, details }

extension NetworkQueryExtension on NetworkQuery {
  Map<String, String> searchMovie(String search) {
    return {'apiKey': '', 's': search};
  }

  Map<String, String> movieDetails(String imdbID) {
    return {'apiKey': '', 'i': imdbID};
  }
}
