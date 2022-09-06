class Kontak {
  int? id;
  String? name;
  String? noTelp;
  String? email;
  String? company;

  Kontak({this.id, this.name, this.noTelp, this.email, this.company});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    if (id != null) {
      map['id'] = id;
    }
    map['name'] = name;
    map['noTelp'] = noTelp;
    map['email'] = email;
    map['company'] = company;

    return map;
  }

  Kontak.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.name = map['name'];
    this.noTelp = map['noTelp'];
    this.email = map['email'];
    this.company = map['company'];
  }
}
