
import 'package:flutter/material.dart';
import 'package:news_app/Pages/category_title.dart';
import 'package:news_app/helper/api%20service.dart';
import 'package:news_app/helper/categorydata.dart';
import 'package:news_app/models/category.dart';
import 'package:news_app/models/news.dart';


void main(){
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<CategoryModel> categories = <CategoryModel>[];


ApiService client =ApiService();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories=getCategories();
  }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text("News",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black)),
              Text("Panda",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.blue),)
            ],
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context,index){
                    return CategoryTitle(
                      imageUrl :categories[index].imgUrl,
                      categporyName :categories[index].categoryName,
                    );
                  },
                ),
              ),
              FutureBuilder(
                future: client.getArticleModel(),

                  builder: (BuildContext context,AsyncSnapshot<List<ArticleModel>> snapshot){
                  if(snapshot.hasData){
                    return const Center(
                      child: Text("Sucess"),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}








