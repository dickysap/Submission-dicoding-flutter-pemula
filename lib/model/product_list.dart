class ListProduct {
  String name;
  String price;
  String description;
  String imageAsset;
  List<String> color;

  ListProduct(
      {required this.name,
      required this.price,
      required this.description,
      required this.imageAsset,
      required this.color});
}

var listProductList = [
  ListProduct(
    name: 'Home n Home Air Fryer',
    price: 'Rp. 999.000',
    description:
        'HOME & HOME AIRFRYER adalah alat memasak yang fungsi utamanya adalah menggoreng makanan tanpa minyak. Sehingga menghasilkan makanan yang lebih sehat tanpa minyak.',
    imageAsset: 'images/img-1.jpg',
    color: ['merah', 'kuning', 'hijau'],
  ),
  ListProduct(
    name: 'Dailin Power Tools',
    price: 'Rp. 599.000',
    description:
        'Bor Multi Fungsi Untuk Berbagai Macam Pekerjaan DALIN POWER TOOLS adalah bor multi fungsi yang dapat digunakan untuk melubangi, membersihkan dan mengendurkan/mengencangkan sekrup. Dilengkapi dengan flexible bit sehingga mudah menjangkau tempat-tempat yang sulit.',
    imageAsset: 'images/img-2-1.jpg',
    color: ['merah', 'kuning', 'hijau'],
  ),
  ListProduct(
    name: 'Sameo Kompor',
    price: 'Rp 599.000',
    description:
        'Kompor Gas Sameo bisa digunakan untuk sumber gas LPG maupun Gas Pipa dari pemerintah. Memiliki 3 Tungku terdiri dari 1 infrared dan 2 api yang bisa membantu mempercepat waktu memasak',
    imageAsset: 'images/sameo.jpg',
    color: ['merah', 'kuning', 'hijau'],
  ),
  ListProduct(
    name: 'Dr . Duck Rice Cooker',
    price: 'Rp. 1.399.000',
    description:
        'Rice Cooker Rendah Gula menurunkan kadar gula pada nasi hingga 40%. Berfungsi sebagai penanak, penghangat/pemanas ',
    imageAsset: 'images/rice.jpg',
    color: ['merah', 'kuning', 'hijau'],
  )
];
