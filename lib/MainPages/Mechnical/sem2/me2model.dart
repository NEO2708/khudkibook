// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Me2Model {
  static List<Me2items> product=[
    Me2items(
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
            Me2items(
              
            id: 25,
            name: "Applied Mathematics",
            desc: "Civil | Mechanical",
            size: "10mb",
            sem: "Sem-2",
            durl: "0",
            surl: "0",
            lpurl: "0",
            purl: "0",
            image: "https://neo2708.github.io/pic.github.io/025.png"),
            Me2items(
            id: 26,
            name: "Engineering Mechanics",
            desc: "Civil | Mechanical",
            size: "10mb",
            sem: "Sem-2",
            durl: "0",
            surl: "https://drive.google.com/uc?export=download&id=1IOP4pgSIZFlRlF6o1lp3t9R3p6z4iPJj",
            lpurl: "https://drive.google.com/uc?export=download&id=1z2yEpTyx-O9_yir74pQNwlFQY7K42c6s",
            purl: "0",
            image: "https://neo2708.github.io/pic.github.io/026.png",),
            Me2items(
            id: 28,
            name: "Mechanical Drafting",
            desc: "Mechanical",
            size: "10mb",
            sem: "Sem-2",
            durl: "https://drive.google.com/uc?export=download&id=1kiq9wzhnb3LOEk0NCj5hBL9_LcuNK97p",
            surl: "0",
            lpurl: "https://drive.google.com/uc?export=download&id=1NBYupLWZCcJWGiW2QWIm7Us2815VcDBr",
            purl: "0",
            image: "https://neo2708.github.io/pic.github.io/028.png")
  ];
}

class Me2items {
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

  Me2items({
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

  Me2items copyWith({
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
    return Me2items(
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

  factory Me2items.fromMap(Map<String, dynamic> map) {
    return Me2items(
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

  factory Me2items.fromJson(String source) =>
      Me2items.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Me2items(id: $id, name: $name, desc: $desc, size: $size ,sem: $sem , durl: $durl,surl:$surl,lpurl:$lpurl,purl:$purl, image: $image)';
  }

  @override
  bool operator ==(covariant Me2items other) {
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
