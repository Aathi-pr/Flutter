import 'package:dog_info/view_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: const Text('Dog Info'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        ),
        body: WallpaperList(),
      ),
     theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      useMaterial3: true),
    );
  }
}

class WallpaperList extends StatelessWidget{
  WallpaperList({super.key});

  final List<String> wallpaperName = [
    'Images',
    'Ember_Mac',
    'Mac_Commander',
    'FireLicked_Mac',
    'BOP_Mac',
  ];

  final Map<String?, String?> wallpaperInfo = {
    'images': 'this is an images Wallpaper',
    'Ember_Mac': 'This is an Ember Mac Wallpaper',
    'Mac_Commander': 'This is a Mac_Commander Wallpaper',
    'FireLicked_Mac': 'This is a FireLicked Wallpaper',
    'BOP_Mac': 'This is a BOP_Mac Wallpaper',

  };
  @override
  Widget build(BuildContext context){
    return ListView.builder(itemCount: wallpaperName.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(wallpaperName[index]),
        textColor: Colors.white,
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ViewDetails(wallpaperName: wallpaperName[index], wallpaperDetails: wallpaperInfo[wallpaperName[index]] ?? 'No Available Images'),));
        },
      );
    },
    );
  }
}