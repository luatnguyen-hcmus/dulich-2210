<?php 
	$this->load->view('admin/tour/head', $this->data);
?>
<div class="line"></div>

<div class="wrapper">
    
	   	<!-- Form -->
		<form class="form" id="form" action="<?php echo admin_url('tour/add') ?>" method="post" enctype="multipart/form-data">
			<fieldset>
				<div class="widget">
				    <div class="title">
						<img src="<?php echo public_url('admin')?>/images/icons/dark/add.png" class="titleIcon">
						<h6>Add Tour</h6>
					</div>
					
				    <ul class="tabs">
		                <li><a href="#tab1">General Info</a></li>
		                <li><a href="#tab2">SEO Onpage</a></li>
		                <li><a href="#tab3">Content</a></li>
		                
					</ul>
					
					<div class="tab_container">
					     <div id="tab1" class="tab_content pd0">
					         <div class="formRow">
								<label class="formLeft" for="param_name">Name:<span class="req">*</span></label>
								<div class="formRight">
									<span class="oneTwo"><input value="<?php echo set_value('name') ?>" name="name" id="param_name" _autocheck="true" type="text"></span>
									<span name="name_autocheck" class="autocheck"></span>
									<div name="name_error" class="clear error"><?php echo form_error('name')?></div>
								</div>
								<div class="clear"></div>
							</div>

							<div class="formRow">
								<label class="formLeft">Image:<span class="req">*</span></label>
								<div class="formRight">
									<div class="left"><input type="file" id="image" name="image"></div>
									<div name="image_error" class="clear error"><?php echo form_error('image')?></div>
								</div>
								<div class="clear"></div>
							</div>

							<div class="formRow">
								<label class="formLeft">Image List:</label>
								<div class="formRight">
									<div class="left"><input type="file" id="image_list" name="image_list[]" multiple=""></div>
									<div name="image_list_error" class="clear error"></div>
								</div>
								<div class="clear"></div>
							</div>

							<!-- Price -->
							<div class="formRow">
								<label class="formLeft" for="param_price">
									Price :
									<span class="req">*</span>
								</label>
								<div class="formRight">
									<span class="oneTwo">
										<input value="<?php echo set_value('price') ?>" name="price" style="width:100px" id="param_price" class="format_number" _autocheck="true" type="text">
										<img class="tipS" title="Giá bán sử dụng để giao dịch" style="margin-bottom:-8px" src="<?php echo public_url('admin')?>/crown/images/icons/notifications/information.png">
									</span>
									<span name="price_autocheck" class="autocheck"></span>
									<div name="price_error" class="clear error"><?php echo form_error('price')?></div>
								</div>
								<div class="clear"></div>
							</div>

							<!-- Price -->
							<div class="formRow">
								<label class="formLeft" for="param_discount">
									Sale off (USD) 
									<span></span>:
								</label>
								<div class="formRight">
									<span>
										<input value="<?php echo set_value('discount') ?>" name="discount" style="width:100px" id="param_discount" class="format_number" type="text">
										<img class="tipS" title="Sale off" style="margin-bottom:-8px" src="<?php echo public_url('admin')?>/crown/images/icons/notifications/information.png">
									</span>
									<span name="discount_autocheck" class="autocheck"></span>
									<div name="discount_error" class="clear error"></div>
								</div>
								<div class="clear"></div>
							</div>


							<div class="formRow">
								<label class="formLeft" for="param_cat">Category:<span class="req">*</span></label>
								<div class="formRight">
									<select name="catalog" class="left">
										<option value=""></option>
										<!-- kiem tra danh muc co danh muc con hay khong -->
										<?php foreach($catalogs as $row):?>
											<?php if(count($row->subs) > 1) :?>
											    <optgroup label="<?=$row->name?>">	
											    	<?php foreach($row->subs as $sub) :?>				                    
											    		<option value="<?=$sub->id?>">
											    			<?=$sub->name?>
											    		</option>
											    	<?php endforeach?>
											    </optgroup>

											 <?php else : ?>
											 	<option value="<?php echo $row->id ?>">
											 		<?php echo $row->name ?>
											 	</option>
											<?php endif;?>
									    <?php endforeach;?>
									</select>
									<span name="cat_autocheck" class="autocheck"></span>
									<div name="cat_error" class="clear error"><?php echo form_error('catalog') ?></div>
								</div>
								<div class="clear"></div>
							</div>


							

							<div class="formRow">
								<label class="formLeft" for="param_sale">Itinerary:</label>
								<div class="formRight">
									<span class="oneTwo"><textarea name="itinerary" id="param_sale" rows="10" cols=""><?php echo set_value('itinerary') ?></textarea></span>
									<span name="sale_autocheck" class="autocheck"></span>
									<div name="sale_error" class="clear error"></div>
								</div>
								<div class="clear">
									
								</div>
							</div>					         
							<div class="formRow hide"></div>
						 	</div>
						 
						 <div id="tab2" class="tab_content pd0">
						     			
						<div class="formRow">
							<label class="formLeft" for="param_site_title">Site_Title:</label>
							<div class="formRight">
								<span class="oneTwo"><textarea name="site_title" id="param_site_title" _autocheck="true" rows="4" cols=""><?php echo set_value('site_title') ?></textarea></span>
								<span name="site_title_autocheck" class="autocheck"></span>
								<div name="site_title_error" class="clear error"></div>
							</div>
							<div class="clear"></div>
						</div>

						<div class="formRow">
							<label class="formLeft" for="param_meta_desc">Meta description:</label>
							<div class="formRight">
								<span class="oneTwo"><textarea name="meta_desc" id="param_meta_desc" _autocheck="true" rows="4" cols=""><?php echo set_value('meta_desc') ?></textarea></span>
								<span name="meta_desc_autocheck" class="autocheck"></span>
								<div name="meta_desc_error" class="clear error"></div>
							</div>
							<div class="clear"></div>
						</div>

						<div class="formRow">
							<label class="formLeft" for="param_meta_key">Meta keywords:</label>
							<div class="formRight">
								<span class="oneTwo"><textarea name="meta_key" id="param_meta_key" _autocheck="true" rows="4" cols=""><?php echo set_value('meta_key') ?></textarea></span>
								<span name="meta_key_autocheck" class="autocheck"></span>
								<div name="meta_key_error" class="clear error"></div>
							</div>
							<div class="clear"></div>
						</div>
					  <div class="formRow hide"></div>
					 </div>
					 
					 <div id="tab3" class="tab_content pd0">
					      <div class="formRow">
							<label class="formLeft">Content:</label>
							<div class="formRight">
								<textarea name="content" id="param_content" class="editor"><?php echo set_value('content') ?></textarea>
								<div name="content_error" class="clear error"></div>
							</div>
							<div class="clear"></div>
						</div>
						      <div class="formRow hide"></div>
						 	</div>
						
						
	        			</div><!-- End tab_container-->
	        		
	        		<div class="formSubmit">
	           			<input type="submit" value="Add" class="redB">
	           			
	           		</div>
	        		<div class="clear"></div>
				</div>
			</fieldset>
		</form>
</div>