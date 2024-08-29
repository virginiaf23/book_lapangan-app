import 'package:flutter/material.dart';

void main() {
  runApp(Payment());
}

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookingPage(),
    );
  }
}

class BookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pembayaran'),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
              'assets/img/lapangan.png', // Gantilah dengan nama file gambar Anda
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lapangan Futsal Romeo 5A',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '10% Discount area',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Added spacing before the divider
            Divider(height: 1, thickness: 1),
            SizedBox(height: 20), // Added spacing after the divider
            Row(
              children: [
                Icon(Icons.access_time, color: Colors.orange),
                SizedBox(width: 8),
                Text('08.00 - 10.00 WIB'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.calendar_today, color: Colors.orange),
                SizedBox(width: 8),
                Text('Selasa, 20 Agustus 2024'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.rectangle_outlined, color: Colors.orange), // Changed icon here
                SizedBox(width: 8),
                Text('16,8 m X 24,95 m'),
              ],
            ),
            SizedBox(height: 20), // Added spacing before the divider
            Divider(height: 1, thickness: 1),
            SizedBox(height: 20), // Added spacing after the divider
            Text(
              'Data Pemesan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.person, color: Colors.orange),
                SizedBox(width: 8),
                Text('Mohammad Farkhan'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.phone, color: Colors.orange),
                SizedBox(width: 8),
                Text('+62 1234567890'),
              ],
            ),
            SizedBox(height: 20), // Added spacing before the divider
            Divider(height: 1, thickness: 1),
            SizedBox(height: 20), // Added spacing after the divider
            Text(
              'Detail Harga',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.attach_money, color: Colors.orange),  // Icon added here
                SizedBox(width: 8),
                Text('Harga'),
                Spacer(),
                Text('Rp. 500.000'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.discount, color: Colors.orange),  // Icon added here
                SizedBox(width: 8),
                Text('Potongan harga'),
                Spacer(),
                Text('-Rp. 50.000'),
              ],
            ),
            SizedBox(height: 20), // Added spacing before the divider
            Divider(height: 1, thickness: 1),
            SizedBox(height: 20), // Added spacing after the divider
            Text(
              'Metode Pembayaran',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25.0),
                    ),
                  ),
                  builder: (context) {
                    return PaymentMethodModal();
                  },
                );
              },
              child: Row(
                children: [
                  Icon(Icons.payment, color: Colors.orange),
                  SizedBox(width: 8),
                  Text('Transfer Bank - BCA'),
                  Spacer(),
                  Icon(Icons.arrow_drop_down, color: Colors.grey),
                ],
              ),
            ),
            Spacer(),
            SizedBox(height: 20), // Added spacing before the divider
            Divider(height: 1, thickness: 1),
            SizedBox(height: 20), // Added spacing after the divider
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Harga',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Rp. 500.000',
                      style: TextStyle(
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Rp. 450.000',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text(
                  'Bayar',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentMethodModal extends StatefulWidget {
  @override
  _PaymentMethodModalState createState() => _PaymentMethodModalState();
}

class _PaymentMethodModalState extends State<PaymentMethodModal> {
  String selectedMethod = 'BCA';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pilih Metode Pembayaran',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Transfer Bank',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
          RadioListTile<String>(
            title: Row(
              children: [
                Image.asset('assets/img/bca.png', height: 24),
                SizedBox(width: 8),
                Text('BCA'),
              ],
            ),
            value: 'BCA',
            groupValue: selectedMethod,
            onChanged: (value) {
              setState(() {
                selectedMethod = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: Row(
              children: [
                Image.asset('assets/img/bri.png', height: 24),
                SizedBox(width: 8),
                Text('BRI'),
              ],
            ),
            value: 'BRI',
            groupValue: selectedMethod,
            onChanged: (value) {
              setState(() {
                selectedMethod = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: Row(
              children: [
                Image.asset('assets/img/mandiri.png', height: 24),
                SizedBox(width: 8),
                Text('Mandiri'),
              ],
            ),
            value: 'Mandiri',
            groupValue: selectedMethod,
            onChanged: (value) {
              setState(() {
                selectedMethod = value!;
              });
            },
          ),
          SizedBox(height: 16),
          Text(
            'Transfer E-Wallet',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
          RadioListTile<String>(
            title: Row(
              children: [
                Image.asset('assets/img/ovo.png', height: 24),
                SizedBox(width: 8),
                Text('OVO'),
              ],
            ),
            value: 'OVO',
            groupValue: selectedMethod,
            onChanged: (value) {
              setState(() {
                selectedMethod = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: Row(
              children: [
                Image.asset('assets/img/dana.png', height: 24),
                SizedBox(width: 8),
                Text('Dana'),
              ],
            ),
            value: 'Dana',
            groupValue: selectedMethod,
            onChanged: (value) {
              setState(() {
                selectedMethod = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: Row(
              children: [
                Image.asset('assets/img/gopay.png', height: 24),
                SizedBox(width: 8),
                Text('GoPay'),
              ],
            ),
            value: 'GoPay',
            groupValue: selectedMethod,
            onChanged: (value) {
              setState(() {
                selectedMethod = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: Row(
              children: [
                Image.asset('assets/img/LinkAja.png', height: 24),
                SizedBox(width: 8),
                Text('LinkAja'),
              ],
            ),
            value: 'LinkAja',
            groupValue: selectedMethod,
            onChanged: (value) {
              setState(() {
                selectedMethod = value!;
              });
            },
          ),
          SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Implementasikan logika untuk menyimpan metode pembayaran yang dipilih
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text('Pilih'),
            ),
          ),
        ],
      ),
    );
  }
}
