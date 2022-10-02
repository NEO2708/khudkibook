// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Cmp2Model {
  static List<Cmp2items> product=[
  
             Cmp2items(
            id: 22,
            name: "Engineering Mathematics",
            desc: "Computer | I.T | Electrical ",
            size: "10mb",
            sem: "Sem-1",
            durl: "https://drive.google.com/uc?export=download&id=",
            surl: "https://drive.google.com/uc?export=download&id=1PYPTgJITH-65K29Oyz7CSY0lY_2wV2mN",
            lpurl: "https://drive.google.com/uc?export=download&id=1JC8fR0liC9WTFaetIltBzV9Dq1ytjIwD",
            purl: "https://drive.google.com/uc?export=download&id=",
            image: "https://neo2708.github.io/pic.github.io/022.png"),
              Cmp2items(
            id: 19,
            name: "Physics",
            desc: "I.t | Computer | Electrical",
            size: "10mb",
            sem: "Sem-2",
            durl: "https://drive.google.com/uc?export=download&id=",
            surl: "https://drive.google.com/uc?export=download&id=1W0noHZIqpJPotqHlItFUNMEBVs8lLVq4",
            lpurl: "https://drive.google.com/uc?export=download&id=1wWRidccr_V4a7J_Mn_uYMUai38_SnQ7a",
            purl: "https://drive.google.com/uc?export=download&id=",
            image: "https://neo2708.github.io/pic.github.io/019.png"),
            Cmp2items(
            
            id: 29,
            name: "Basic Object Oriented Programming",
            desc: "Computer",
            size: "10mb",
            sem: "Sem-2",
            durl: "https://drive.google.com/uc?export=download&id=",
            surl: "https://drive.google.com/uc?export=download&id=1sj5WLS3CBXDEoC961gFyddpVlULIbcUn",
            lpurl: "https://drive.google.com/uc?export=download&id=193LGElNcegMmn27cXsML2O3EeYleAuBw",
            purl: "https://drive.google.com/uc?export=download&id=",
            image: "https://neo2708.github.io/pic.github.io/029.png"),
            Cmp2items(
            id: 4,
            name: "Basic of Digital Electronics",
            desc: "Computer ",
            size: "10mb",
            sem: "2nd-Sem",
            durl: "https://drive.google.com/uc?export=download&id=",
            surl: "https://drive.google.com/uc?export=download&id=14MZpC-GiXQf4Hdk58YAru1pe6dB1T3eM",
            lpurl: "https://drive.google.com/uc?export=download&id=1mT76SmtMYJHcRpTUEHnnYl2NeLE5pkLX",
            purl: "https://drive.google.com/uc?export=download&id=",
            image: "https://neo2708.github.io/pic.github.io/004.png")

  ];
}

class Cmp2items {
  final int id;
  final String name;
  final String desc;
  final String size;
  final String sem;
  final String durl;
  final String surl;
  final String lpurl;
  final String purl;
  final String image;

  Cmp2items({
    required this.id,
    required this.name,
    required this.desc,
    required this.size,
    required this.sem,
    required this.durl,
    required this.surl,
    required this.lpurl,
    required this.purl,
    required this.image,
  });

  Cmp2items copyWith({
    int? id,
    String? name,
    String? desc,
    String? size,
    String? sem,
    String? durl,
    String? lpurl,
    String? purl,
    String? image,
  }) {
    return Cmp2items(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      size: size ?? this.size,
      sem: sem ?? this.sem,
      durl: durl ?? this.durl,
      // ignore: unnecessary_this
      surl: surl,
      lpurl: lpurl ?? this.lpurl,
      purl: purl ?? this.purl,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'size': size,
      'sem': sem,
      'durl': durl,
      'surl': surl,
      'lpurl': lpurl,
      'purl': purl,
      'image': image,
    };
  }

  factory Cmp2items.fromMap(Map<String, dynamic> map) {
    return Cmp2items(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      size: map['size'] as String,
      sem: map['sem'] as String,
      durl: map['durl'] as String,
      surl: map['surl'] as String,
      lpurl: map['lpurl'] as String,
      purl: map['purl'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cmp2items.fromJson(String source) =>
      Cmp2items.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Cmp2items(id: $id, name: $name, desc: $desc, size: $size ,sem: $sem , durl: $durl,surl:$surl,lpurl:$lpurl,purl:$purl, image: $image)';
  }

  @override
  bool operator ==(covariant Cmp2items other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.size == size &&
        other.sem == sem &&
        other.durl == durl &&
        other.surl == surl &&
        other.lpurl == lpurl &&
        other.purl == purl &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        size.hashCode ^
        sem.hashCode ^
        durl.hashCode ^
        surl.hashCode ^
        lpurl.hashCode ^
        purl.hashCode ^
        image.hashCode;
  }
}
