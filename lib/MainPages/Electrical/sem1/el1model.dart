// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class El1Model {
  static List<El1items> product=[
    El1items(
      id: 8,
        name: "Mathematics",
        desc: "All Branch",
        size: "1mb",
        sem: "Sem-1",
        durl: "0",
        surl:
            "https://drive.google.com/uc?export=download&id=1NBi1aZWsMv2gDKQL9JuWhLLGnC9So5nX",
        lpurl:
            "https://drive.google.com/uc?export=download&id=1KmhMdlKGFQdER6JRijvp3Cpb11g70atU",
        purl: "0",
        image: "https://neo2708.github.io/pic.github.io/008.png"),
        El1items(
        id: 14,
        name: "Communication Skills in English",
        desc: "All branch",
        size: "10mb",
        sem: "Sem-1",
        durl:
            "0",
        surl:
            "https://drive.google.com/uc?export=download&id=1Dg0oOqRSiS2aNw28hQng_ii_GyFTtGQa",
        lpurl:
            "https://drive.google.com/uc?export=download&id=1zAotD83vv-DYvYdXrPESa9-qB9Aw_nnu",
        purl: "0",
        image: "https://neo2708.github.io/pic.github.io/014.png"),
        El1items(
            id: 20,
            name: "D C Circuits ",
            desc: "Electrical",
            size: "10mb",
            sem: "Sem-1",
            durl: "0",
            surl: "https://drive.google.com/uc?export=download&id=1MPRHsKLDa07obiOvRSRsV_oKuwTAljyu",
            lpurl: "https://drive.google.com/uc?export=download&id=1Or5PN5Bpm1CVaJIQBqmhVlsKvlW6M3Vc",
            purl: "0",
            image: "https://neo2708.github.io/pic.github.io/020.png"),
            El1items(
            id: 15,
            name: "Engineering Chemistry",
            desc: "Electrical",
            size: "10mb",
            sem: "Sem-1 & 2",
            durl: "0",
            surl: "https://drive.google.com/uc?export=download&id=10T6oqf985UpnU4fyS5jeHoQK8j2G7ou7",
            lpurl: "https://drive.google.com/uc?export=download&id=1pBtjcsATXq9Ba-LdSPrcEjZGrSHsmqDE",
            purl: "0",
            image: "https://neo2708.github.io/pic.github.io/015.png")
  ];
}

class El1items {
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

  El1items({
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

  El1items copyWith({
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
    return El1items(
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

  factory El1items.fromMap(Map<String, dynamic> map) {
    return El1items(
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

  factory El1items.fromJson(String source) =>
      El1items.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'El1items(id: $id, name: $name, desc: $desc, size: $size ,sem: $sem , durl: $durl,surl:$surl,lpurl:$lpurl,purl:$purl, image: $image)';
  }

  @override
  bool operator ==(covariant El1items other) {
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
