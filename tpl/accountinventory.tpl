{assign var='title' value='Inventory'}
{assign var='menu'  value=4}
<script type="text/javascript" src="{$_upDir}xml_js/account.js"></script>
<div class="col-md-12"> <!-- Begin Column -->

	<div class="panel panel-default panel_with_tabs">
		<div class="panel-heading">
			<h3>Account #{$userid}</h3>
		</div>
		<div class="panel-body" >
			      <div class="btn-group btn-group-justified" style="padding:20px">
			        <div class="btn-group" role="group">
			          <a type="button" class="btn btn-default" href="{$_upDir}account" role="button">Account Info</a>
			        </div>
			        <div class="btn-group" role="group">
			          <a type="button" class="btn btn-default active" href="{$_upDir}accountInventory" role="button">Inventory</a>
			        </div>
			        <div class="btn-group" role="group">
			          <a type="button" class="btn btn-default" href="{$_upDir}accountOrders" role="button">Orders</a>
			        </div>
			      </div>

			      <div class="tab-content col-md-12"> <!-- Start of Tab Content -->

					{if $msg!=''}
					<div class="alert alert-dismissible alert-success">
					  <button type="button" class="close" data-dismiss="alert">&times;</button>
					  <strong>Well done!</strong> {$msg}.
					</div>
					{/if}


			        <div role="tabpanel" class="tab-pane active" id="tab2" style="padding:20px"> <!-- Start of Tab 2 -->
			          <div>

			             <p> <a href="{$_upDir}accountInventoryNew" class="btn btn-success pull-right">Add New Item</a></p>
			              <h3 class="pull-left">Inventory</h3>

			            {assign var='arr' value=$arrSlabItem}
						{if is_array($arr)}
			            <table class="table table-striped">
			              <thead>
			                <tr>
			                  <th class="col-md-1">ID</th>
			                  <th class="col-md-1">Stone Name</th>
			                  <th class="col-md-1">Type</th>
			                  <th class="col-md-1">Thickness</th>
			                  <th class="col-md-1">Size</th>
			                  <th class="col-md-1">Price</th>
			                  <th class="col-md-1">Actions</th>
			                </tr>
			              </thead>
			              <tbody>
			              	{section name=i loop=$arr}
							{assign var='countryCode' value=$arr[i].item_country}
			                <tr>
			                  <td>{$arr[i].id_slab_item}</td>
			                  <td><a href="{$_upDir}accountInventoryEdit/{$arr[i].id_slab_item}">{$arr[i].stone_name|capitalize}</a></td>
			                  <td>{$arr[i].stone_type}</td>
			                  <td>{if $arr[i].id_slab_product==1}<sup>3</sup>/<sub>4</sub>{elseif $arr[i].id_slab_product==2}1<sup>1</sup>/<sub>4</sub>{/if}</td>
			                  <td>{$arr[i].item_width}in. x {$arr[i].item_height}in. </td>
			                  <td>{if $arr[i].price_currency == 'USD'}${else}&euro;{/if}{$arr[i].item_price}/sq.ft.</td>

			                  <td style="padding:3px;">
			                  <a href="{$_upDir}accountInventoryEdit/{$arr[i].id_slab_item}" class="btn btn-info btn-xs">edit</a>
			                  <a href="#" onclick="deleteItem({$arr[i].id_slab_item});" class="btn btn-danger btn-xs">delete</a>
			                  </td>
			                </tr>
							{/section}
			              </tbody>
			            </table>
			            {else}
						<br>
		            	<div style="clear:both" class="alert alert-dismissible alert-danger">
		            	  <button type="button" class="close" data-dismiss="alert">&times;</button>
		            	  <strong>No slabs defined!</strong> <a href="{$_upDir}accountInventoryNew" class="alert-link">Add item</a>.
		            	</div>




			            {/if}
			          </div>
			        </div> <!-- End of Tab 2 -->



			      </div> <!-- End of Tab Content -->

		</div>
	</div>
</div> <!-- End Column -->


<!-- {include file='account_end.tpl'} -->
