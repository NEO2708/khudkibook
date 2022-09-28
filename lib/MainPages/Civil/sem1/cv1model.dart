// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Cv1Model {
  static List<Cv1items> product=[]; 
    // ignore: null_closures
    Cv1items getById(int id) => product.firstWhere((element) => element.id == id, orElse: null);
   Cv1items getByPosition(int pos) =>product[pos];
  //   Cv1items(
  //     id: 001,
  //     name: "ES",
  //     desc: "Download ES BOOK ",
  //     size: "10mb",
  //     sem: "sem",
  //     durl: "green",
  //     surl: "url",
  //     lpurl:"url",
  //     purl:"url",
  //     image:
  //         "http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcQC7VVXBf-f1ElflLsUcDbJiyTTDAlq9aaHpOWElLM-hleo8bhAHKYQl3VMQ239XKQVx9o5DhZq7Pyxb-X5H9I",
  //   ),
  // ];
}

class Cv1items {
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

  Cv1items({
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

  Cv1items copyWith({
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
    return Cv1items(
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

  factory Cv1items.fromMap(Map<String, dynamic> map) {
    return Cv1items(
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

  factory Cv1items.fromJson(String source) =>
      Cv1items.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Cv1items(id: $id, name: $name, desc: $desc, size: $size ,sem: $sem , durl: $durl,surl:$surl,lpurl:$lpurl,purl:$purl, image: $image)';
  }

  @override
  bool operator ==(covariant Cv1items other) {
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
