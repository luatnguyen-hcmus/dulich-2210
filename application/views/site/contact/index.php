<?php 
		echo "<h1>".$contact_list->title."</h1>";
		echo "<br />";
		
	
?>
<div class="container">
	<div class="c-content-product-1 c-opt-1">
		
		<div class="row">
                                
			<div class="col-md-12">
				
                <div class="col-md-12">
                   
                    <div style="clear: both; margin: 0px; padding: 0px 0px 12px; background-repeat: no-repeat;">

						<p style="font-size: 12px; padding: 0px; margin: 0px; text-align: center;">&nbsp;</p>
						<p style="padding: 0px; margin: 0px; text-align: center; color: rgba(255,165,0,1) !important"; font-family: Arial, sans-serif; line-height: 24px;">
							<?=$contact_list->content ?>
						</p>
					</div>
					
					<div class="row">
					<div class="col-md-4">
						<h4 style="color: rgba(255,165,0,1) !important">CONTACT INFO</h4>
					<p><b style="text-align:center;color: #e49924;">Address:</b>
					13 Tran Van Giap Street, Hiep Ten block, Tan Phu District, HCM City</p>

					<p><b style="text-align:center;color: #e49924;">Phone</b>
					123456789</p>

					<p><b style="text-align:center;color: #e49924;">Email</b>
					info@pion.vn</p>

					</div>
					<div class="col-md-4">
						<h4 style="color: rgba(255,165,0,1) !important">MAPS</h4>
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.461801293332!2d106.6297202143993!3d10.775898992321908!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ea0d78113c3%3A0xc407098171fdb7ce!2zMTMgVHLhuqduIFbEg24gR2nDoXAsIEhp4buHcCBUw6JuLCBUw6JuIFBow7osIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1523790563888" width="300" height="230" frameborder="0" style="border:0" allowfullscreen></iframe>
					</div>
					<div class="col-md-4">
						<h4 style="color: rgba(255,165,0,1) !important;">FORM INPUT GET INFO</h4>
						<form >
							<br/>
							<br/>
							<br/>
							<div class="form-group">
								<label class="col-sm-3 control-label">Email<span class="required" aria-required="true">*</span></label>
                                    <div class="col-sm-8">
                                        <input type="text" value="" placeholder="input Email" name="Email" id="Email">
                                    </div>
                                    <div style="color: red;"  class="error"></div>
                                </div>
						</form>
					</div>
					</div>
                </div>  
          	</div>
		</div>
	</div>
</div>