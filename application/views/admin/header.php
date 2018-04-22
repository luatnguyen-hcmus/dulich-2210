<div class="topNav">
	<div class="wrapper">
		<div class="welcome">
			<?php if(isset($admin_info)) : ?>
				<span>Hello: <b><?php echo ($admin_info->name)?></b></span>
			<?php endif?>
		</div>
		
		<div class="userNav">
			<ul>
				<li><a href="<?php echo admin_url() ?>">
					<img style="margin-top:7px;" src="<?php echo public_url()?>/admin/images/icons/light/home.png">
					<span>Home</span>
				</a></li>
				
				<!-- Logout -->
				<li><a href="<?php echo admin_url('home/logout') ?>">
					<img src="<?php echo public_url()?>/admin/images/icons/topnav/logout.png" alt="">
					<span>Logout</span>
				</a></li>
				
			</ul>
		</div>
		
		<div class="clear"></div>
	</div>
</div>