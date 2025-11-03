let danhsachphim = [
  {  
    id: 1,
    tenphim: "mưa đỏ",
    namphathanh: 2025,
    tuoi: 16,
    thoiluong: 2,
    quocgia: "việt nam",
    poster: "url('/Bài7/fpt/img/phim/muado.png')",
    theloai: "phim chieu rap",
  },
  {
    id: 2,
    tenphim: "conan",
    namphathanh: 2023,
    tuoi: 16,
    thoiluong: 2,
    quocgia: "nhat ban",
    poster: "url('/Bài7/fpt/img/phim/conan.png')",
    theloai: "phim hoat hinh",
  },
  {
    id: 3,
    tenphim: "nguoi dep va quai vat",
    namphathanh: 2021,
    tuoi: 16,
    thoiluong: 2,
    quocgia: "my",
    poster: "url('/Bài7/fpt/img/phim/beautyandthebeaets.jpg')",
    theloai: "phim le",
  },
];

let phimhientai = danhsachphim[0];
let banner = document.getElementById('banner');

function chonphim(idphim) {
  for (let i = 0; i < danhsachphim.length; i++) {
    if (danhsachphim[i].id == idphim) {
      banner.style.backgroundImage = danhsachphim[i].poster;
      banner.style.backgroundSize = "cover";
      banner.style.backgroundPosition = "center";
    }
  }
}
