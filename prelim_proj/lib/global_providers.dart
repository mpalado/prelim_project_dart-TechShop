import 'package:prelim_proj/service/customer_service.dart';
import 'package:prelim_proj/service/product_service.dart';
import 'package:prelim_proj/service/purchase_service.dart';
import 'package:riverpod/riverpod.dart';
// Provider for CustomerService
final customerServiceProvider = Provider((ref) => CustomerService()); 
final productServiceProvider = Provider((ref) => ProductService());
final purchaseServiceProvider = Provider((ref) => PurchaseService());