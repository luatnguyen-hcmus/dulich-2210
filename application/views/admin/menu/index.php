<?php 
	$this->load->view('admin/menu/head', $this->data);
?>
	<div class="line"></div>
	<div class="wrapper">

		<?php $this->load->view('admin/mesage', $this->data);?>

	<div class="widget">
	
		<div class="title">
			<span class="titleIcon"><input type="checkbox" id="titleCheck" name="titleCheck" /></span>
			<h6>List Menu</h6>
		 	<div class="num f12">Total Menu: <b><?=count($list)?></b></div>
		</div>
		
		
		<table cellpadding="0" cellspacing="0" width="100%" class="sTable mTable myTable withCheck" id="checkAll">
			<thead>
				<tr>
					<td style="width:10px;"><img src="<?php echo public_url('admin')?>/images/icons/tableArrows.png" /></td>
					<td style="width:80px;">Identify</td>
					<td style="width:80px;">Sort order</td>
					<td>Name Menu</td>
					<td style="width:100px;">Action</td>
				</tr>
			</thead>
			
 			<tfoot>
				<tr>
					<td colspan="7">
					     <div class="list_action itemActions">
								<a href="#submit" id="submit" class="button blueB" url="<?php echo admin_url('catalog/del_all') ?>">
									<span style='color:white;'>Delete all</span>
								</a>
						 </div>
							
					     <div class='pagination'></div>
					</td>
				</tr>
			</tfoot>
 			
			<tbody>
				<!-- Filter -->
				<?php  foreach ($list as $row) :?>
				<tr class="row_<?php echo $row->id?>">
						<td><input type="checkbox" name="id[]" value="<?=$row->id?>" /></td>
						
						<td class="textC"><?=$row->id?></td>
						<td class="textC"><?=$row->sort_order?></td>
						
						
						<td><span title="<?=$row->title?>" class="tipS">
							<?=$row->title?>					
						</span></td>
						
						
						
						<td class="option">
							 <a href="<?php echo admin_url('menu/edit/'.$row->id) ?>" title="Adit" class="tipS ">
							<img src="<?php echo public_url('admin')?>/images/icons/color/edit.png" />
							</a>
							
							<a href="<?php echo admin_url('menu/delete/'.$row->id) ?>" title="Delete" class="tipS verify_action" >
							    <img src="<?php echo public_url('admin')?>/images/icons/color/delete.png" />
							</a>
						</td>
					</tr>					
				<?php endforeach ?>
			</tbody>
		</table>
	</div>
</div>
<div class="clear mt30"></div>
