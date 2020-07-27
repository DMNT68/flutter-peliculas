class Cast {
  
  List<Actor> actores = new List();
  
  Cast.fromJsonList( List<dynamic> jsonList ) {

    if (jsonList == null) return;

    jsonList.forEach(( item ) { 

      final actor = Actor.formJsonMap(item);
      actores.add(actor);

     });

  }

}

class Actor {
  int castId;
  String character;
  String creditId;
  int gender;
  int id;
  String name;
  int order;
  String profilePath;

  Actor({
    this.castId,
    this.character,
    this.creditId,
    this.gender,
    this.id,
    this.name,
    this.order,
    this.profilePath,
  });

  Actor.formJsonMap( Map<String, dynamic> json) {

    castId      = json['cast_id']; 
    character   = json['character']; 
    creditId    = json['credit_Id']; 
    gender      = json['gender']; 
    id          = json['id']; 
    name        = json['name']; 
    order       = json['order']; 
    profilePath = json['profile_path']; 

  }

   getPhoto() {
    
    if ( profilePath == null ) {
      return 'https://lh3.googleusercontent.com/proxy/V9Kt6n9OITmyu4bCzEfzeHIg1Y2o56DS1pGDHaxRJ9lsCLXRZIAiueMWvpm4STclxq25iBDj6EskgTafh8RnPSadgTval2spLDVd13aizeUeHE8eOXvZEdQ0dxEc';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }

  }

}