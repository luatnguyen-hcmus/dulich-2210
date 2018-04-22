


                <div class="container" style="background-color: rgba(255,165,0,1) !important;">
                    <div class="row" >
                        <div class="col-md-2 col-sm-2 col-xs-12" style="float: left;">
                            <div class="logo-footer">
                                <img width="150px" src="<?php echo public_url('site/images/logo.png') ?>" alt="Swallow Viet Nam Tourist Joint Stock Company" />
                            </div>
                        </div>
                        

                        <div class="col-md-3 col-sm-3" style="height:150px" style="float: left;">
                            <h3 class="widgettitle">TOUR THE BEST</h3>
                            <ul class="menusecord" style="margin-top:-6px;">
                                <?php foreach($tour_mores as $row) : ?>
                                    <li style="border-bottom:none;"><a href="<?php echo base_url('tour/view/'.$row->id) ?>"><?=$row->name?></a></li>
                                <?php endforeach ?>
                            </ul>
                        </div>
                        <div class="col-md-3 col-sm-3" style="height:150px" style="float: left;">
                            <h3 class="widgettitle">MAPS</h3>
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.461801293332!2d106.6297202143993!3d10.775898992321908!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ea0d78113c3%3A0xc407098171fdb7ce!2zMTMgVHLhuqduIFbEg24gR2nDoXAsIEhp4buHcCBUw6JuLCBUw6JuIFBow7osIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1523790563888" width="300" height="230" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>

                        <div id="addresss" class="col-md-4 col-sm-4" style="float: left;"> 
                            <h3 class="widgettitle">ConTact Us</h3>
                              <div>
                                <p>Address: 13 Tran Van Giap Street, Hiep Ten block, Tan Phu District, HCM City</p>
                                <p>Telephone: <a href="tel: +84972 050 808/+84911 411 028"> +84972 050 808/+84911 411 028</a></p>
                                <p>Hotline: <a href="tel:+84972 050 808">+84972 050 808</a></p> 
                                <p>Email: <a href="mailto:info@swallowtravel.com">info@pion.vn</a></p>
                                <p>Another website: http://pion.vn/</p>

                                <div id="social">
                                    <a href="https://www.facebook.com/" target="_blank"><i class="fa fa-facebook"></i></a>
                                    <a href="https://plus.google.com/" target="_blank"><i class="fa fa-google-plus"></i></a>
                                    <a href="https://www.tripadvisor.com.vn/Attraction_Review-g293924-d8290098-Reviews-Swallow_Travel-Hanoi.html" target="_blank"><i class="fa fa-tripadvisor"></i></a>
                                    <a href="https://twitter.com/" target="_blank"><i class="fa fa-twitter"></i></a>
                                </div>
                            </div>
                            

                        </div>


                    </div>
                </div>
            
            <!-- <section class="sub-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <span style="color:#999; font-size: 13px;">&#169; 2018 Swallow Travel. power by <a href="http://pion.vn/" target="blank">webhotel.vn</a></span>
                        </div>
                    </div>
                </div>
            </section> -->
<style>
    .usfull-div {
        margin-bottom: 5px;
    }
    .accordion-card .accordion-panel .panel:before {
        left: 0px;
    }
</style>



<script type="text/javascript">
    var clock;

    $(document).ready(function () {

        $('#slider-video').flexslider({
            animation: "fade",
            slideshow: true,                //Boolean: Animate slider automatically
            slideshowSpeed: 3000,           //Integer: Set the speed of the slideshow cycling, in milliseconds
            animationSpeed: 5000,
            controlNav: false,
            itemWidth: 496,
            itemMargin: 1,
            nextText: "",
            prevText: "",
        });

        $('.left-time').each(function () {
            var clock;
            clock = $(this).FlipClock({
                clockFace: 'DailyCounter',
                autoStart: false,
                callbacks: {
                    stop: function () {
                        $('.message').html('The clock has stopped!');
                    }
                }
            });
            clock.setTime($(this).data("value"));
            clock.setCountdown(true);
            clock.start();
        });
    });

</script>
