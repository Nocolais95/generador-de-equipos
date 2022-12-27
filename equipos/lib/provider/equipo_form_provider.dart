

import 'package:flutter/cupertino.dart';

class EquipoFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String name;
 
  EquipoFormProvider(
    this.name
  );

  bool isValidForm() {
    print(name);
    return formKey.currentState?.validate() ?? false;
  }
}