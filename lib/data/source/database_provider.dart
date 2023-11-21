// //This is a hive database provider that will provide the database instance to the repository
// class DatabaseProvider {
//   static const String _weatherBox = "weatherBox";

//   // instance of box collections. If the box collection is not created, it will create a new one
//   // and return the instance of the box collection
//   // if the box collection is already created, it will return the instance of the box collection
//   // from the instance of the box collection, we can get the 


//   Future<Box> getWeatherBox() async {
//     var dir = await getApplicationDocumentsDirectory();
//     Hive.init(dir.path);
//     return Hive.openBox(_weatherBox);
//   }
// }