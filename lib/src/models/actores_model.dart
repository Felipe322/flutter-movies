
class Cast {

  List<Actor> actores = new List();

  Cast.fromJsonList( List<dynamic> jsonList ){

    if ( jsonList == null ) return;

    jsonList.forEach( (  item ) {

      final actor = Actor.fromJsonMap(item);
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

  Actor.fromJsonMap( Map<String, dynamic> json ){
      
    castId      = json['cast_id'];
    character   = json['character'];
    creditId    = json['credit_id'];
    gender      = json['gender'];
    id          = json['id'];
    name        = json['name'];
    order       = json['order'];
    profilePath = json['profile_path'];

  }

  getFoto() {

    if (profilePath != null) {
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }else if(gender == 1){
      return 'https://cdn4.iconfinder.com/data/icons/business-men-women-set-1/512/24-512.png';
    }else{
      return 'https://i.ya-webdesign.com/images/avatar-png-2.png';
    }

  }


}
