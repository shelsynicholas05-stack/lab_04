# Order Summary Screen Spec
- Inputs: itemName (String), quantity (int), unitPrice (double) passed to the screen.
- Output: shows the item name, quantity and total price in the form "RM 25.00".
- Rules: the total must come from orderTotal() in lib/order.dart; show 2 decimal places.
- Rules: a Back button calls Navigator.pop to return to the previous screen.
- Out of scope: payments, editing quantity, discounts, saving orders, and changing any other file.
- Check: for Cheese Pizza, quantity 2, unit price 12.50, the screen shows "Total: RM 25.00".
