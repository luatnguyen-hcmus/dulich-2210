<!DOCTYPE html>
<html lang="en">
    <head>
        <?php $this->load->view('site/head.php');?>
    </head>
    <!-- <body style="background-image:url('<?php echo public_url('site/images/Background_travel.jpg') ?>'); background-repeat: repeat;"> -->
    <body style="background:white; background-repeat: repeat;">
        
        <div class="navbar-wrapper">
            <header class="navbar-default navbar-fixed-top" id="MainMenu" >
                <?php $this->load->view('site/header.php');?>
            </header>

        </div><!-- /.navbar-wrapper -->
        
        
        <section class="regular" style=" padding-top: 78px;">
            <div class="container">
                <?php if(isset($message)) : ?>
                    <p style="color:red;"><?php echo $message; ?></p>
                <?php endif?>
                <?php $this->load->view($temp, $this->data);?>
            </div>
        </section>


<style>

    body:not([class*='no-hero-image']) #MainMenu.navbar{
            background: rgba(255,165,0,1);
    }

</style>

</div>
<div id="footers">
    <?php $this->load->view('site/footer.php');?>
</div>

<script type="text/javascript">
var google_conversion_id = 854290869;
var google_custom_params = window.google_tag_params;
var google_remarketing_only = true;
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/854290869/?guid=ON&amp;script=0"/>
</div>
</noscript>


    </body>
</html>
<script type="text/javascript"> $().ready(function () { if ($('#vietiso_sitebadgecontainer').length > 0) { $('#vietiso_sitebadgecontainer').hover(function () { $('#vietiso_sitebadgecontainer').stop().animate({ left: '0px' }, 500); }, function () { $('#vietiso_sitebadgecontainer').stop().animate({ left: '-137px' }, 500); }); setMinHeight('group_col_2'); } }); function setMinHeight(class_name) { var min_height = 0; $('.' + class_name).each(function () { if ($(this).height() > min_height) min_height = $(this).height(); }); if (min_height < 150) { min_height = 150; } $('.' + class_name).eq(1).css('height', min_height); } </script>
