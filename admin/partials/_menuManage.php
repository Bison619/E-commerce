<?php
    include '_dbconnect.php';
   

if($_SERVER["REQUEST_METHOD"] == "POST") {

    if(isset($_POST['createItem'])) {
        $name = $_POST["name"];
        $writer = $_POST["writer"];
        $description = $_POST["description"];
        $categoryId = $_POST["categoryId"];
        $price = $_POST["price"];

        $sql = 'INSERT INTO `book` (`bookName`, `writer`, `bookPrice`, `bookDesc`, `bookCategorieId`, `bookPubDate`) VALUES ("'.$name.'", "'.$writer.'", "'.$price.'", "'.$description.'", "'.$categoryId.'", current_timestamp())';   
        $result = mysqli_query($conn, $sql);
        // "'.$name.'", "'.$price.'", "'.$description.'", "'.$categoryId.'", current_timestamp())';
        $bookId = $conn->insert_id;
        if ($result){
            $check = getimagesize($_FILES["image"]["tmp_name"]);
            if($check !== false) {
                
                $newName = 'book-'.$bookId;
                $newfilename=$newName .".jpg";

                $uploaddir = $_SERVER['DOCUMENT_ROOT'].'/OnlineBookDelivery/img/';
                $uploadfile = $uploaddir . $newfilename;

                if (move_uploaded_file($_FILES['image']['tmp_name'], $uploadfile)) {
                    echo "<script>alert('success');
                            window.location=document.referrer;
                        </script>";
                } else {
                    echo "<script>alert('failed');
                            window.location=document.referrer;
                        </script>";
                }

            }
            else{
                echo '<script>alert("Please select an image file to upload.");
                        window.location=document.referrer;
                    </script>';
            }
        }
        else {
            echo "<script>alert('failed');
                    window.location=document.referrer;
                </script>";
        }
    }
    if(isset($_POST['removeItem'])) {
        $bookId = $_POST["bookId"];
        $sql = "DELETE FROM `book` WHERE `bookId`='$bookId'";   
        $result = mysqli_query($conn, $sql);
        $filename = $_SERVER['DOCUMENT_ROOT']."/OnlineBookDelivery/img/book-".$bookId.".jpg";
        if ($result){
            if (file_exists($filename)) {
                unlink($filename);
            }
            echo "<script>alert('Removed');
                window.location=document.referrer;
            </script>";
        }
        else {
            echo "<script>alert('failed');
            window.location=document.referrer;
            </script>";
        }
    }
    if(isset($_POST['updateItem'])) {
        $bookId = $_POST["bookId"];
        $bookName = $_POST["name"];
        $writer = $_POST["writer"];
        $bookDesc = $_POST["desc"];
        $bookPrice = $_POST["price"];
        $bookCategorieId = $_POST["catId"];

        $sql = 'UPDATE `book` SET `bookName`="'.$bookName.'", `writer`="'.$writer.'", `bookPrice`="'.$bookPrice.'", `bookDesc`="'.$bookDesc.'", `bookCategorieId`="'.$bookCategorieId.'" WHERE `bookId`="'.$bookId.'"';   
        $result = mysqli_query($conn, $sql);
        if ($result){
            echo "<script>alert('update');
                window.location=document.referrer;
                </script>";
        }
        else {
            echo "<script>alert('failed');
                window.location=document.referrer;
                </script>";
        }
    }
    if(isset($_POST['updateItemPhoto'])) {
        $bookId = $_POST["bookId"];
        $check = getimagesize($_FILES["itemimage"]["tmp_name"]);
        if($check !== false) {
            $newName = 'book-'.$bookId;
            $newfilename=$newName .".jpg";

            $uploaddir = $_SERVER['DOCUMENT_ROOT'].'/OnlineBookDelivery/img/';
            $uploadfile = $uploaddir . $newfilename;

            if (move_uploaded_file($_FILES['itemimage']['tmp_name'], $uploadfile)) {
                echo "<script>alert('success');
                        window.location=document.referrer;
                    </script>";
            } else {
                echo "<script>alert('failed');
                        window.location=document.referrer;
                    </script>";
            }
        }
        else{
            echo '<script>alert("Please select an image file to upload.");
            window.location=document.referrer;
                </script>';
        }
    }
}
?>