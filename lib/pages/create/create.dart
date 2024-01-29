import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_local_database/pages/create/controller.dart';

class CreatePage extends GetView<CreateController> {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Note"),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16.0),
            TextField(
              controller: controller.titleController,
              decoration: const InputDecoration(
                labelText: "Title",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: controller.contentController,
              maxLines: 5,
              decoration: const InputDecoration(
                labelText: "Content",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
                height: 16.0), // Spasi tambahan di antara konten dan tombol
            ElevatedButton(
              onPressed: controller.onSubmit,
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(
                    255, 0, 0, 0), // Warna latar belakang tombol
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  "Submit",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white), // Ukuran teks tombol
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
