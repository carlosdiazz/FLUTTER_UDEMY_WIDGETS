import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderPages extends StatefulWidget {
  const ListViewBuilderPages({super.key});

  @override
  State<ListViewBuilderPages> createState() => _ListViewBuilderPagesState();
}

class _ListViewBuilderPagesState extends State<ListViewBuilderPages> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      print(
          '$scrollController.position.pixels => $scrollController.position.maxScrollExtent');
      if (scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent) {
        //add5();
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 5));
    add5();
    isLoading = false;
    setState(() {});
    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) return;
    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lasId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lasId + 1);
    add5();
    print(imagesIds);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      //appBar: AppBar(
      //  title: Text('ListView'),
      //),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true, //cone sto quito el padding de arriba
        child: Stack(
          children: [
            RefreshIndicator(
              onRefresh: onRefresh,
              child: ListView.builder(
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                      placeholder: AssetImage('data/jar-loading.gif'),
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://picsum.photos/500/300?image=${imagesIds[index]}'));
                },
              ),
            ),
            if (isLoading)
              Positioned(
                child: loadingIcon(),
                left: size.width * 0.5 - 30,
                bottom: 40,
              )
          ],
        ),
      ),
    );
  }

  Container loadingIcon() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5), shape: BoxShape.circle),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
