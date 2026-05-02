

class CartService{
final List<String> _cartlist=[];

List<String> get items=>_cartlist;

void addItems(String name){
 _cartlist.add(name);
}

void removeitem(int index){
   if(index>=0 && index<_cartlist.length){
    _cartlist.removeAt(index);
   }

}
}