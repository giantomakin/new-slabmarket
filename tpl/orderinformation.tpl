{assign var='step'  value=1}


<div class="col-sm-12">

	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="">How to Buy Slabs...</h3>
		</div>
		<div class="panel-body">

			{include file='orderpath.tpl'}

			<h3 class="page-header">
				Order Information
			</h3>

			<div class="alert alert-dismissible alert-warning">
			  <button type="button" class="close" data-dismiss="alert">&times;</button>
			  <h4>Warning!</h4>
			  <p>In order to provide you with an accurate quote, please fill out your contact and shipping information below:</p>
			</div>

			{if $errorMsg!=''}
			<div class="alert alert-dismissible alert-danger">
			  <button type="button" class="close" data-dismiss="alert">&times;</button>
			  <strong>Oh snap!</strong> {$errorMsg}.
			</div>
			{/if}



			<form action="{$_upDir}orderInformation" name="orderinfo" method="POST">
				<input type="hidden" name="alastid" value="{$_alastid}">
				<input type="hidden" name="action" value="edit">
				<input type="hidden" name="id" value="{$data.id}">
				<div class="form-group">
					<label for="exampleInputEmail1">Change Address</label>
					<select class="form-control" name="address_select" id="address_select" size="1" onchange="window.location='/orderInformation/1/'+this.options[this.selectedIndex].value">
						{html_options options=$address_list selected=$data.address_label}
					</select>
				</div>
				<div class="form-group">
					<label for="contact_person">Contact Person*</label>
					<input class="form-control" id="contact_person" type="text" name="contact_person" value="{$data.contact_person}" size="50" maxlength="80">
				</div>
				<div class="form-group">
					<label for="company">Company name*</label>
					<input class="form-control" type="text" name="company" value="{$data.company}" size="50" maxlength="80">
				</div>
				<div class="form-group">
					<label for="address1">Address*</label>
					<input class="form-control" type="text" name="address1" value="{$data.address1}" size="50" maxlength="80">
				</div>
				<div class="form-group">
					<label for="address2">Address 2</label>
					<input class="form-control" type="text" name="address2" value="{$data.address2}" size="50" maxlength="80">
				</div>
				<div class="form-group">
					<label for="zip">Zip Code*</label>
					<input class="form-control" type="text" name="zip" value="{$data.zip}" size="15" maxlength="5">
				</div>
				<div class="form-group">
					<label for="city">City*</label>
					<input class="form-control" type="text" name="city" value="{$data.city}" size="50" maxlength="80">
				</div>
				<div class="form-group">
					<label for="state">State*</label>
					<select class="form-control" name="state" size="1">
						{html_options options=$state selected=$data.state}
					</select>
				</div>
				<div class="form-group">
					<label for="r_phone">Phone*</label>
					<div class="form-inline">
						(<input class="form-control" type="text" name="r_phone1" value="{$data.r_phone1}" size="2" maxlength="3">)&nbsp;
						<input class="form-control" type="text" name="r_phone2" value="{$data.r_phone2}" size="2" maxlength="3">&nbsp;-
						<input class="form-control" type="text" name="r_phone3" value="{$data.r_phone3}" size="3" maxlength="4">&nbsp;Ext
						<input class="form-control" type="text" name="r_phone4" value="{$data.r_phone4}" size="2" maxlength="3">
					</div>
				</div>
				<div class="form-group">
					<label for="a_phone">Additional Phone</label>
					<div class="form-inline">
						(<input class="form-control" type="text" name="a_phone1" value="{$data.a_phone1}" size="2" maxlength="3">)&nbsp;
						<input class="form-control" type="text" name="a_phone2" value="{$data.a_phone2}" size="2" maxlength="3">&nbsp;-
						<input class="form-control" type="text" name="a_phone3" value="{$data.a_phone3}" size="3" maxlength="4">&nbsp;Ext
						<input class="form-control" type="text" name="a_phone4" value="{$data.a_phone4}" size="2" maxlength="3">
					</div>
				</div>
				<div class="form-group">
					<label for="fax">Fax</label>
					<div class="form-inline">
						(<input class="form-control" type="text" name="fax1" value="{$data.fax1}" size="2" maxlength="3">)&nbsp;
						<input class="form-control" type="text" name="fax2" value="{$data.fax2}" size="2" maxlength="3">&nbsp;-
						<input class="form-control" type="text" name="fax3" value="{$data.fax3}" size="3" maxlength="4">
					</div>
				</div>
				<div class="form-group">
					<label for="email2">Additional email</label>
					<input class="form-control" type="text" name="email2" value="{$data.email2}" size="50" maxlength="80">
				</div>

				<input type="submit" name="submit" value="Proceed" class="btn btn-primary pull-right">
			</form>


		</div>



	</div>

</div>
<!--




<div class="b2h" style="width:800px;margin:10px 0 0 0;"><div class="b2h_left"></div><div class="b2h_right"></div><h1>1. Order Information</h1></div>
<div class="bckgrd800">
<div style="padding:20px 0 0 50px;"></div>
-->
