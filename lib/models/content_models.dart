class Moviemodel{
String? name;
String? orginal;
String?title;
String? overview;
String? backdroppath;
String? posterpath;
String?  type;

Moviemodel({required this.name,required this.orginal,required this.backdroppath,required this.overview,required this.posterpath,required this.title,required this.type});
  

  factory Moviemodel.fromjson(Map<String,dynamic>json){
    return Moviemodel(
      
      backdroppath: json['backdrop_path'] ?? 'no data',
      type: json['media_type'] ??   'no data',
      orginal: json['original_name'] ??  'no data',
      overview: json[ 'overview']  ??  'no data',
      name: json[ 'name'] ?? 'no data',
      posterpath: json['poster_path'] ?? 'no data',
      title: json['title'] ?? 'no data',
      
      
      );
  }
}