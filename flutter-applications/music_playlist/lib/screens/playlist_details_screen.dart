import 'package:flutter/material.dart';
import '../services/database_helper.dart';
import 'add_song_screen.dart';

class PlaylistDetailsScreen extends StatelessWidget {
  const PlaylistDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Songs'),
        backgroundColor: Colors.grey,
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: DatabaseHelper().getSongs(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          var songs = snapshot.data!;
          return ListView.builder(
            itemCount: songs.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(songs[index]['title']),
                subtitle: Text(songs[index]['artist']),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddSongScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
