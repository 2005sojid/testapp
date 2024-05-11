import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:testapp/services/firestore.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirestoreService service = FirestoreService();
  final textController = TextEditingController();

  void openNoteBox({String? id}) {
    String text = id == null ? "Add" : "Update";
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          controller: textController,
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                if (id == null) {

                  
                  service.addNote(textController.text);
                }
                else {
          
                  
                  service.updateNote(id, textController.text);
                }
                textController.clear();

                Navigator.pop(context);
              },
              child: Text(text))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes', style: TextStyle(
          color: Colors.white,
          fontSize: 26
        ),),
        backgroundColor: Colors.deepPurple,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: service.allNotes(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List notes = snapshot.data!.docs;

            return ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot document = notes[index];
                  String docId = document.id;

                  Map<String, dynamic> data =
                      document.data() as Map<String, dynamic>;
                  String noteText = data['note'];
                  return ListTile(
                    title: Text(noteText),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: () => openNoteBox(id: docId),
                            icon: const Icon(Icons.settings)),
                        IconButton(onPressed: () => service.deleteNote(docId), icon: const Icon(Icons.delete))
                      ],
                    ),
                  );
                });
          } else {
            return Text("No notes...");
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openNoteBox,
        child: const Icon(Icons.add),
      ),
    );
  }
}
