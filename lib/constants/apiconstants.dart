class Apiconstants{

static const  String baseurl = 'https://api.themoviedb.org/3';
static const String apikey =  'd26a8dd97ecb04414d11287cd30cca91';



static String   getPopularMovies() => '$baseurl/movie/popular?api_key=$apikey';
static  String getTrendingMovies() =>  '$baseurl/trending/all/day?api_key=$apikey';
static String getTopRatedMovies() => '$baseurl/movie/top_rated?api_key=$apikey&page=1';
static String getTvShows() =>  '$baseurl/tv/popular?api_key=$apikey';
static String searchMovie () => '$baseurl/search/multi?api_key=$apikey&query=';
}