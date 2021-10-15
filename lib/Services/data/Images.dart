class Images {
  int id;
  String url;

  Images({this.id, this.url});

  Images.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    return data;
  }
}

final images = [
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412638/QuotesCreator/36_ox0tg4.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412637/QuotesCreator/37_z4xw0a.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412637/QuotesCreator/35_o56cqe.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412637/QuotesCreator/38_hpacaj.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412637/QuotesCreator/34_x8bspi.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412636/QuotesCreator/33_hazp9j.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412636/QuotesCreator/31_v3vve2.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412635/QuotesCreator/32_aocjru.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412635/QuotesCreator/29_vr9t3k.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412635/QuotesCreator/30_rqwxzg.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412635/QuotesCreator/28_ignhax.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412635/QuotesCreator/27_ulvlc0.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412635/QuotesCreator/23_ilc6jf.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412635/QuotesCreator/25_zmioyi.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412635/QuotesCreator/22_j6awsq.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412635/QuotesCreator/13_i7iuyb.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412635/QuotesCreator/24_sbpxda.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412635/QuotesCreator/26_t18vxt.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412634/QuotesCreator/19_ld04iz.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412634/QuotesCreator/21_kzt5zx.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412634/QuotesCreator/20_moa04o.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412633/QuotesCreator/16_vdyvwa.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412633/QuotesCreator/14_ichkna.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412633/QuotesCreator/15_ihtmtg.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412633/QuotesCreator/18_hxijzy.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412632/QuotesCreator/17_amvewr.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412632/QuotesCreator/12_m8a4xx.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412631/QuotesCreator/47_soycuy.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412631/QuotesCreator/9_hg27hy.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412631/QuotesCreator/10_lpe13l.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412631/QuotesCreator/48_xcmhkd.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412631/QuotesCreator/11_miogb3.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412630/QuotesCreator/49_iy7lo0.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412630/QuotesCreator/8_x4jnxu.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412630/QuotesCreator/50_dgdhsv.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412629/QuotesCreator/7_kx1lcq.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412629/QuotesCreator/44_tp7blz.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412629/QuotesCreator/45_ubzkjr.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412628/QuotesCreator/42_ldpz0t.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412628/QuotesCreator/5_le3pzj.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412628/QuotesCreator/6_xszhks.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412627/QuotesCreator/39_ey9o5d.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412627/QuotesCreator/43_uxpx56.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412627/QuotesCreator/41_ocjhlz.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412627/QuotesCreator/2_f6dya4.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412627/QuotesCreator/41_ocjhlz.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412626/QuotesCreator/1_wb2a1k.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412625/QuotesCreator/4_wwvmia.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412625/QuotesCreator/3_e5dxf3.png'),
  Images(
      id: 1,
      url:
          'https://res.cloudinary.com/dtsoftware/image/upload/v1631412625/QuotesCreator/40_o3rahq.png'),
];
