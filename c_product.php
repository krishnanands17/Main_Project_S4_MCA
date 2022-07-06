<?php include("customer_header.php");?>
<!-- banner -->
      <div class="inner_page-banner one-img">
      </div>
      <!--//banner -->
      <!-- short -->
      <div class="using-border py-3">
         <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
               <li>
                  <a href="customer_index.php">Home</a>
                  <span>/ /</span>
               </li>
               <li>Products</li>
            </ul>
         </div>
      </div>
      <!-- //short-->
      <!--show Now-->  
      <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container-fluid py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3"> Shop</h3>
            <div class="row">
               <div class="side-bar col-lg-12">
                  
                     <h3 class="agileits-sear-head">Search Products ...</h3>
                     <form action="product_search.php" method="post">
                        <input type="search" placeholder="Product name..." name="product_name" class="form-control" required>
                     </form>
                  
               </div>
               
               
               
               
               
               
               
   
                           
                           
   
               
               
               
               <div class="left-ads-display col-lg-12">
                  <div class="row">
                  
    <?php 
	error_reporting(0);
	$category_name=$_REQUEST['category_name'];
	include("../db/connection.php"); 
   $query2="SELECT * FROM tbl_item WHERE category_name='$category_name'";
   $result2 = mysqli_query($con,$query2);
   while($row2=mysqli_fetch_array($result2))
   {
   ?>
                  
                  
                     <div class="col-lg-3 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="../admin/item/<?php echo $row2['item_pic']; ?>" class="img-thumbnail img-fluid" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="c_single.php?id=<?php echo $row2['id']; ?>" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="c_single.php?id=<?php echo $row2['id']; ?>"><?php echo $row2['item_name']; ?></a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money "><?php echo $row2['item_rate']; ?></span>
                                          </div>
                                       </div>
                                      
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="item_id" value="<?php echo $row2['id']; ?>">
                                          <input type="hidden" name="item_name" value="<?php echo $row2['item_name']; ?>">
                                          <input type="hidden" name="amount" value="<?php echo $row2['item_rate']; ?>>
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                        
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                       
                     </div>
                     
                     
              
                      <?php } ?> 
                     
                     
                     
                     
                     
                     
                             
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- //show Now-->
      <!--subscribe-address-->
     <?php include("main_footer.php");?>