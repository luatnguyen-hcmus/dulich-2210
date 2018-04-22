<div class="titleArea">
	<div class="wrapper">
		<div class="pageTitle">
			<h5>Bảng điều khiển</h5>
			<span>Trang quản lý hệ thống</span>
		</div>
		
		<div class="clear"></div>
	</div>
</div>
<div class="line"></div>
<div class="wrapper">
	
	<div class="widgets">
	     <!-- Stats -->
		
		<!-- Amount -->
		<div class="oneTwo">
			<div class="widget">
				<div class="title">
					<img src="<?php echo public_url('admin')?>/images/icons/dark/money.png" class="titleIcon">
					<h6>Doanh số</h6>
				</div>
				
				<table cellpadding="0" cellspacing="0" width="100%" class="sTable myTable">
					<tbody>
						
							<tr>
									<td class="fontB blue f13">Tổng doanh số</td>
									<td class="textR webStatsLink red" style="width:120px;"><?=number_format($amount_total)?> đ</td>
							</tr>
						    
						    <tr>
									<td class="fontB blue f13">Doanh số hôm nay</td>
									<td class="textR webStatsLink red" style="width:120px;"><?=number_format($day_total)?> đ</td>
							</tr>
					</tbody>
				</table>
			</div>
		</div>


		<!-- User -->
		<div class="oneTwo">
			<div class="widget">
				<div class="title">
					<img src="<?php echo public_url('admin')?>/images/icons/dark/users.png" class="titleIcon">
					<h6>Thống kê dữ liệu</h6>
				</div>
				
				<table cellpadding="0" cellspacing="0" width="100%" class="sTable myTable">
					<tbody>
						
						<tr>
							<td>
								<div class="left">Tổng số gia dịch</div>
								<div class="right f11"><a href="<?php echo admin_url('transaction')?>">Chi tiết</a></div>
							</td>
							
							<td class="textC webStatsLink">
								<?= $total_transaction?>					
							</td>
						</tr>
						
						<tr>
							<td>
								<div class="left">Tổng số sản phẩm</div>
								<div class="right f11"><a href="<?php echo admin_url('product')?>">Chi tiết</a></div>
							</td>
							
							<td class="textC webStatsLink">
								<?= $total_product?>				
							</td>
						</tr>
						
						<tr>
							<td>
								<div class="left">Tổng số bài viết</div>
								<div class="right f11"><a href="<?php echo admin_url('news')?>">Chi tiết</a></div>
							</td>
							
							<td class="textC webStatsLink">
								<?= $total_new?>				
							</td>
						</tr>
						
						<tr>
							<td>
								<div class="left">Tổng số thành viên</div>
								<div class="right f11"><a href="<?php echo admin_url('user')?>">Chi tiết</a></div>
							</td>
							
							<td class="textC webStatsLink">
								<?= $total_user?>					
							</td>
						</tr>
						
					</tbody>
				</table>
			</div>
		</div>

		<div class="clear"></div>
		
		<!-- Giao dich thanh cong gan day nhat -->
		
	<div class="widget">
		<div class="title">
			<span class="titleIcon"><div class="checker" id="uniform-titleCheck"><span><input type="checkbox" id="titleCheck" name="titleCheck" style="opacity: 0;"></span></div></span>
			<h6>Danh sách Giao dịch</h6>
		</div>
		
			<table cellpadding="0" cellspacing="0" width="100%" class="sTable mTable myTable" id="checkAll">
				
				
				<thead>
					<tr>
						<td style="width:10px;"><img src="<?php echo public_url('admin')?>/images/icons/tableArrows.png"></td>
						<td style="width:60px;">Mã số</td>
						<td style="width:75px;">Thành viên</td>
						<td style="width:90px;">Số tiền</td>
						<td>Hình thức</td>
						<td style="width:100px;">Giao dịch</td>
						<td style="width:75px;">Ngày tạo</td>
						<td style="width:55px;">Hành động</td>
					</tr>
				</thead>
				
	 			<tfoot class="auto_check_pages">
					<tr>
						<td colspan="8">
							 <div class="list_action itemActions">
									<a href="#submit" id="submit" class="button blueB" url="admin/tran/del_all.html">
										<span style="color:white;">Xóa hết</span>
									</a>
							 </div>
						</td>
					</tr>
				</tfoot>
				
				<tbody class="list_item">

					<?php $i = 1; foreach($list_transaction as $lt) : ?>
						<tr>
							<td>
								<div class="checker" id="uniform-undefined">
									<span><input type="checkbox" name="id[]" value="21" style="opacity: 0;"></span>
								</div>
							</td>
							
							<td class="textC"><?=$i++;?></td>
							
							<td>
								<?=$lt->user_name?>				
							</td>
							
							<td class="textR red"><?=number_format($lt->amount)?></td>
							
							<td>
								<?php 
									if($lt->payment == 'offline'){
										echo 'nhận hàng tại nhà';
									
									}
									else{
										echo $lt->payment;
									}
								?>					
							</td>
							
							
							<td class="status textC">
								<span class="pending">Chờ xử lý</span>
							</td>
							
							<td class="textC"><?=$lt->created?></td>
							
							<td class="textC">
									<a href="" class="lightbox cboxElement">
										<img src="<?php echo public_url('admin')?>/images/icons/color/view.png">
									</a>
									
								   <a href="<?php echo admin_url('transaction/delete/'.$lt->id) ?>" class="tipS verify_action" original-title="Xóa">
								    <img src="<?php echo public_url('admin')?>/images/icons/color/delete.png">
								   </a>
							</td>
						</tr>
					<?php endforeach ?>	
				</tbody>
				
			</table>
		</div>

    </div>
	
</div>
<div class="clear mt30"></div>