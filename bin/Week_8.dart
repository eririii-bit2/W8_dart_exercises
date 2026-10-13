/*
1. Cookie Shop
2. order 1 cookie
3. inventory = 64, dozen discount = 4
4. order
5. reciept
*/

void costumer(String costumerName) {
  print ("Costumer $costumerName");
  
}  

void order(int orderQuantity, int dozenDiscount, double total) {
  print('\n-------------------------');
  print('Order Quantity: $orderQuantity');
  print('Discount per Dozen: -$dozenDiscount');
  
  print('\n-------------------------');
  print('Total: $total');
}

void loading() {
  print("Parsing reciept...");
  for (int i = 0; i < 6; ++i) {
    print("$i...");
  }
}

void calculateTotal(int inventoryQuantity, int orderQuantity, int dozenDiscount, double total, double unitPrice){
  if (orderQuantity == 12) {
    total = orderQuantity * unitPrice;
    dozenDiscount - total;
    inventoryQuantity - orderQuantity;
  }
}

void main() {
  String costumerName = 'A';
  int inventoryQuantity = 64;
  int orderQuantity = 12;
  double total = 0;

  double unitPrice = 4.5;
  int dozenDiscount = 4;

  calculateTotal(inventoryQuantity, orderQuantity, dozenDiscount, total, unitPrice);

  bool isRegular = true;
  bool isOver100 = total > 100;
  
  loading();
  
  print('\n--- Reciept ---');
  costumer(costumerName);
  print('Regular: $isRegular');

  order(orderQuantity, dozenDiscount, total);
  print('Is the total over 100? $isOver100');
}