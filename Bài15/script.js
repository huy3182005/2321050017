let danhSachPhim = [
    {
        id: 1,
        tenPhim: "Mưa đỏ",
        namPhatHanh: 2025,
        tuoi: 16,
        thoiLuong: 2,
        quocGia: "Việt Nam",
        poster: "muado3.png",
        trailer: "https://www.youtube.com/watch?v=BD6PoZJdt_M"
    },
    {
        id: 2,
        tenPhim: "Panda",
        namPhatHanh: 2025,
        tuoi: 16,
        thoiLuong: 2,
        quocGia: "Mỹ",
        poster: "pandajs.png",
        trailer: "https://www.youtube.com/watch?v=_inKs4eeHiI"
    },
    {
        id: 3  ,
        tenPhim: "Conan",
        namPhatHanh: 2025,
        tuoi: 16,
        thoiLuong: 2,
        quocGia: "Nhật Bản",
        poster: "conanjs.png",
        trailer: "https://www.youtube.com/watch?v=dz5mN-iIC4g"
    },
    {
        id: 4 ,
        tenPhim: "Vô Hạn Thành",
        namPhatHanh: 2025,
        tuoi: 16,
        thoiLuong: 2,
        quocGia: "Nhật Bản",
        poster: "vohanthanh.png",
        trailer: "https://www.youtube.com/watch?v=BSkUboiyeCo"
    },
    {
        id: 5  ,
        tenPhim: "Bộ Tứ Báo Thủ",
        namPhatHanh: 2025,
        tuoi: 16,
        thoiLuong: 2,
        quocGia: "Việt Nam",
        poster: "botubaothujs.png",
        trailer: "https://www.youtube.com/watch?v=zKMOgOWn8lQ"
    },
    {
        id: 6  ,
        tenPhim: "Lật Mặt 7",
        namPhatHanh: 2025,
        tuoi: 16,
        thoiLuong: 2,
        quocGia: "Việt Nam",
        poster: "latmatjs.png",
        trailer: "https://www.youtube.com/watch?v=QdtPQ0wV53M"
    },
    {
        id: 7  ,
        tenPhim: "Em Và Trịnh",
        namPhatHanh: 2025,
        tuoi: 16,
        thoiLuong: 2,
        quocGia: "Việt Nam",
        poster: "emvatrinhjs.png",
        trailer: "https://www.youtube.com/watch?v=IosqnBOkk2I"
    },
    {
        id: 8 ,
        tenPhim: "Bố Già",
        namPhatHanh: 2025,
        tuoi: 15,
        thoiLuong: 2.5,
        quocGia: "Việt Nam",
        poster: "bogiajs.png",
        trailer: "https://www.youtube.com/watch?v=jluSu8Rw6YE"
    },
    {
        id: 9,
        tenPhim: "oppenheimer",
        namPhatHanh: 2023,
        tuoi: 18,
        thoiLuong: 2,
        quocGia: "Mỹ",
        poster: "oppenjs.png",
        trailer: "https://www.youtube.com/watch?v=bK6ldnjE3Y0"
    },
    {
        id: 10,
        tenPhim: "AVARTAR",
        namPhatHanh: 2021,
        tuoi: 12,
        thoiLuong: 2,
        quocGia: "Mỹ",
        poster: "avatar2js.png",
        trailer: "https://www.youtube.com/watch?v=d9MyW72ELq0"
    },
    {
        id: 11,
        tenPhim: "Quật Mộ Trùng Ma",
        namPhatHanh: 2024,
        tuoi: 16,
        thoiLuong: 2,
        quocGia: "Hàn Quốc",
        poster: "majs.png",
        trailer: "https://www.youtube.com/watch?v=66K9-l0EkE0"
    },
    {
        id: 12,
        tenPhim: "Vùng Đất Linh Hồn",
        namPhatHanh: 2025,
        tuoi: 12,
        thoiLuong: 2,
        quocGia: "Nhật Bản",
        poster: "vungdatlinhhonjs.png",
        trailer: "https://www.youtube.com/watch?v=j7_gGYifbiw"
    },

    
]

let phimHienTai = danhSachPhim[0];

let banner = document.getElementsByClassName('banner')[0];
let name = document.getElementById('Tên phim');
let namPhatHanh = document.getElementById('Năm');
let thoiLuong = document.getElementById('Thời lượng');
let quocGia = document.getElementById('Quốc gia');
let age = document.getElementById('Độ tuổi');
let trailer = document.getElementById('Trailer');
let bannerContent = document.querySelector('.banner-content'); // Đảm bảo bạn đã có dòng này để chọn phần tử


function chonPhim(idPhim) {
for (let i = 0; i < danhSachPhim.length; i++) {
    if (danhSachPhim[i].id == idPhim) {
        banner.style.backgroundImage = "url('" + danhSachPhim[i].poster + "')";
        name.innerText = "Tên phim: " + danhSachPhim[i].tenPhim;
        namPhatHanh.innerText = "Năm phát hành: " + danhSachPhim[i].namPhatHanh;
        thoiLuong.innerText = "Thời lượng: " + danhSachPhim[i].thoiLuong + " giờ";
        quocGia.innerText = "Quốc gia: " + danhSachPhim[i].quocGia;
        age.innerText = "Độ tuổi: " + danhSachPhim[i].tuoi + "+";
        trailer.href = danhSachPhim[i].trailer;
        bannerContent.classList.add('show');
        break;
        }
    }
}
