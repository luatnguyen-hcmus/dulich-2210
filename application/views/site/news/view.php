

<?php 
  $this->load->view('site/slide.php', $this->data);
?>



        
    <!--- css tabtour --->
    <link href="/Plugins/TabTour/Css/zozo.tabs.min.css" rel="stylesheet" />
    <link href="/Plugins/TabTour/Css/zozo.examples.min.css" rel="stylesheet" />
   
    <!-- Css prettyphoto-master -->
    <link href="/Plugins/prettyphoto-master/css/prettyPhoto.css" rel="stylesheet" />
    
    <!-- jquery tabtour -->
    <script src="/Plugins/TabTour/Js/zozo.tabs.min.js"></script>
    
     <!-- Jquery prettyphoto-master -->
<script src="/Plugins/prettyphoto-master/js/jquery.prettyPhoto.js"></script>

<div class="sub-nav">
    <div class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <h1 class="h1-title-d">
                    Details <?=$news->title?>
                </h1>
            </div>
            <!-- Sub Nav Links -->
            <nav class="navbar-collapse collapse" id="navbar-sub">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=http://swallowtravel.com/hanoi-day-tours/71/hanoi-city-tour"><i class="fa fa-facebook"></i><span class="hidden-md hidden-lg">Facebook</span></a>
                    </li>
                    <li>
                        <a target="_blank" href="http://twitter.com/share?url=http://swallowtravel.com/hanoi-day-tours/71/hanoi-city-tour"><i class="fa fa-twitter"></i><span class="hidden-md hidden-lg">Twitter</span></a>
                    </li>
                    <li>
                        <a target="_blank" href="https://plus.google.com/share?url=http://swallowtravel.com/hanoi-day-tours/71/hanoi-city-tour
                           
                           "><i class="fa fa-google-plus"></i><span class="hidden-md hidden-lg">Google +</span></a>
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
            <div class="col-lg-9 content-article">
                <div class="item-content">
                      

                        <b class="time left"><?=$news->created?></b>
                        <h1 class="title_news_detail mb10">
                          <?=$news->title?>
                        </h1>
                        
                        <h2 class="description"><?=$news->intro?></h2>
                        <?=$news->content?>
                      
                      <div class="clearfix"></div>
                  </div>
            </div>
            <div class="col-lg-3">
                    <h2 class="title-h3">You May Also Concern!</h2>

                      <?php foreach($tour_mores as $row) : ?>
                          <div class="tour-relates">
                            <a href="<?php echo base_url('product/view/'.$row->id)?>" title="<?=$row->name?>">
                                <img src="<?php echo base_url('upload/product/'.$row->image_link)?>" alt="<?=$row->name?>" class="img-border"/>
                                <h3><?=$row->name?></h3>
                              </a>
                          </div>
                      <?php  endforeach?>
                        
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</section>


<script>
    $(document).ready(function() {
        $(".ng-scope").dialog(
        {
            autoOpen: false,
            modal: true,
            width: 800,
            dialogClass: "show-option",
            title: 'DEAL OPTIONS : Hanoi City Tour'
        });
        $("#choise-hotel").click(function() {
            $(".ng-scope").dialog("open");
        });
    });
</script>

<style>
    .show-option {
        border: 1px solid #E8E8E8;
        border-radius: 4px!important;
        background: #fff;
        color: #333333;
        padding: 0px;
    }
    .ng-scope {
        padding: 10px 0px!important;
    }
    .deal-options--link {
        width: 769px;
        margin: 0px auto;
    }
    .show-option .ui-widget-header {
        border: none;
        background: none;
        color: #333;
        font-weight: bold;
    }
    .show-option .ui-dialog-titlebar-close {
        -webkit-box-shadow: none;
        box-shadow: none;
        background: url("/Plugins/jquery-ui/images/ui-icons_222222_256x240.png");
        background-position: -95px -128px;
    }
    .desktop--deal-options {
        width: 100%;
        height: auto;
        max-width: 800px;
        max-height: 550px;
        padding: 0;
        overflow: hidden;
    }
    .deal-options--option {
        position: relative;
        display: block;
        float: left;
        width: 100%;
        height: auto;
        border-bottom: 1px solid #e0e0e0;
        overflow: hidden;
        transition: all .2s ease-in-out;
        padding: 6px 5px;
    }
    .deal-options--title {
        margin: 16px auto 8px;
        font-size: 15px;
        font-weight: 700;
        color: #333;
        width: 45%;
        float: left;
    }
    .deal-options--title a {
        font-weight: normal;
        font-size: 14px;
        color: #2faef8;
    }
    .deal-options--title a:hover {
        text-decoration: none;
    } 
    .deal-options--details {
        width: 30%;
        clear: none;
        padding: 25px 20px;
        float: left;
        font-size: 14px;
    }
    .deal-options--details li {
        width: 50%;
        margin: 0;
        text-align: center;
        float: left;
    }
    .deal-options--cost {
        margin-top: 8px;
        width: 180px;
        right: 18px;
        display: block;
        float: right;
        text-align: center;
        height: 50px;
        color: #fff;
        border-bottom: 4px solid #28a528;
        font-size: 12px;
        text-transform: uppercase;
        background: #28a528;
        padding-top: 7px;
        transition: all .12s ease-in-out;
    }
    .cost--price-string {
        width: 100%;
        float: left;
        font-size: 18px;
        color: #fff;
        line-height: 20px;
    }
    .deal-options--cost:hover {
        border-bottom: 4px solid #239023;
    }
    ul.deal-options--list li:last-child {
        border: none;
    }
    .ui-widget-overlay {
        background: rgba(0,0,0,.5);
    }
</style>
