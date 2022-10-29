// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class El2Model {
  static List<El2items> product=[
    El2items(
      id: 5,
            name: "Environment and Sustainability",
            desc: "All branch",
            size: "10mb",
            sem: "Sem-2",
            durl: "https://drive.google.com/uc?export=download&id=19mG9PrcAhBF_V7PErUq_l3aMNtlvDdyk",
            surl: "https://drive.google.com/uc?export=download&id=1gFh42jzIkzL4C3snjupJA1ylxCI5OTp0",
            lpurl: "https://drive.google.com/uc?export=download&id=1crZfwQVi9aLDu0D84eEtxyKyKcjgwS4S",
            purl: "0",
            image: "https://neo2708.github.io/pic.github.io/005.png"),
            El2items(
            id: 22,
            name: "Engineering Mathematics",
            desc: "Computer | I.T | Electrical ",
            size: "10mb",
            sem: "Sem-2",
            durl: "0",
            surl: "https://drive.google.com/uc?export=download&id=1PYPTgJITH-65K29Oyz7CSY0lY_2wV2mN",
            lpurl: "https://drive.google.com/uc?export=download&id=1JC8fR0liC9WTFaetIltBzV9Dq1ytjIwD",
            purl: "0",
            image: "https://neo2708.github.io/pic.github.io/022.png"),
             
              El2items(
            id: 19,
            name: "Physics",
            desc: "I.t | Computer | Electrical",
            size: "10mb",
            sem: "Sem-2",
            durl: "0",
            surl: "https://drive.google.com/uc?export=download&id=1W0noHZIqpJPotqHlItFUNMEBVs8lLVq4",
            lpurl: "https://drive.google.com/uc?export=download&id=1wWRidccr_V4a7J_Mn_uYMUai38_SnQ7a",
            purl: "0",
            image: "https://neo2708.github.io/pic.github.io/019.png"),
            El2items(
            id: 21,
            name: "Basic Engineering Drawing and Graphics ",
            desc: "Electrical  ",
            size: "10mb",
            sem: "Sem-2",
            durl: "0",
            surl: "https://drive.google.com/uc?export=download&id=1Dh9C0ytEr2icrx8crlm2lLiv1YqH3p_O",
            lpurl: "0",
            purl: "0",
            image: "https://neo2708.github.io/pic.github.io/021.png"),
            El2items(
            id: 23,
            name: "A.C. Circuits",
            desc: "Electrical",
            size: "10mb",
            sem: "Sem-2",
            durl: "0",
            surl: "0",
            lpurl: "0",
            purl: "0",
            image: "https://neo2708.github.io/pic.github.io/na.webp")
  ];
}

class El2items {
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

  El2items({
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

  El2items copyWith({
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
    return El2items(
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

  factory El2items.fromMap(Map<String, dynamic> map) {
    return El2items(
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

  factory El2items.fromJson(String source) =>
      El2items.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'El2items(id: $id, name: $name, desc: $desc, size: $size ,sem: $sem , durl: $durl,surl:$surl,lpurl:$lpurl,purl:$purl, image: $image)';
  }

  @override
  bool operator ==(covariant El2items other) {
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
