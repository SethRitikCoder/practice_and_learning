import 'package:flutter/material.dart';

class MyAddCart extends StatefulWidget {
  final String? title;
  const MyAddCart({super.key, this.title});

  @override
  State<MyAddCart> createState() => _MyAddCartState();
}

class _MyAddCartState extends State<MyAddCart> {
  List<String> list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.title != null) {
      list.add(widget.title.toString());
      list.add("Iphone 15");
      list.add("Samsung S25");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Add To Cart ',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: CartList(list: list)),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$125000",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.grey[800],
                elevation: 3.0,
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Buying Not Supported Yet.")),
                );
              },
              child: Text("Buy", style: TextStyle()),
            ),
          ],
        ),
      ),
    );
  }
}

class CartList extends StatefulWidget {
  final List<String> list;
  const CartList({super.key, required this.list});

  @override
  State<CartList> createState() => CartListState();
}

class CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.list.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: Icon(Icons.remove_circle_outline),
        onTap: () {
          setState(() {
            widget.list.removeAt(index);
          });
        },
        title: Text(
          widget.list[index],
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
