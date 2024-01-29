import 'package:auth_app/features/personalization/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class UserRepository extends GetxController {
  static final UserRepository inctence = Get.find();
  // variables:
  final devicestorge = GetStorage();
  final _db = FirebaseFirestore.instance;
  // -------------------------------- save user data to fireStore  -------------------------------//

  Future<bool> saveUser(UserModel user) async {
    try {
      final userExists = await _db
          .collection("users")
          .doc(user.userId)
          .get()
          .then((value) => value.exists);
      if (!userExists) {
        await _db.collection("users").doc(user.userId).set(user.toJson());
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
    return true;
  }

  Future<UserModel?> getUser(String userId) async {
    try {
      // UserModel user =   UserModel.fromJson(await _db.collection("users").doc(userId).get().then((value) => value.data()));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
    return null;
  }
}
