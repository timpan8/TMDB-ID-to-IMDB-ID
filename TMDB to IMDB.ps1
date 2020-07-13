#TMDB APIKEY https://www.themoviedb.org/settings/api
$APIKEY = "8d6d91941230817f7807d643736e8a49"

#List with TMDB ID's 
$LISTOMOVIES = Get-Content C:\temp\lista.txt

ForEach($movie_id in $LISTOMOVIES){



$IMDBURI = "https://api.themoviedb.org/3/movie/" + $movie_id + "/external_ids?api_key=" + $APIKEY 
$MOVIE = Invoke-WebRequest -Uri $IMDBURI

$IMDBMOVIERESULTS = (ConvertFrom-Json $MOVIE.Content)


Write-Host  $IMDBMOVIERESULTS.imdb_id $IMDBMOVIERESULTS.id
}