<style type="text/css">
    #navbar-main ul li{
      margin-top:0 !important;
    }

</style>



<?php $this->load->view('site/slide.php');?>
<div class="row">
  <div class="col-md-12">
        <div class="sub-nav">
            <div class="navbar navbar-inverse">
                <div class="container">
                    <div class="navbar-header">
                        <h1 class="h1-title-d">
                           List News
                        </h1>
                    </div>
                    <!-- Sub Nav Links -->
                    <nav class="navbar-collapse collapse" id="navbar-sub">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=http://swallowtravel.com/hanoi-day-tours"><i class="fa fa-facebook"></i><span class="hidden-md hidden-lg">Facebook</span></a>
                            </li>
                            <li>
                                <a target="_blank" href="http://twitter.com/share?url=http://swallowtravel.com/hanoi-day-tours"><i class="fa fa-twitter"></i><span class="hidden-md hidden-lg">Twitter</span></a>
                            </li>
                            <li>
                                <a target="_blank" href="https://plus.google.com/share?url=http://swallowtravel.com/hanoi-day-tours"><i class="fa fa-google-plus"></i><span class="hidden-md hidden-lg">Google +</span></a>
                            </li>
                            <li><a target="_blank" href="mailto:info@swallowtravel.com"><i class="fa fa-envelope-o"></i> <span class="hidden-md hidden-lg">Email</span></a></li>
                        </ul>
                    </nav>

                </div>
            </div>
        </div>
      </div>
</div>
        <section class="regular" style="padding-top: 4rem">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                            <?php foreach($news_list as $row) : ?>
                                <div class="item-content">
                                    <div class="col-md-3">
                                        <a href="<?php echo base_url('news/view/'.$row->id)?>" title="<?=$row->title?>">
                                            <img src="<?php echo base_url('/upload/news/'.$row->image_link)?>" alt="<?=$row->title?>" title="<?=$row->title?>"" style="width: 100%;" class="img-border" />
                                        </a>
                                    </div>
                                    <div class="col-md-7">
                                        <h3 class="title-content"><a href="<?php echo base_url('news/view/'.$row->id)?>" title="<?=$row->title?>">
                            <?=$row->title?>       </a></h3>
                                        <div style="text-align: justify">
                                            <?php 
                                                  if(strlen($row->intro) < 100){
                                                      echo $row->intro;
                                                  }else{
                                                    echo mb_substr($row->intro,0,100,'utf8').'...';
                                                  }
                                              ?>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            <?php endforeach?>

                    </div>



                    <div class="col-lg-3">
                        <div id="sidebar">
            

            <div class="wrap-category-left">
                <h2 class="title-h3">More Orther Tour</h2>
                <?php foreach($tour_mores as $row) : ?>
                    <h3>
                        <i class="fa fa-chevron-right"></i>
                        <a href="<?php echo base_url('tour/view/'.$row->id)?>" title="<?=$row->name?>"><?=$row->name?></a>
                    </h3>
              <?php endforeach ?>
            </div>

        <style>
            h4.sub-menu-left {
                background: none;
                font-size: 13px;
            }

            h4.sub-menu-left span {
                margin-right: 5px;
                color: #003580;
            }

            .pagination {
                  display: block;
                  padding: 5px 10px;
                  float:right;
              }
              .pagination a {
                  background: #f3f3f3;
                  border: 1px solid #c4c4c4;
                  border-radius: 2px;
                  box-shadow: 0 1px 0 #eaeaea, 0 1px 0 #ffffff inset;
                  color: #717171;
                  display: inline-block;
                  float: left;
                  font-weight: 700;
                  line-height: 25px;
                  margin-right: 4px;
                  min-height: 25px;
                  padding: 0 10px;
                  text-decoration: none;
              }
              .pagination strong{
                  background: #f3f3f3;
                  border: 1px solid #c4c4c4;
                  border-radius: 2px;
                  box-shadow: 0 1px 0 #eaeaea, 0 1px 0 #ffffff inset;
                  color: maroon;
                  display: inline-block;
                  float: left;
                  font-weight: 700;
                  line-height: 25px;
                  margin-right: 4px;
                  min-height: 25px;
                  padding: 0 10px;
                  text-decoration: none;
              }
        </style>
            

                <div class="wrap-item-sidebar">
                    <a alt="Early bird SALES"><img src="/files/files/Promotion/early%20bird%20promotion.jpg" width="279px"/></a>
                </div>
               
            <div class="clearfix"></div>
        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </section>