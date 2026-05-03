

class CartService{
  static final CartService _instance=CartService._internal();
  factory CartService()=>_instance;
  CartService._internal();
  


 List<String> _cartlist=[];

List<String> get items=>_cartlist;

set items(List<String> newList){
   if(newList.isNotEmpty){
     _cartlist=newList;
   }
 }

void addItems(String name){
 _cartlist.add(name);
}

void removeitem(int index){
   if(index>=0 && index<_cartlist.length){
    _cartlist.removeAt(index);
   }

}
}