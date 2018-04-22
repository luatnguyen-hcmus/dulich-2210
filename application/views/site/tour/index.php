<div class="box-center"><!-- The box-center product-->
      <div class="tittle-box-center">
            <h2> Danh Sách sản phẩm </h2>
      </div>
          <div class="box-content-center product"><!-- The box-content-center -->

            <?php foreach($list as $row) : ?>
              <div class="product_item">
                  <h3>
                       <a href="<?php echo base_url('tour/view'.$row->id)?>" title="<?=$row->name?>">
                            <?=$row->name?>                     
                        </a>
                  </h3>
                 <div class="product_img">
                       <a href="<?php echo base_url('tour/view'.$row->id)?>" title="<?=$row->name?>">
                          <img src="<?php echo base_url('/upload/tour/'.$row->image_link)?>" alt="<?=$row->name?>" title="<?=$row->name?>">
                      </a>
                 </div>

                 <p class="price">
                    <?php if($row->discount > 0) :?>
                      <?php $price_new = $row->price - $row->discount; ?>
                      <?php echo number_format($price_new) ?>đ <span class="price_old"><?php echo number_format($row->price) ?> đ</span>
                    <?php else : ?>
                      <?php echo number_format($row->price) ?>đ
                    <?php endif ?>
                  </p>
                  <center>
                    <div class='raty' style='margin:10px 0px' id='9' data-score='4'></div>
                  </center>
                 <div class="action">
                      <p style="float:left;margin-left:10px">Lượt xem: <b><?=$row->view?></b></p>
                      <a class="button" href="<?php echo site_url('cart/add/'.$row->id) ?>" title="Mua ngay">Mua ngay</a>
                      <div class="clear"></div> 
                 </div>
             </div>
              <?php endforeach?>
                <div class="clear"></div>
          </div><!-- End box-content-center -->
</div>

<div class="box-center"><!-- The box-center product-->
      
        <div class='pagination'>
      <?php echo $this->pagination->create_links() ?>
    </div> 
</div>

