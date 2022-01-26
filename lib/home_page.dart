import 'package:amazon_ui_best/model.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        bottom:  PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Container(
            margin: const EdgeInsets.only(left: 10,right: 10,bottom: 10),

            height: 50,
            width: 395,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "What are you looking for ?",
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.teal,)),
                suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.photo_camera,color: Colors.teal,))
              ),
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.mic)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_sharp)),
        ],
        title: SizedBox(
          height: 100,
            child: Image.asset("asset/image/amazon_logo.png",
            color: Colors.black,)),
      ),
      drawer: Drawer(),
      body: ListView(
        children: [Column(
          children: [
                Container(
                  height: 50,
                  color: Colors.blueGrey,
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.location_on,color: Colors.white,)),
                      const Text("Deliver to Uzbekistan, Javlon of",style: TextStyle(color: Colors.white),)
                    ],
                  )
                ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              height: 150,
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 170,
                      width: 280,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(70),bottomRight: Radius.circular(70)),
                        image: DecorationImage(
                          image: AssetImage("asset/image/image_1.jpeg"),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  const Text("We ship 45 millon \nproducts"),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //# Sing in
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              height: 170,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Sign in for the best experience",),
                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(onPressed: (){},
                  child: const Text("Sign in"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                    minWidth:MediaQuery.of(context).size.width,
                    height: 50,
                  color: Colors.orange,),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(onPressed: (){}, child: const Text("Create an account"))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //# Deal of the day Page
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              height: 350,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Deal of the Day",
                      style: TextStyle(fontSize: 20)),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset("asset/image/item_7.jpeg",
                    fit: BoxFit.cover,),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Up to 31% off APC UPC Battery Back \n\$10.99 -\$79.9")
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //#Best seller in Electronics
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              height: 450,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Best seller in Electronics",
                      style: TextStyle(fontSize: 20)),
                  const SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                    itemCount: Product.products.length,
                    itemBuilder: ( context, index) {
                    return buildContainer(Product.products[index]);
                    },),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              height: 550,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Top products in Camera",
                  style: TextStyle(fontSize: 20),),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 270,
                      width: 400,
                      child: Image(image: AssetImage("asset/image/image_2.jpeg"),
                      fit: BoxFit.cover,)),
                  const SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    crossAxisSpacing: 10
                  ),
                    itemCount: Product2.product2.length,
                    itemBuilder: ( context, index) {
                    return buildContainer2(Product2.product2[index]);
                    },),
                ],
              ),
            ),
          ],

        ),
    ]
      ),
    );
  }

  Container buildContainer2(Product2 elem) => Container(
    color: Colors.white,
    child: Image.asset(elem.image2,fit: BoxFit.cover,),
  );

  Container buildContainer(Product e) => Container(
    color: Colors.white,
    child: Image.asset(e.image),
  );
}
