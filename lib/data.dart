class IconItem {
  final String icon;
  final String judul;
  final String rate;
  final String harga;

  IconItem({
    required this.icon,
    required this.judul,
    required this.rate,
    required this.harga,
  });
}

List<IconItem> icons = [
  IconItem(
    icon: 'assets/images/telkom.png',
    judul: 'Telkomsel',
    rate: '0,73',
    harga: '30.000 - 10.000.000',
  ),
  IconItem(
    icon: 'assets/images/xl.png',
    judul: 'XL',
    rate: '0,72',
    harga: '50.000 - 10.000.000',
  ),
  IconItem(
    icon: 'assets/images/axis.png',
    judul: 'Axis',
    rate: '0,72',
    harga: '50.000 - 10.000.000',
  ),
  IconItem(
    icon: 'assets/images/tree.png',
    judul: 'Three',
    rate: '0,78',
    harga: '30.000 - 10.000.000',
  ),
];
