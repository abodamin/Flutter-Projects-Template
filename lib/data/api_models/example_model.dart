// To parse this JSON data, do
//
//     final example = exampleFromJson(jsonString);

import 'dart:convert';

class Example {
  Example({
    this.menu,
  });

  final Menu menu;

  factory Example.fromRawJson(String str) => Example.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Example.fromJson(Map<String, dynamic> json) => Example(
    menu: json["menu"] == null ? null : Menu.fromJson(json["menu"]),
  );

  Map<String, dynamic> toJson() => {
    "menu": menu == null ? null : menu.toJson(),
  };
}

class Menu {
  Menu({
    this.id,
    this.value,
    this.popup,
  });

  final String id;
  final String value;
  final Popup popup;

  factory Menu.fromRawJson(String str) => Menu.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
    id: json["id"] == null ? null : json["id"],
    value: json["value"] == null ? null : json["value"],
    popup: json["popup"] == null ? null : Popup.fromJson(json["popup"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "value": value == null ? null : value,
    "popup": popup == null ? null : popup.toJson(),
  };
}

class Popup {
  Popup({
    this.menuitem,
  });

  final List<Menuitem> menuitem;

  factory Popup.fromRawJson(String str) => Popup.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Popup.fromJson(Map<String, dynamic> json) => Popup(
    menuitem: json["menuitem"] == null ? null : List<Menuitem>.from(json["menuitem"].map((x) => Menuitem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "menuitem": menuitem == null ? null : List<dynamic>.from(menuitem.map((x) => x.toJson())),
  };
}

class Menuitem {
  Menuitem({
    this.value,
    this.onclick,
  });

  final String value;
  final String onclick;

  factory Menuitem.fromRawJson(String str) => Menuitem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Menuitem.fromJson(Map<String, dynamic> json) => Menuitem(
    value: json["value"] == null ? null : json["value"],
    onclick: json["onclick"] == null ? null : json["onclick"],
  );

  Map<String, dynamic> toJson() => {
    "value": value == null ? null : value,
    "onclick": onclick == null ? null : onclick,
  };
}
