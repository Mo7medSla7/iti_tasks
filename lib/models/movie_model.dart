class Movie{
int id;
String title;
String overview;
dynamic vote;
String image;
String imageUrl = 'https://image.tmdb.org/t/p/w500/';

Movie(this.id, this.title, this.overview, this.vote,this.image){
 image = imageUrl+image;
}
}