import 'package:flutter/material.dart';
import 'package:music_playlist/screens/playlist_details_screen.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PlaylistDetailsScreen()),
            );
            },
            child: Text('Playlist Page'),
            ),
          ),
        );
      }
   }
