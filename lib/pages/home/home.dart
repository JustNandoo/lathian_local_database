import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_local_database/models/note.dart';
import 'package:latihan_local_database/pages/home/controller.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
        actions: [
          IconButton(
            onPressed: () => {}, // Tambahkan fungsi untuk aksi yang diinginkan
            icon: Icon(Icons.search),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.insertNote,
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Obx(
          () => controller.isLoading.value
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: controller.notes.length,
                  itemBuilder: (context, index) {
                    Map<String, dynamic> note = controller.notes[index];
                    return Card(
                      elevation: 3,
                      margin: const EdgeInsets.all(8),
                      child: ListTile(
                        title: Text(
                          note[titleKey] as String,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(note[contentKey] as String),
                        trailing: PopupMenuButton(
                          itemBuilder: ((context) => [
                                PopupMenuItem(
                                  child: Text("Edit"),
                                  onTap: () => controller.editNote(index),
                                ),
                                PopupMenuItem(
                                  child: Text("Delete"),
                                  onTap: () =>
                                      controller.removeNote(note[idKey] as int),
                                ),
                              ]),
                        ),
                        onTap: () => controller.editNote(
                            index), // Tambahan untuk aksi tap pada catatan
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
