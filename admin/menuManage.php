
<style>
	#adminsti{
  position: fixed;
 top: 10px;
 height: 50%;
    
}
</style>
<div class="container-fluid" style="margin-top:98px">
	
	<div class="col-lg-12">
		<div class="row">
			<!-- FORM Panel -->
			<div class="col-md-4" >
			<form action="partials/_menuManage.php" method="post" enctype="multipart/form-data" id="adminsti" > 
				<div class="card mb-3" >
					<div class="card-header" style="background-color: rgb(111 202 203);">
						Create New Item
				  	</div>
					<div class="card-body" >
							<div class="form-group">
								<label class="control-label">Name: </label>
								<input type="text" class="form-control" name="name" required>
							</div>
							<div class="form-group">
								<label class="control-label">Writer: </label>
								<input type="text" class="form-control" name="writer" required>
							</div>
							<div class="form-group">
								<label class="control-label">Description: </label>
								<textarea cols="30" rows="3" class="form-control" name="description" required></textarea>
							</div>
                            <div class="form-group">
								<label class="control-label">Price</label>
								<input type="number" class="form-control" name="price" required min="1">
							</div>	
							<div class="form-group">
								<label class="control-label">Category: </label>
								<select name="categoryId" id="categoryId" class="custom-select browser-default" required>
								<option hidden disabled selected value>None</option>
                                <?php
                                    $catsql = "SELECT * FROM `categories`"; 
                                    $catresult = mysqli_query($conn, $catsql);
                                    while($row = mysqli_fetch_assoc($catresult)){
                                        $catId = $row['categorieId'];
                                        $catName = $row['categorieName'];
                                        echo '<option value="' .$catId. '">' .$catName. '</option>';
                                    }
                                ?>
								</select>
							</div>
							
							<div class="form-group">
								<label for="image" class="control-label">Image</label>
								<input type="file" name="image" id="image" accept=".jpg" class="form-control" required style="border:none;">
								<small id="Info" class="form-text text-muted mx-3">Please .jpg file upload.</small>
							</div>
					</div>
							
					<div class="card-footer">
						<div class="row">
							<div class="mx-auto">
								<button type="submit" name="createItem" class="btn btn-sm btn-primary"> Create </button>
							</div>
						</div>
					</div>
				</div>
			</form>
			</div>
			<!-- FORM Panel -->
			
			<!-- Table Panel -->
			<div class="col-md-8">
				<div class="card">
					<div class="card-body">
						<table id="" class="table table-bordered table-hover mb-0">
							<thead style="background-color: rgb(111 202 203);">
								<tr>
									<th class="text-center"  data-sort="name" style="width:7%;">Cat. Id</th>
									<th class="text-center" data-sort="age">Image</th>
									<th class="text-center" data-sort="breed" style="width:58%;">Item Detail</th>
									<th class="text-center" data-sort="gender" style="width:18%;">Action</th>
								</tr>
							</thead>
							<tbody>
                            <?php
                                $sql = "SELECT * FROM `book`";
                                $result = mysqli_query($conn, $sql);
                                while($row = mysqli_fetch_assoc($result)){
                                    $bookId = $row['bookId'];
                                    $bookName = $row['bookName'];
									$writer = $row['writer'];
                                    $bookPrice = $row['bookPrice'];
                                    $bookDesc = $row['bookDesc'];
                                    $bookCategorieId = $row['bookCategorieId'];

                                    echo '<tr>
                                            <td class="text-center">' .$bookCategorieId. '</td>
                                            <td>
                                                <img src="/OnlineBookDelivery/img/book-'.$bookId. '.jpg" alt="image for this item" width="150px" height="250px">
                                            </td>
                                            <td>
                                                <p>Name : <b>' .$bookName. '</b></p>
												<p>writer : <b>' .$writer. '</b></p>
                                                <p>Description : <b class="truncate">' .$bookDesc. '</b></p>
                                                <p>Price : <b>' .$bookPrice. '</b></p>
                                            </td>
                                            <td class="text-center">
												<div class="row mx-auto" style="width:112px">
													<button class="btn btn-sm btn-primary" type="button" data-toggle="modal" data-target="#updateItem' .$bookId. '">Edit</button>
													<form action="partials/_menuManage.php" method="POST">
														<button name="removeItem" class="btn btn-sm btn-danger" style="margin-left:9px;">Delete</button>
														<input type="hidden" name="bookId" value="'.$bookId. '">
													</form>
												</div>
                                            </td>
                                        </tr>';
                                }
                            ?>
							</tbody>
						</table>
					
					</div>
				</div>
			</div>
			
			<!-- Table Panel -->
		</div>
	
  </div>	
  
