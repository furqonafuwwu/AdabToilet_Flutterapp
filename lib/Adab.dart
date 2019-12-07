import 'package:flutter/material.dart';

class TampilHalaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Adab di toilet"),
      ), //AppBar

      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              '1.Mendahulukan Kaki Kiri Ketika Masuk WC Dan Mendahulukan Kaki Kanan Ketika Keluar',
              'http://blog.elevenia.co.id/wp-content/uploads/2018/05/doa-masuk-toilet-dan-keluar-wc-825x5101.jpg',
              'Aisyah radhiyallahu ‘anha, ia berkata: “Rasulullah shalallahu ‘alaihi wasallam menyukai mendahulukan yang kanan pada setiap perkara yang baik.” (HR. Muslim). Oleh karena itu, beberapa ulama seperti Al-Imam An-Nawawi dalam kitab beliau, Syarhu Shahih Muslim, dan juga Al-Imam Ibnu Daqiqil ‘Id menyebutkan disukainya seseorang yang masuk WC dengan mendahulukan kaki kiri dan ketika keluar dengan mendahulukan kaki kanan.'),
          _createPageItemUI(
              '2.Tidak Membawa Sesuatu Yang Terdapat Padanya Nama Allah',
              'https://s3.bukalapak.com/img/8634527663/s-194-194/IMG_20181023_WA0041_scaled.jpg',
              'Sesuatu apapun yang terdapat padanya nama Allah subhanahu wata’ala, atau terdapat padanya ayat Al-Qur’an, atau terdapat padanya nama yang disandarkan kepada salah satu dari nama Allah subhanahu wata’ala seperti Abdullah, Abdurrahman dan yang lainnya, maka tidak sepantasnya dimasukkan ke tempat buang hajat (WC). Allah subhanahu wata’ala berfirman: “Barangsiapa yang mengagungkan syi’ar-syi’ar Allah, maka sesungguhnya itu timbul dari ketaqwaan hati.” (QS. Al-Hajj: 32).'),
          _createPageItemUI(
              '3.Berhati-hati Dari Percikan Najis',
              'https://ds393qgzrxwzn.cloudfront.net/resize/m500x500/cat1/img/images/0/wGr6RxcmOg.jpg',
              'Tidak berhati-hati dari percikan kencing merupakan salah satu penyebab diadzabnya seseorang di alam kubur. Tetapi perkara ini sering disepelekan oleh kebanyakan orang. Suatu ketika Rasulullah shalallahu ‘alaihi wasallam melewati dua kuburan, seraya beliau shalallahu ‘alaihi wasallam bersabda:Sungguh dua penghuni kubur ini sedang diadzab. Tidaklah keduanya diadzab melainkan karena menganggap sepele perkara besar. Adapun salah satunya, ia diadzab karena tidak menjaga dirinya dari kencing. Sedangkan yang lainnya, ia diadzab karena suka mengadu domba….” (HR. Al-Bukhari no. 216 dan Muslim no. 292)'),
          _createPageItemUI(
              '4.Tidak Menampakkan Aurat',
              'https://httpodeanishao.files.wordpress.com/2016/09/ayo-tutup-aurat.jpg?w=730',
              'Menutup aurat merupakan perkara yang wajib dalam Islam. Oleh karena itu Rasulullah shalallahu ‘alaihi wasallam melarang seseorang dalam keadaan apapun, termasuk ketika buang hajat, untuk menampakkan auratnya di hadapan orang lain. Beliau shalallahu ‘alaihi wasallam bersabda: “Apabila dua orang buang hajat, maka hendaklah keduanya saling menutup auratnya dari yang lain dan janganlah keduanya saling berbincang-bincang. Sesungguhnya Allah sangat murka dengan perbuatan tersebut.” (HR. Ahmad dishahihkan Ibnus Sakan, Ibnul Qathan, dan Al-Albani, dari Jabir bin Abdillah radhiallahu ‘anhu)'),
          _createPageItemUI(
              '5.Tidak Beristinja’ dengan Tangan Kanan',
              'https://www.pulsk.com/images/2013/06/17/51be88c87324e_51be88c87b082.jpg',
              'Rasulullah shalallahu ‘alaihi wasallam melarang beristinja’ dengan tangan kanan sebagaimana sabda beliau shalallahu ‘alaihi wasallam: “Janganlah seseorang diantara kalian memegang kemaluan dengan tangan kanannya ketika sedang kencing dan jangan pula cebok dengan tangan kanan.” (HR. Al-Bukhari dan Muslim dari shahabat Abu Qotadah radhiallahu ‘anhu)'),
          _createPageItemUI(
              '6.Tidak Menghadap Atau Membelakangi Kiblat Ketika Buang Hajat',
              'http://3.bp.blogspot.com/-GOM6Abq39Ms/UzNTBIw3L2I/AAAAAAAACyw/H7KtRIqek_g/s1600/wc-gebruik1.jpg',
              'Para ulama berbeda pendapat dalam permasalahan ini. Sebagian ulama berpendapat dilarangnya buang hajat dengan menghadap atau membelakangi kiblat secara mutlak, baik di tempat terbuka maupun di tempat tertutup. Inilah pendapat Ibnu Taimiyyah, Asy-Syaukani, Asy-Syaikh Al-Albani dan yang lainnya. Berdalil dengan hadits dari Abu Ayyub Al-Anshari radhiallahu ‘anhu, Rasulullah shalallahu ‘alaihi wasallam bersabda:Apabila seseorang dari kalian buang hajat, maka janganlah menghadap kiblat atau membelakanginya. Akan tetapi hendaknya ia menyamping dari arah kiblat.” (HR. Al-Bukhari No. 394 dan Muslim No. 264)'),
        ],
      ), //PageView
    ); //Sccafold
  }
}


_createPageItemUI(String nama, String gambar, String deskripsi) {
  return Container(
    child: ListView(
      children: <Widget>[
        Image(
          image: NetworkImage(gambar),
          height: 300.0,
          fit: BoxFit.cover,
        ),

        SizedBox(
          height: 20.0,
        ), //SizedBox

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(nama,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        ), //Padding

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            deskripsi,
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.justify,
          ),
        )
      ],
    ),
  );
}