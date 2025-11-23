<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Buổi 2 php</title>
</head>
<body>
    <?php 
        //1. In ra màn hình
        echo "hello world! <br> ";

        echo "Hi <br> ";
        
        //2. Biến
        // cú pháp: $ + tên biến = giá trị của biến 
        $ten = "Pham Huy";
        $tuoi = 20;

        echo $ten." ".$tuoi." tuổi <br>";

        //3. Hằng
        define("soPi", "3.14");
        echo soPi. "<br>";

        //4. Phân biệt ' ' và '' ''
        echo '$ten'. "<br>"; // muốn viết ra chuỗi
        echo "$ten". "<br>"; // gọi biến

        //5. CHuỗi
        #5.1 Ktra độ dài của chuỗi
        echo strlen($ten)."<br>";
        #5.2 Đếm số từ
        echo str_word_count($ten)."<br>";
        #5.3 Tìm kiếm kỹ tự trong chuỗi
         echo strpos($ten, "H")."<br>";
        #5.4 thay thế kí tự trong chuỗi
        echo str_replace("Huy","An", $ten)."<br>";

        //6 Toán tử
        $so1 = 10;
        $so2 = 5;
        # + - * /
        # += -+ *= /=
        # so sánh == != > < >= <= ===
        echo $so1 +$so2 . "<br>";

        //7. Câu điều kiện
        //if(){logic}
        //elseif(điều kiện){logic}
        $so1 = 3;
        $so2 = 5;

        $tong = $so1 + $so2;

        if ($tong < 15) {
        echo "Nhỏ hơn 15";
        } 
        elseif ($tong == 15) {
        echo "Tổng bằng 15";
        } 
        else {
        echo "Lớn hơn 15"."<br>";
        }
        
        //8. Switch case
        $color = "red";
        switch ($color){
            case "red":
              echo "is red"."<br>";
              break;
            case "blue":
              echo "is blue"."<br>";
              break;
            default:
              echo "no color"."<br>";
              break;
        }
        //9. For
        for($i=0;$i<10;$i++) {
          echo $i."<br>";
        }
        //10. Mảng 
        $mang = ["An", "nhat anh"," Vu anh"];
        // đếm phần tử
        echo count($mang)."<br>";
        echo $mang[1]."<br>";
        print_r($mang);
        $mang[0] = "hai anh";
        print_r($mang);
        $mang[] = "tam";
        print_r($mang);
        
        #xoá
        unset($mang[3]);
        print_r($mang);
    ?>
</body>
</html>