</div>

<?php 
    $booksql = "SELECT * FROM `book`";
    $bookResult = mysqli_query($conn, $booksql);
    while($bookRow = mysqli_fetch_assoc($bookResult)){
        $bookId = $bookRow['bookId'];
        $bookName = $bookRow['bookName'];
		$writer = $bookRow['writer'];
        $bookPrice = $bookRow['bookPrice'];
        $bookCategorieId = $bookRow['bookCategorieId'];
        $bookDesc = $bookRow['bookDesc'];
?>

<!-- Modal -->
<div class="modal fade" id="updateItem<?php echo $bookId; ?>" tabindex="-1" role="dialog" aria-labelledby="updateItem<?php echo $bookId; ?>" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header" style="background-color: rgb(111 202 203);">
        <h5 class="modal-title" id="updateItem<?php echo $bookId; ?>">Item Id: <?php echo $bookId; ?></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
	  	<form action="partials/_menuManage.php" method="post" enctype="multipart/form-data">
		    <div class="text-left my-2 row" style="border-bottom: 2px solid #dee2e6;">
		   		<div class="form-group col-md-8">
					<b><label for="image">Image</label></b>
					<input type="file" name="itemimage" id="itemimage" accept=".jpg" class="form-control" required style="border:none;" onchange="document.getElementById('itemPhoto').src = window.URL.createObjectURL(this.files[0])">
					<small id="Info" class="form-text text-muted mx-3">Please .jpg file upload.</small>
					<input type="hidden" id="bookId" name="bookId" value="<?php echo $bookId; ?>">
					<button type="submit" class="btn btn-success my-1" name="updateItemPhoto">Update Img</button>
				</div>
				<div class="form-group col-md-4">
					<img src="/OnlineBookDelivery/img/book-<?php echo $bookId; ?>.jpg" id="itemPhoto" name="itemPhoto" alt="item image" width="100" height="100">
				</div>
			</div>
		</form>
		<form action="partials/_menuManage.php" method="post">
            <div class="text-left my-2">
                <b><label for="name">Name</label></b>
                <input class="form-control" id="name" name="name" value="<?php echo $bookName; ?>" type="text" required>
            </div>
			<div class="text-left my-2">
                <b><label for="name">Writer</label></b>
                <input class="form-control" id="writer" name="writer" value="<?php echo $writer; ?>" type="text" required>
            </div>
			<div class="text-left my-2 row">
				<div class="form-group col-md-6">
                	<b><label for="price">Price</label></b>
                	<input class="form-control" id="price" name="price" value="<?php echo $bookPrice; ?>" type="number" min="1" required>
				</div>
				<div class="form-group col-md-6">
					<b><label for="catId">Category Id</label></b>
                	<input class="form-control" id="catId" name="catId" value="<?php echo $bookCategorieId; ?>" type="number" min="1" required>
				</div>
            </div>
            <div class="text-left my-2">
                <b><label for="desc">Description</label></b>
                <textarea class="form-control" id="desc" name="desc" rows="2" required minlength="6"><?php echo $bookDesc; ?></textarea>
            </div>
            <input type="hidden" id="bookId" name="bookId" value="<?php echo $bookId; ?>">
            <button type="submit" class="btn btn-success" name="updateItem">Update</button>
        </form>
	

      </div>
    </div>
  </div>
</div>

<?php
	}
?>