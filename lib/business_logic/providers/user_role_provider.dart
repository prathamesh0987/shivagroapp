import 'package:flutter/material.dart';
import 'package:shivagroapp/data/models/user_role.dart';

class UserRoleProvider with ChangeNotifier{
  UserRole _role=UserRole.DataEntryOperator;

  UserRole get role=> _role;

  void setRole(UserRole role){
    _role=role;
    notifyListeners();
  }

  bool get canEditProduct=> _role ==UserRole.Admin;
  bool get CanGenerateInvoice=> _role==UserRole.Admin;
}