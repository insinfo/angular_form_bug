import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

const List<String> _powers = [
  'Really Smart',
  'Super Flexible',
  'Super Hot',
  'Weather Changer'
];

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [coreDirectives, formDirectives, FoqueDirective],
)
class AppComponent {
  Hero model = Hero(18, 'Dr IQ', _powers[0], 'Chuck Overstreet');
  bool submitted = false;
  List<Item> lista = <Item>[
    Item(id: 1),
    Item(id: 2),
    Item(id: 3),
    Item(id: 4),
    Item(id: 5),
    Item(id: 6),
  ];

  List<String> get powers => _powers;

  void onSubmit() => submitted = true;

  bool foque = false;
  void save() async {
    print('save()');

    for (var i = 0; i < lista.length; i++) {
      if (lista[i].name == null || lista[i].name == '') {
        lista[i].setFoque();
        break;
      }
    }

    await Future.delayed(Duration(milliseconds: 100), () {
      for (var i = 0; i < lista.length; i++) {
        if (lista[i].foque) {
          lista[i].removeFoque();      
        }
      }
    });
  }

  Future proces() {
    return Future.wait([
      Future.delayed(Duration(milliseconds: 50), () {
        print('proces()');
      })
    ]);
  }

  Map<String, bool> setCssValidityClass(NgControl control) {
    final validityClass = control.valid == true ? 'is-valid' : 'is-invalid';
    return {validityClass: true};
  }
}

class Item {
  int id;
  String name;
  bool foque = false;
  void setFoque() {
    foque = true;
    print('setFoque id $id');
  }

  void removeFoque() {
    foque = false;
  }

  Item({this.id, this.name});
  @override
  String toString() => 'id: $id | name: $name | foque: $foque';
}

class Hero {
  int id;
  String name, power, alterEgo;
  Hero(this.id, this.name, this.power, [this.alterEgo]);
  @override
  String toString() => '$id: $name ($alterEgo). Super power: $power';
}

@Directive(selector: '[foque]')
class FoqueDirective {
  Element inputElement;

  FoqueDirective(this.inputElement);

  @Input('foque')
  set foque(bool val) {
    if (val == true) {
      Future.delayed(Duration(milliseconds: 50), () {
        inputElement.focus();
        print('foque');
      });
    }
  }
}
