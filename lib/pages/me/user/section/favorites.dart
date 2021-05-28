import 'package:flutter/material.dart';
import 'package:garbage_classification/config/global_config.dart';
import 'package:garbage_classification/generated/l10n.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<FavoritesPage> {
  @override



  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: GlobalConfig.themeData,
        home: new Scaffold(
            appBar: AppBar(
              backgroundColor: GlobalConfig.themeColor,
              leading: new IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back, size: 25),
              ),
              title: Text(LanguageChange.of(context).favorites),
              centerTitle: true,
            ),
            body: ListView.builder(
                itemCount: GlobalConfig.favoritesGarbage.length,
                itemBuilder: (context, index) {
                  return Container(
                      padding: EdgeInsets.only(top: 7),
                      margin: const EdgeInsets.only(bottom: 4.0),
                      color: GlobalConfig.rowColor,
                      height: 72,
                      child: ListTile(
                        title: Text(GlobalConfig.favoritesGarbage[index],
                            style: TextStyle(
                                fontSize: GlobalConfig.fontSize * 0.9)),
                        leading:
                        Image.asset(GlobalConfig.fourPic[GlobalConfig.favoritesPic[GlobalConfig.favoritesGarbage[index]]]),
                        trailing: new IconButton(
                          icon: Icon(Icons.favorite,
                            color:  Colors.red ,
                          ),
                          onPressed: () {
                            setState(() {
                                GlobalConfig.favoritesGarbage.remove(GlobalConfig.favoritesGarbage[index]);
                                //GlobalConfig.favoritesPic.remove(GlobalConfig.favoritesGarbage[index]);
                            });
                          },
                        ),
                      ));
                }),
            ));
  }
}
