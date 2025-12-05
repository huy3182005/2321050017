<?php
    include "connect.php";
    $id = $_GET['id'];
    $sql = "DELETE FROM quoc_gia WHERE id = $id";
    mysqli_query($conn, $sql);
    mysqli_close($conn);
    header("Location: index.php?page_layout=quocgia");
?>

<!-- <?php
    include "connect.php";
    
    if(isset($_GET['id']) && !empty($_GET['id'])) {
        $id = intval($_GET['id']);
        
        // Kiểm tra xem quốc gia có đang được sử dụng không
        $checkSql = "SELECT COUNT(*) as count FROM phim WHERE quoc_gia_id = $id";
        $checkResult = mysqli_query($conn, $checkSql);
        $row = mysqli_fetch_assoc($checkResult);
        
        if($row['count'] > 0) {
            // Có phim đang sử dụng quốc gia này
            echo "<script>
                alert('Không thể xóa! Có " . $row['count'] . " phim đang sử dụng quốc gia này.');
                window.location.href = 'index.php?page_layout=quocgia';
            </script>";
        } else {
            // Không có phim nào sử dụng, có thể xóa
            $sql = "DELETE FROM quoc_gia WHERE id = $id";
            
            if(mysqli_query($conn, $sql)) {
                mysqli_close($conn);
                header("Location: index.php?page_layout=quocgia");
                exit();
            } else {
                echo "Lỗi: " . mysqli_error($conn);
            }
        }
    } else {
        header("Location: index.php?page_layout=quocgia");
        exit();
    }
?> -->