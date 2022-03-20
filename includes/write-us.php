<?php
error_reporting(0);
if(isset($_POST['submit']))
{
	$issue=$_POST['issue'];

	if($issue == "addChild")
		echo "<script type='text/javascript'> document.location = 'addChildren.php'; </script>";
	else
		echo "<script type='text/javascript'> document.location = 'byeTickets.php'; </script>";

}
?>	

	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
							<section>
							<form name="help" method="post">
								<div class="modal-body modal-spa">
									<div class="writ">
										<h4>HOW CAN WE HELP YOU</h4>
											<ul>
												
												<li class="na-me">
													<select id="country" name="issue" class="frm-field required sect" required="">
														<option value="">Select your task</option> 
														<option value="addChild">Add a child</option> 		
														<option value="buyTicket">Buy Ticket</option>														
													</select>
												</li>
												<div class="clearfix"></div>
											</ul>
											<div class="sub-bn">
												<form>
													<button type="submit" name="submit" class="subbtn">Submit</button>
												</form>
											</div>
									</div>
								</div>
								</form>
							</section>
					</div>
				</div>
			</div>