// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class It2Model {
  static List<It2items> product=[
    It2items(
           id: 5,
            name: "Environment and Sustainability",
            desc: "All branch",
            size: "10mb",
            sem: "2nd-Sem",
            durl: "https://drive.google.com/uc?export=download&id=19mG9PrcAhBF_V7PErUq_l3aMNtlvDdyk",
            surl: "https://drive.google.com/uc?export=download&id=1gFh42jzIkzL4C3snjupJA1ylxCI5OTp0",
            lpurl: "https://drive.google.com/uc?export=download&id=1crZfwQVi9aLDu0D84eEtxyKyKcjgwS4S",
            purl: "https://drive.google.com/uc?export=download&id=",
            image: "https://neo2708.github.io/pic.github.io/005.png"),
            It2items(
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
             
              It2items(
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
             It2items(
            id: 1,
            name: "Advance Python Programming",
            desc: "I.T",
            size: "10mb",
            sem: "2nd-Sem",
            durl: "https://drive.google.com/uc?export=download&id=1Bk_poa5XM4wZxZ05WGd-bGiwL8HmRdd1",
            surl: "https://drive.google.com/uc?export=download&id=1ClsrSl_u-yC3q_VydeeelcBq9GiCRI_C",
            lpurl: "https://drive.google.com/uc?export=download&id=1YpSYw_7oUvfB-9yraari4-1oIn3aCaT",
            purl: "https://drive.google.com/uc?export=download&id=1hOFwSX__kda81-yiyt5feQucP3FKcQye",
            image: "https://neo2708.github.io/pic.github.io/001.png"),
  ];
}

class It2items {
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

  It2items({
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

  It2items copyWith({
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
    return It2items(
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

  factory It2items.fromMap(Map<String, dynamic> map) {
    return It2items(
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

  factory It2items.fromJson(String source) =>
      It2items.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'It2items(id: $id, name: $name, desc: $desc, size: $size ,sem: $sem , durl: $durl,surl:$surl,lpurl:$lpurl,purl:$purl, image: $image)';
  }

  @override
  bool operator ==(covariant It2items other) {
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
