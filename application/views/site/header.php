<style type="text/css">
    .navbar-default .navbar-nav > li > a:hover, .navbar-default .navbar-nav > .active > a, .navbar-default .navbar-nav > .active > a:hover, .navbar-default .navbar-nav > .active > a:focus{
            color: #ea4848 !important;
            background:none !important;
    }
        


</style>
<div class="container collapse-md" id="navbar-main-container" style="background-color:#ffab1d !important;position: relative; margin-top:10px;">
    <div  style="margin-top:10px;width:100%;background:#fff; position: absolute;left:0;top:-25px;padding:5px;">  
        <ul>
            <li style="float: right; list-style: none; " >
                <span>
                    
                    <a style="color: #f8920a;font-size:18px;margin-right:10px;" href="tel:01202567844">
                        <i class="fa fa-phone"></i>123456789</a>
                </span>
                <span >
                    <a style="color: #f8920a; font-size:18px;" href="">
                        <i class="fa fa-envelope"></i> info@pion.vn</a>
                </span>  
            </li> 
        </ul>
    </div>
    <div style="clear: both;"></div>
    <div class="navbar-header">
        <a href="<?php echo base_url() ?>" class="navbar-brand" style="position: absolute; left:0;top:-16px;">
            <img style="min-height: 90px;width: 100px !important;" alt="GoExplore!" src="<?php echo public_url('site/images/logo.png') ?>">
            <span class="sr-only"> Viet Nam Tourist</span>
        </a>
        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <nav class="navbar-collapse collapse pull-right" id="navbar-main">
        
    <!-- Collect the nav links, forms, and other content for toggling -->
        <!-- Collect the nav links, forms, and other content for toggling -->
        <ul class="nav navbar-nav" style="position: relative;margin-top:15px;height: 78px">
            <?php foreach($menu_list as $row) : ?>
                <li style="font-size:16px;top:5px;font-family: pa;">
                    <a  style="text-shadow: 2px 2px 1px #ccc;"  href="<?php echo base_url($row->url)?>"><?=$row->title?> <span class="<?php  if(!empty($row->subs)) echo 'caret'; else echo ''; ?>"></span></a>
                    <?php  if(count($row->subs) > 0) : ?>
                        <ul class="dropdown-menu">
                            <?php foreach($row->subs as $rows) : ?>
                                <?php 
                                    $name = convert_vi_to_en($rows->name); 
                                    $name = strtolower($name);
                                ?>
                                <li>
                                    <a href="<?php echo base_url($name.'-c'.$rows->id) ?>"><?=$rows->name?> 
                                        <!-- <span class="caret"></span> -->
                                        <span class="<?php  if(!empty($rows->subss)) echo 'caret'; else echo '' ?>"></span>
                                    </a>
                                    <?php  if(!empty($rows->subss)) : ?>
                                        <ul class="dropdown-menu">
                                            <?php foreach($rows->subss as $rowss) : ?>
                                                <?php 
                                                    $name = convert_vi_to_en($rowss->name); 
                                                    $name = strtolower($name);
                                                ?>
                                                <li><a href="<?php echo base_url($name.'-c'.$rowss->id) ?>" title="<?=$rowss->name?>"><?=$rowss->name?></a></li>
                                            <?php endforeach ?>
                                        </ul>
                                    <?php endif?>
                                </li>
                            <?php endforeach ?>
                            
                        </ul>
                    <?php endif ?>
                </li>

            <?php endforeach ?>
              
            
            <!-- Email: <a href=""></a> -->
        </ul>

    </nav>

</div><!-- /.container-fluid -->

 