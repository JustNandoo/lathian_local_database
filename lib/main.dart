import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_local_database/db/db_helper.dart';
import 'package:latihan_local_database/pages/create/bindings.dart';
import 'package:latihan_local_database/pages/create/create.dart';
import 'package:latihan_local_database/pages/home/binding.dart';
import 'package:latihan_local_database/pages/home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.initDb();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 253, 0, 0)),
        useMaterial3: true,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(
            name: "/", page: () => const HomePage(), binding: HomeBindings()),
        GetPage(
            name: "/create",
            page: () => const CreatePage(),
            binding: CreateBindings())
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
