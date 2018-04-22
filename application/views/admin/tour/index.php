<?php 
	$this->load->view('admin/tour/head', $this->data);
?>
<div class="line"></div>

<!-- Main content wrapper -->
<div class="wrapper" id="main_tour">
	<div class="widget">
	
		<div class="title">
			<span class="titleIcon"><input type="checkbox" id="titleCheck" name="titleCheck" /></span>
			<h6>List Tour</h6>
		 	<div class="num f12">Total Tour: <b><?php echo $total_rows?></b></div>
		</div>
		
		<table cellpadding="0" cellspacing="0" width="100%" class="sTable mTable myTable" id="checkAll">
			
			<thead class="filter"><tr><td colspan="6">
				<form class="list_filter form" action="<?php echo admin_url('tour') ?>" method="get">
					<table cellpadding="0" cellspacing="0" width="80%"><tbody>
						<tr>
							<td class="label" style="width:40px;"><label for="filter_id">Identifi</label></td>
							<td class="item"><input name="id" value="<?php echo $this->input->get('id') ?>" id="filter_id" type="text" style="width:55px;" /></td>
							<td class="label" style="width:40px;"><label for="filter_id">Name</label></td>
							<td class="item" style="width:155px;" ><input name="name" value="<?php echo $this->input->get('name')?>" id="filter_iname" type="text" style="width:155px;" /></td>
							<td class="label" style="width:60px;"><label for="filter_status">Category</label></td>
							<td class="item">
								<select name="catalog">
									<option value=""></option>
									<!-- kiem tra danh muc co danh muc con hay khong -->
									<?php foreach($catalogs as $row):?>
										<?php if(count($row->subs) > 1) :?>
										    <optgroup label="<?=$row->name?>">	
										    	<?php foreach($row->subs as $sub) :?>				                    
										    		<option value="<?=$sub->id?>" <?php echo ($this->input->get('catalog') == $sub->id) ? 'selected' : ''?> >
										    			<?=$sub->name?>
										    		</option>
										    	<?php endforeach?>
										    </optgroup>

										 <?php else : ?>
										 	<option value="<?php echo $row->id ?>" <?php echo ($this->input->get('catalog') == $row->id) ? 'selected' : ''?>>
										 		<?php echo $row->name ?>
										 	</option>
										<?php endif;?>
								    <?php endforeach;?>
								</select>
							</td>
							


							<td style='width:150px'>
							<input type="submit" class="button blueB" value="Lọc" />
							<input type="reset" class="basic" value="Reset" onclick="window.location.href = '<?php echo admin_url('tour') ?>'; ">
							</td>
							
						</tr>
					</tbody></table> 
				</form>
			</td></tr></thead>
			
			<thead>
				<tr>
					<td style="width:21px;"><img src="<?php echo public_url('admin')?>/images/icons/tableArrows.png" /></td>
					<td style="width:60px;">Identifi</td>
					<td>Name</td>
					<td>Price</td>
					<td style="width:75px;">Created</td>
					<td style="width:120px;">Action</td>
				</tr>
			</thead>
			
 			<tfoot class="auto_check_pages">
				<tr>
					<td colspan="6">
						 <div class="list_action itemActions">
								<a href="#submit" id="submit" class="button blueB" url="<?php echo admin_url('tour/del_all')?>">
									<span style='color:white;'>Delete All</span>
								</a>
						 </div>
							
					    <div class='pagination'>
					    	<?php echo $this->pagination->create_links() ?>
						</div>
					</td>
				</tr>
			</tfoot>
			
			<tbody class="list_item">
				<?php foreach ($list as $row): ?>
				    <tr class='row_<?php echo $row->id ?>'>
						<td><input type="checkbox" name="id[]" value="<?php echo $row->id?>" /></td>
						<td class="textC"><?php echo $row->id?></td>
						<td>
							<div class="image_thumb">
								<img src="<?php echo base_url('upload/tour/'.$row->image_link)?>" height="50">
								<div class="clear"></div>
							</div>
							<a href="" class="tipS" title="" target="_blank">
								<b><?php echo $row->name?></b>
							</a>
							<div class="f11" >Quantity book tour: <?= $row->buyed?>	| view: <?= $row->view?></div>
						</td>
						
						<td class="textR">
							<?php if($row->discount > 0) :?>
								<?php $price_new = $row->price - $row->discount; ?>
								<b style="color: red;"><?php echo number_format($price_new) ?>USD</b>
								<p style="text-decoration: line-through;"><?php echo number_format($row->price) ?> USD</p>
							<?php else : ?>
								<b style="color: red;"><?php echo number_format($row->price) ?>USD</b>
							<?php endif?>
							
						</td>
						<td class="textC"><?php echo get_date($row->created) ?></td>
						<td class="option textC">
							<a  href="<?php echo base_url('tour/view/'.$row->id)?>" target='_blank' class='tipS' title="Xem chi tiết sản phẩm">
								<img src="<?php echo public_url('admin')?>/images/icons/color/view.png" />
							</a>
							<a href="<?php echo admin_url('tour/edit/'.$row->id) ?>" title="Chỉnh sửa" class="tipS">
								<img src="<?php echo public_url('admin')?>/images/icons/color/edit.png" />
							</a>
							<a href="<?php echo admin_url('tour/delete/'.$row->id) ?>" title="Xóa" class="tipS verify_action" >
							    <img src="<?php echo public_url('admin')?>/images/icons/color/delete.png" />
							</a>
						</td>
					</tr>
				<?php endforeach ?>
		    </tbody>
		</table>
	</div>
</div>