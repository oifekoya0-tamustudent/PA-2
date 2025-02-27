# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'},
  {:title => 'Furboy', :rating => 'PG-13',
    :release_date => '13-Jan-2020'},
  {:title => 'My Girl', :rating => 'PG-13',
    :release_date => '21-Feb-1998'},
  {:title => 'Deadpool', :rating => 'R',
    :release_date => '27-Oct-2024'}
]

more_movies.each do |attrs|
  Movie.find_or_create_by(title: attrs[:title]) do |movie|
  movie.rating = attrs[:rating]
  movie.release_date = attrs[:release_date]
 end
end
