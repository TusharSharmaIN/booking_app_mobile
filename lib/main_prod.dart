import 'app.dart';
import 'bootstrap.dart';

void main() {
  // Production flavor specific setup can go here
  bootstrap(() => const ServiceBookingApp());
}
