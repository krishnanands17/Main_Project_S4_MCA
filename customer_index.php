 <?php include("customer_header.php"); 
 
  
 if($_REQUEST['st']=="cart")
 {
	
	 echo "<script>alert('Sucessfully Add to Cart')</script>";
 }
  if($_REQUEST['st']=="error")
 {
	 echo "<script>alert('Error In Add to Cart!!!')</script>";
 }
 if($_REQUEST['st']=="order")
 {
	 echo "<script>alert('ORDER PLACED !!!!')</script>";
 }
  if($_REQUEST['st']=="oerror")
 {
	 echo "<script>alert('Error In Order!!!')</script>";
 }
 
 ?>
         
         
<!-- Slideshow 4 -->
         <div class="slider text-center">
            <div class="callbacks_container">
               <ul class="rslides" id="slider4">
                  <li>
                     <div class="slider-img one-img">
                        <div class="container">
                           <div class="slider-info ">
                              <h5>Pick The Best Jewellery For<br>Any Occasion</h5>
                              
                              <div class="outs_more-buttn">
                                 <a href="#">Read More</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </li>
                  <li>
                     <div class="slider-img two-img">
                        <div class="container">
                           <div class="slider-info ">
                              <h5>Sort Jewellery According<br>To Your Needs</h5>
                            
                              <div class="outs_more-buttn">
                                 <a href="#">Read More</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </li>
                  <li>
                     <div class="slider-img three-img">
                        <div class="container">
                           <div class="slider-info">
                              <h5>Best Jewellery<br>Designs</h5>
                              
                              <div class="outs_more-buttn">
                                 <a href="#">Read More</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </li>
               </ul>
            </div>
            <!-- This is here just to demonstrate the callbacks -->
            <!-- <ul class="events">
               <li>Example 4 callback events</li>
               </ul>-->
             
             
             
             <div class="clearfix"></div>
         </div>
      </div>
    
      
      
      
      
<?php include("main_footer.php"); ?>
      
      
      
      
      
    
      
      
      
      
      
     