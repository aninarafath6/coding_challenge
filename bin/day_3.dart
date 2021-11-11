// get all keys from map
  // Map<String, Map<String, dynamic>> users = {
//   'Alan': {'age': 27, 'online': false},
//   'Jeff': {'age': 32, 'online': true},
//   'Sarah': {'age': 48, 'online': false},
//   'Ryan': {'age': 19, 'online': true}
// };
// print(day_3(users));
day_3(Map<String, Map<String, dynamic>> users) => users.entries;
