{literal}
<script language="javascript" type="text/javascript">
	function limitText(limitField, limitCount, limitNum) {
		if (limitField.value.length > limitNum) {
			limitField.value = limitField.value.substring(0, limitNum);
		} else {
			limitCount.value = limitNum - limitField.value.length;
		}
	}
</script>
{/literal}
{include file='search.tpl'}
<div class="col-sm-9">

	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="">Contact Us</h3>
		</div>
		<div class="panel-body">
			<div class="col-md-12">
				<p>Below you can see a list of suppliers currently offering slabs in our Slab Market™. In order to offer competitive pricing, the names of the suppliers are withheld. Therefore, they are identified by their ID number, country of origin and the number of colors available.</p>
			</div>

			<div class="contact_form_card col-md-8">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4>Contact Form</h4>
					</div>
					<div class="panel-body">

						<p>Please fill in the following form to contact us.</p>
						{if $action=='send'}

								{if $err==1}
								<div class="alert alert-dismissible alert-danger">
									<button type="button" class="close" data-dismiss="alert">&times;</button>
									<strong>Oh snap!</strong> {$msg}.
								</div>
								{else}
								<div class="alert alert-dismissible alert-success">
									<button type="button" class="close" data-dismiss="alert">&times;</button>
									<strong>Well done!</strong> Message has been sent.
								</div>
								{/if}
						{/if}
						<form action="{$UpDir}contact-us" method="POST">
							<input type="hidden" name="action" value="send">
							<input type="hidden" name="alastid" value="{$_alastid}">
							<div class="form-group">
								<label for="email">Email Address*</label>
								<input type="text" id="email" name="email" value="{$data.email}" size="30" maxlength="60" class="form-control">
							</div>
							<div class="form-group">
								<label for="phone1">Phone number*</label>
								<div class="form-inline">
									<input type="text" name="phone1" value="{$data.phone1}" class="form-control" size="3" maxlength="3">-
									<input type="text" name="phone2" value="{$data.phone2}" class="form-control" size="3" maxlength="3">-
									<input type="text" name="phone3" value="{$data.phone3}" class="form-control" size="4" maxlength="4"> ext
									<input type="text" name="phone4" value="{$data.phone4}" class="form-control" size="3" maxlength="3">
								</div>
							</div>
							<div class="form-group">
								<label for="name">Phone</label>
								<input type="text" id="name" name="name" value="{$data.name}" size="30" maxlength="60" class="form-control">
							</div>
							<div class="form-group">
								<label for="exampleInputSubject1">Subject*</label>
								<input type="text" id="subject" name="subject" value="{$data.subject}" size="30" maxlength="100" class="form-control">
							</div>
							<div class="form-group">
								<label for="exampleInputMessage1">Message* <small>(1,000 characters max)</small></label>
								<textarea cols="25" rows="6" name="content" onKeyDown="limitText(this.form.content,this.form.countdown,1000);" onKeyUp="limitText(this.form.content,this.form.countdown,1000);" class="form-control">{$data.content}</textarea>
							</div>
							<div class="form-inline">

								You have <input readonly type="text" name="countdown" size="4" value="1000" style="border-color:transparent;"> characters left
							</div>
							<div class="form-group">

								<img src="{$UpDir}{$captchaArr.dir}{$captchaArr.fileName}" style="object-fit: contain;">
							</div>
							<div class="form-group">
								<label for="code">Code*</label>
								<input type="text" id="code" name="{$captchaArr.formName}" maxlength="4" class="form-control">
							</div>
							<button type="submit" class="btn btn-primary pull-right">Submit</button>

							<button type="reset" class="btn btn-danger pull-right" style="margin-right:5px">Reset</button>
						</form>

					</div>
				</div>
			</div>

			<div class="contact_info_card col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4>Contact Info</h4>
					</div>
					<div class="panel-body">

						<div class="media">
							<div class="media-left">
								<span class="glyphicon glyphicon-earphone gi-3x"></span>
							</div>
							<div class="media-body">
								<h5 class="media-heading">Phone Contact Information:</h5>
								<p>Mon - Fri 8:00am - 5:00pm EST</p>
								<p>Local: <a href="tel:+12016556464">(201) 655-6464</a></p>
								<p>Fax: <a href="tel:+12016556464">(201) 621-6169</a></p>
							</div>
						</div>

						<div class="media">
							<div class="media-left">
								<span class="glyphicon glyphicon-envelope gi-3x"></span>
							</div>
							<div class="media-body">
								<h5 class="media-heading">Email Contact:</h5>
								<p>Please send email inquires to:</p>
								<p><a href="mailto:sm@marble.com">sm@marble.com</a></p>
							</div>
						</div>

						<div class="media">
							<div class="media-left">
								<span class="glyphicon glyphicon-edit gi-3x"></span>
							</div>
							<div class="media-body">
								<h5 class="media-heading">Write To Us:</h5>
								<a href="https://www.google.com/maps/place/Marble.com/@40.8570847,-74.031489,16.99z/data=!4m5!3m4!1s0x89c2f761cecd90a1:0x1a991f48070da37f!8m2!3d40.8570849!4d-74.029264" target="_blank"><p>1 Mt Vernon St <br/> Ridgefield, Park,NJ 07660</p></a>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
	</div>

</div>










