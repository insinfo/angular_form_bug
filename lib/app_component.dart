import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

const List<String> _powers = ['Really Smart', 'Super Flexible', 'Super Hot', 'Weather Changer'];

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [coreDirectives, formDirectives],
)
class AppComponent {
  Hero model = Hero(18, 'Dr IQ', _powers[0], 'Chuck Overstreet');
  bool submitted = false;

  List<String> get powers => _powers;

  void onSubmit() => submitted = true;

  void save()  {
    //e.preventDefault();
    print('save()');
    // proces();
  }

  Future proces() {
    return Future.wait([
      Future.delayed(Duration(milliseconds: 500), () {
        print('proces()');
      })
    ]);
  }

  Map<String, bool> setCssValidityClass(NgControl control) {
    final validityClass = control.valid == true ? 'is-valid' : 'is-invalid';
    return {validityClass: true};
  }
}

class Hero {
  int id;
  String name, power, alterEgo;
  Hero(this.id, this.name, this.power, [this.alterEgo]);
  @override
  String toString() => '$id: $name ($alterEgo). Super power: $power';
}
