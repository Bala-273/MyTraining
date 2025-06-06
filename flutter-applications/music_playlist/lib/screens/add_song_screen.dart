import 'package:flutter/material.dart';
import '../services/database_helper.dart';

class AddSongScreen extends StatefulWidget {
  @override
  _AddSongScreenState createState() => _AddSongScreenState();
}

class _AddSongScreenState extends State<AddSongScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _artistController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _artistController.dispose();
    super.dispose();
  }

  void _saveSong() async {
    if (_formKey.currentState!.validate()) {
      await DatabaseHelper().insertSong({
        'title': _titleController.text,
        'artist': _artistController.text,
      });
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Song'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'Song Title'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a song title';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _artistController,
                decoration: const InputDecoration(labelText: 'Artist'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an artist name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _saveSong,
                child: const Text('Save Song'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
