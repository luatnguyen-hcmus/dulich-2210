<div style="margin-top: 26px;"></div>
<div class="sub-nav"  style="margin:0 auto; text-align: center;" >
    <div class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header col-md-4">
                <h1 class="h1-title-d">
                    Results for keywords " <b style="color: red;"> <?= $key ?></b> "
                </h1>
            </div>

            <div class="navbar-header col-md-5" style="margin-top: -20px" >
                <form  action="<?php echo base_url('tour/search') ?>" method="GET" class="navbar-form navbar-left" >
                    <div class="input-group">
                        <input type="text" id="text-search" name="key-search" value="<?php echo isset($key) ? $key : "" ?>" autocomplete="off" role="textbox" aria-autocomplete="list" aria-haspopup="true" class="form-control" placeholder="Search for Place Destination ..." style="color: #ffab1d; width: 100%; height: 50px; border: none;">
                        <span class="input-group-btn">
                             <button class="btn btn-primary btn-xs" type="submit" style="width: 100%; height: 51px; border: none; background:#ffffff; "><b style="color: #ffab1d;">Go!</b></button> 
                        </span> 
                    </div>
                </form>
            </div>

            <!-- Sub Nav Links -->
            <nav class="navbar-collapse collapse col-md-3 pull-right" id="navbar-sub">
                <ul class="nav navbar-nav navbar-right sm" data-smartmenus-id="15236989626682417">
                    <li>
                        <a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=http://swallowtravel.com/"><i class="fa fa-facebook"></i><span class="hidden-md hidden-lg">Facebook</span></a>
                    </li>
                    <li>
                        <a target="_blank" href="http://twitter.com/share?url=http://swallowtravel.com/"><i class="fa fa-twitter"></i><span class="hidden-md hidden-lg">Twitter</span></a>
                    </li>
                    <li>
                        <a target="_blank" href="https://plus.google.com/share?url=http://swallowtravel.com/"><i class="fa fa-google-plus"></i><span class="hidden-md hidden-lg">Google +</span></a>
                    </li>
                    <li><a target="_blank" href="mailto:info@swallowtravel.com"><i class="fa fa-envelope-o"></i> <span class="hidden-md hidden-lg">Email</span></a></li>
                </ul>
            </nav>

        </div>
    </div>
</div>


<section class="regular" style="padding-top: 4rem">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">

                <?php foreach($list as $row) : ?>
                    <div class="item-content">
                        <div class="col-md-3">
                            <a href="<?php echo base_url('tour/view/'.$row->id)?>" title="<?=$row->name?>">
                                <img src="<?php echo base_url('/upload/tour/'.$row->image_link)?>" alt="<?=$row->name?>" title="<?=$row->name?>" style="width: 100%;" class="img-border">
                            </a>
                        </div>
                        <div class="col-md-7">
                            <h3 class="title-content">
                                <a href="<?php echo base_url('tour/view/'.$row->id)?>" title="<?=$row->name?>">
                                      <?=$row->name?>
                                </a>
                            </h3>
                            <div style="text-align: justify">
                                <?=$row->site_title?>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <p class="from"><i>from</i></p>
                            <p class="div_price">
                                <p class="div_price">
                                  <?php if($row->discount > 0) :?>
                                      <?php $price_new = $row->price - $row->discount; ?>
                                      <strong style=" font-size: 18px; text-decoration: line-through; color: red; margin-right: 10px;">
                                          <?php echo number_format($row->price) ?> đ 
                                      </strong>
                                      <span style=" font-weight: bold; color:#0261A9"> <?php echo number_format($price_new) ?>đ</span>
                                  <?php else : ?>
                                        <span style="font-weight: bold; color:#0261A9"><?php echo number_format($row->price) ?>đ</span>
                                  <?php endif ?>
                                </p>
                            </p>
                            <div class="div-book btn btn-primary"><a href="<?php echo base_url('tour/view/'.$row->id)?>" title="<?=$row->name?>">See more</a></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                <?php endforeach?>
                    
                    
            </div>
            <div class="col-lg-3">
                <h2 class="title-h3">More Orther Tour</h2>
                <?php foreach($tour_mores as $row) : ?>
                    <p>
                        <i class="fa fa-chevron-right"></i>
                        <a href="<?php echo base_url('tour/view/'.$row->id)?>" title="<?=$row->name?>"><?=$row->name?></a>
                    </p>
              <?php endforeach ?>
                <div id="sidebar">
    


<style>
    h4.sub-menu-left {
        background: none;
        font-size: 13px;
    }

        h4.sub-menu-left span {
            margin-right: 5px;
            color: #003580;
        }
</style>
    

        <div class="wrap-item-sidebar">
            <a alt="Early bird SALES"><img src="/files/files/Promotion/early%20bird%20promotion.jpg" width="279px"></a>
        </div>
       
    <div class="clearfix"></div>
</div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</section>