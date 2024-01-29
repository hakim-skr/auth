class UserModel {
  final String userId;
  final String firstName;
  final String lastName;
  final String username;
  final String phoneNumber;
  final String email;
  final String password;

  UserModel({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.phoneNumber,
    required this.email,
    required this.password,
  });

  String get fullName => "$firstName $lastName";
  static List<String> nameParts(String fullName) => fullName.split(" ");

  UserModel empty() => UserModel(
      userId: "",
      firstName: "",
      lastName: "",
      username: "",
      phoneNumber: "",
      email: "",
      password: "");

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'phoneNumber': phoneNumber,
      'email': email,
      'password': password, // this just for testin !!!!!!
    };
  }

  static fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json['uid'],
      firstName: json['firstName'] ?? nameParts(json['displayName'])[0],
      lastName: json['lastName'] ?? nameParts(json['displayName'])[0],
      username: json['username'] ?? nameParts(json['displayName']).join(""),
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      password: json['password'] ??
          "pass", // Note: This is just for testing, handle passwords securely in a real-world scenario.
    );
  }
}
