class User {
  final String email;
  final String firstName;
  final String lastName;
  User({
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  factory User.nullable() => User(email: '', firstName: '', lastName: '');

  // используется,если не удаётся получить User`a
}
