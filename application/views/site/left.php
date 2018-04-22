<style type="text/css">
    
    ::-webkit-input-placeholder {
       color: #ffab1d !important;  
    }
     
    :-moz-placeholder { /* Firefox 18- */
       color: #ffab1d !important;  
    }
     
    ::-moz-placeholder {  /* Firefox 19+ */
       color: #ffab1d !important;  
    }
     
    :-ms-input-placeholder {  
       color: #ffab1d !important;  
    }

</style>
<div class="container">
    <div class="cards overlap">
        
        <div class="row" style="margin:0 auto;text-align: center; width: 100%; margin-bottom:40px;" >
            <div class="col-md-10 col-sm-6 col-xs-12" style="margin:0 auto;text-align: center; width: 100%;">
                <form action="<?php echo base_url('tour/search') ?>" method="GET" class="navbar-form navbar-left" style="margin:0 auto;text-align: center; width: 100%;">
                        <div class="input-group" style="width: 60%;">
                            <input type="text" id="text-search" name="key-search" value="<?php echo isset($key) ? $key : "" ?>" autocomplete="off" role="textbox" aria-autocomplete="list" aria-haspopup="true" class="form-control" placeholder="Search for Place Destination ..." style="color: #ffab1d; width: 100%; height: 50px; border: none;">
                            <span class="input-group-btn">
                                 <button class="btn btn-primary btn-xs" type="submit" style="width: 100%; height: 50px; border: none; background-color:#ffab1d; ">Go!</button> 
                            </span> 
                        </div>
                    </form>
            </div>
        </div>
        
        <!-- <div class="row">
            <?php foreach($tour_newest as $row) : ?>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <article class="card">
                        <div class="wrap-time-line">
                            <div class="time-line">
                                <div class="left-time clock" data-value="539217"></div>
                            </div>
                        </div>
                        <a href="<?php echo base_url('tour/view/'.$row->id)?>" title="<?=$row->name?>" class="featured-image" >
                            <img src="<?php echo base_url('/upload/product/'.$row->image_link)?>" alt="<?=$row->name?>" title="<?=$row->name?>"/>

                            <div class="featured-img-inner"></div>
                        </a>
                        <div class="card-details">
                            <h4 class="card-title"><a href="<?php echo base_url('tour/view/'.$row->id)?>" title="<?=$row->name?>"><?=$row->name?></a></h4>
                            <div class="meta-details clearfix">
                                <ul class="hierarchy">
                                    <li style="margin-top: 5px;">
                                        <?php if($row->discount > 0) :?>
                                            <?php $price_new = $row->price - $row->discount; ?>
                                            <strong style="text-decoration: line-through; color: red; margin-right: 10px;">
                                                <?php echo number_format($row->price) ?> đ 
                                            </strong>
                                            <span style="font-size: 1.4em; color:#0261A9"> <?php echo number_format($price_new) ?>đ</span>
                                        <?php else : ?>
                                              <span style="font-size: 1.4em; color:#0261A9"><?php echo number_format($row->price) ?>đ</span>
                                        <?php endif ?>
                                        
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </article>
                </div>
            <?php endforeach ?>
        </div> -->
    </div>
</div>