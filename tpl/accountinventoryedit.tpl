<script type="text/javascript" src="../xml_js/common.js"></script>
<script type="text/javascript" src="../xml_js/accountInventoryEdit.js"></script>

<script>
{literal}
function convertDimension(obj,dest) {
	if(dest == 'cm') {
		val = obj.value
		document.getElementById(obj.id+'2').value = Math.round(val * 2.54)
	}
	if(dest == 'in') {
		val = obj.value
		newid = obj.id.substring(0,obj.id.length-1)
		document.getElementById(newid).value = Math.round(val * 0.39)
	}
}
{/literal}
</script>

{assign var='title' value='Inventory'}
{assign var='menu'  value=4}
{include file='account_start.tpl'}

{if $msg!=''}
<div class="actionNotice" style="text-align: center; font-weight: 600; font-size: 16px; margin: 10px 5px 2px 5px; padding: 5px; border: 2px solid green; color: green">{$msg}</div>
{/if}

<fieldset style="-moz-border-radius: 8px; border-radius: px;text-align:left;margin:0 30px 0 30px;padding:10px;">
<legend style="font:bold 18px Arial;">Stone</legend>
<table class="inventoryTableEdit">
	
	{if $data.id_slab_item>0}
	<tr>
		<th><span class="sInventoryTableEdit">Slab #</span></th>
		<td><div class="dInventoryTableEdit">{$data.id_slab_item}</div></td>
	</tr>
	{/if}
	<tr>
		<th><span class="sInventoryTableEdit">Stone</span></th>
		<td>
		<div class="dInventoryTableEdit">		
			<div id="divStoneSelectedBlock" style="display: none;" >	
				<span id="stoneIdSpan" style="display:none;"></span>
				<span id="stoneNameSpan" style="margin-right: 20px;">stone not defined</span>
				<span onclick="backToStoneList();" style="cursor: pointer; text-decoration: underline; font-size: 11px; color: #070707;">back to list and select another stone</span> <span id="divStoneInfo" onclick="showTechnicalInfo($('stone').value)" style="float:right;cursor: pointer; text-decoration: underline; font-size: 11px; color: #070707;">Technical Information</span>
			</div>
			
			
			<div id="divStoneListBlock" style="background: ; display: block; ">
				<form id="fStoneList">
				<div style="padding: 2px; font-size: 11px;">Search our database for stones</div>
				<span>
					<input class="iInventoryTableEdit" style="width: 230px;" type="text" name="stone_name" value="" id="stone_name_input" onkeyup="getStoneNameList();" onblur="getStoneNameList();">
					<input type="button" name="search_button" style="width: 50px;" value="search" onclick="getStoneNameList();">
					<input type="button" name="reset_button" style="width: 50px;" value="reset" onclick="clearSearch();">
				</span></form>
				
				<div id="stoneQuantityDiv" style="display: none;">
				<span style="margin-right: 10px;">Stones found:<span id="stonesCntQuantity">0</span></span>
				<span id="stonesCntText"></span>
				</div>
				
				<div id="stonesFound" style="display: none; padding: 5px;">	
					<table class="stoneListTable" border="0">
						<tr id="stoneListRow">
						<td valign="top"><div id="stoneListDiv1"></div></td>
						<td valign="top"><div id="stoneListDiv2"></div></td>
						<td valign="top"><div id="stoneListDiv3"></div></td>
						</tr>
					</table>
				</div>		
			</div>
			
			
			
			<div id="divStoneNewBlock" style="background: ; margin-left: 60px; margin-top: 5px; margin-bottom: 20px; display: none; border: 0px solid black;">
				<form id="fNewStone">
				<table class="newStoneTable">
					<tr>
						<th><span class="sNewStoneTable">New stone name</span></th>
						<td>
							<div class="dNewStoneTable">
							<input class="iInventoryTableEdit" style="width: 180px;" type="text" name="new_stone_name" id="new_stone_name_input" value="" onkeyup="checkStoneNameAvailability();" onblur="checkStoneNameAvailability();">
							<input type="button" name="button_check" value="check" onclick="checkStoneNameAvailability();">
							<span id="availabilitySpan"></span>
							<!--<input type="button" name="button_check_reset" value="reset" onclick="resetStoneNameAvailability();">-->
							</div>
						</td>
					</tr>
					</table>
					<div id="newStoneProperties" style="display: none;">
					<table class="newStoneTable">
					<tr>
						<th><span class="sNewStoneTable">New stone type</span></th>
						<td>
							<div class="dNewStoneTable">
							{assign var='arr' value=$arrType}
							{section name=i loop=$arr}
								<span class="spanRadio"><label><input class="iInventoryTableEdit" style="height: 11px; margin-right: 2px;" type="radio" name="new_stone_type" id="fEditSlabStoneType{$arr[i].id}" value="{$arr[i].id}">{$arr[i].type|capitalize}</label></span>
								{if ($smarty.section.i.iteration % 4) == 0}<br>{/if}
							{/section}
							</div>
						</td>
					</tr>
					<tr>
						<th><span class="sNewStoneTable">New stone pattern</span></th>
						<td>
							<div class="dNewStoneTable">
							{assign var='arr' value=$arrPattern}
							{section name=i loop=$arr}
								<span class="spanRadio"><label><input class="iInventoryTableEdit" style="height: 11px; margin-right: 2px;" type="radio" id="{$arr[i].id}StonePattern" name="new_stone_pattern" value="{$arr[i].id}">{$arr[i].name|capitalize}</label></span>
							{/section}
							</div>
						</td>
					</tr>
					</table>
					<div style="margin-left: 136px; margin-top: 5px;">
						<input type="button" name="button_add" value="add & select stone" onclick="setNewStone();">
						<input type="button" name="button_add" value="cancel" onclick="backToStoneList();">
					</div>
					</div>
					<div id="newStoneExist" style="display: none;">
						This stone already exist<br />
						<span id="stoneSelectExist"></span>
						
					</div>	
				</form>
			</div>
		</div>
		
	
		</td>
	</tr>
</table>
</fieldset>
<br><br>
<div id="divSlabSection" style="display:none">
<fieldset style="-moz-border-radius: 8px; border-radius: px;text-align:left;margin:0 30px 0 30px;padding:10px;">
<legend style="font:bold 18px Arial;">Slab</legend>
<form action="{$_upDir}{if $data.id_slab_item>0}accountInventoryEdit/{$data.id_slab_item}{else}accountInventoryNew{/if}" method="POST" id="fAccountInventorySlabEdit" onsubmit="return checkForm();">
	<input type="hidden" name="action" value="edit">
	<input type="hidden" name="id" value="{$data.id_slab_item}">
	<input type="hidden" name="photoIds" value="{$data.photoIds}">
	<input type="hidden" name="stone" id="stone" value="">
	<input type="hidden" name="stone_name" id="stone_name" value="">
	<input type="hidden" name="stone_type" value="">
	<input type="hidden" name="stone_pattern" value="">
<table class="inventoryTableEdit">
	<tr>
		<th><span class="sInventoryTableEdit">Photos</span></th>
		<td class="tdRadio"><div class="dInventoryTableEdit">
			<div>
			
			<table width="100%" border="0" cellspacing="5">
				<tr>
					<td align="center" style="background-image: url(../img/photo_bckgrd.png);background-repeat: no-repeat;background-position: center;">
						<br><span onclick="openUploadForm(1);" style="cursor: pointer; text-decoration: none; font-size: 11px;">click here to upload</span><br><span onclick="openUploadForm(1);" style="cursor: pointer; font:bold 14px Arial; color: #185e8a;">close-up photo</span><br><br>
						<div id="divMacro"><img src="../img/nophoto.png" width="72" height="50" style="border: 1px solid #9f9f9f;"></div><br>
						<span onclick="removePhoto(1);" style="cursor: pointer; text-decoration: underline; font-size: 11px; color: #070707;">remove</span><br>
						<img src="{$_upDir}img/photo_macro.png" alt="" width="150" height="110" border="0"><br><br>
					</td>
					<td align="center" style="background-image: url(../img/photo_bckgrd.png);background-repeat: no-repeat;background-position: center;">
						<br><span onclick="openUploadForm(2);" style="cursor: pointer; text-decoration: none; font-size: 11px;">click here to upload</span><br><span onclick="openUploadForm(2);" style="cursor: pointer; font:bold 14px Arial; color: #185e8a;">center of slab photo</span><br><br>
						<div id="divMedium"><img src="../img/nophoto.png" width="72" height="50" style="border: 1px solid #9f9f9f;"></div><br>
						<span onclick="removePhoto(2);" style="cursor: pointer; text-decoration: underline; font-size: 11px; color: #070707;">remove</span><br>
						<img src="{$_upDir}img/photo_medium.png" alt="" width="150" height="110" border="0"><br><br>
					</td>
					<td align="center" style="background-image: url(../img/photo_bckgrd.png);background-repeat: no-repeat;background-position: center;">
						<br><span onclick="openUploadForm(3);" style="cursor: pointer; text-decoration: none; font-size: 11px;">click here to upload</span><br><span onclick="openUploadForm(3);" style="cursor: pointer; font:bold 14px Arial; color: #185e8a;">whole slab photo</span><br><br>
						<div id="divWide"><img src="../img/nophoto.png" width="72" height="50" style="border: 1px solid #9f9f9f;"></div><br>
						<span onclick="removePhoto(3);" style="cursor: pointer; text-decoration: underline; font-size: 11px; color: #070707;">remove</span><br>
						<img src="{$_upDir}img/photo_wide.png" alt="" width="150" height="110" border="0"><br><br>
					</td>
				</tr>
			</table>
			
			</div></div>
		</td>
	</tr>
	
	<tr>
		<th><span class="sInventoryTableEdit">Colors</span></th>
		<td class="tdRadio"><div id="slabColorList" class="dInventoryTableEdit">
			<div id="divColors" style="display: none;">
				<table><tr>
				{assign var='arr' value=$arrSlabStoneColor}
				{section name=i loop=$arr}
					<td style="vertical-align: middle; width: 40px; padding: 0px; margin: 0px; background-color: #{$arr[i].value}; border: 1px solid #b7b7b7;"><input type="checkbox" id="{$arr[i].id}SlabColor" name="color[]" value="{$arr[i].id}"></td>
				{/section}
				</tr></table>
			</div>
			<div style="font-size: 11px;" id="divColorsSelect">
				select stone
			</div>
			</div>
		</td>
	</tr>
	
	<tr>
		<th><span class="sInventoryTableEdit">Thickness</span></th>
		<td class="tdRadio"><div class="dInventoryTableEdit">
			{assign var='arr' value=$arrSlabProduct}
			{section name=i loop=$arr}
			<span class="spanRadio"><label><input class="iInventoryTableEdit" style="height: 13px; margin-right: 3px;" type="radio" name="product" value="{$arr[i].id}" {if $data.id_slab_product==$arr[i].id || ($data.id_slab_item == 0 && $arr[i].id==2)}checked{/if}>Slab{if $arr[i].id==2} 1<sup>1</sup>/<sub>4</sub>"{elseif $arr[i].id==1} <sup>3</sup>/<sub>4</sub>"{elseif $arr[i].id==3} 2"{/if}</label></span>
			{/section}
			</div>
		</td>
	</tr>
	<tr>
		<th><span class="sInventoryTableEdit">Dimensions</span></th>
		<td><div class="dInventoryTableEdit">
			<div>
				Width &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Height
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Width &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Height
			</div>
			<div>
			 <input  class="iInventoryTableEdit" type="text" name="width" id="width" size="5" value="{if $data.id_slab_item == 0}0{else}{$data.item_width}{/if}" onkeyup="convertDimension(this,'cm')"> inch &nbsp;&nbsp;&nbsp;
			  <input  class="iInventoryTableEdit"  type="text" name="height" id="height" size="5" value="{if $data.id_slab_item == 0}0{else}{$data.item_height}{/if}" onkeyup="convertDimension(this,'cm')">	inch&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>OR</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input  class="iInventoryTableEdit" type="text" name="width2" id="width2" size="5" value=""  onkeyup="convertDimension(this,'in')"> cm &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  <input  class="iInventoryTableEdit"  type="text" name="height2" id="height2" size="5" value="" onkeyup="convertDimension(this,'in')">	cm
			</div>
			</div>
		</td>
	</tr>
	<tr>
		<th><span class="sInventoryTableEdit">Surface finish</span></th>
		<td class="tdRadio"><div class="dInventoryTableEdit"">
			<span class="spanRadio"><label><input class="iInventoryTableEdit" style="height: 13px; margin-right: 3px;" type="radio" name="surface" value="1" {if $data.item_surface_finish==1 || $data.id_slab_item == 0}checked{/if}>&nbsp;Polished</label></span>
			<span class="spanRadio"><label><input class="iInventoryTableEdit" style="height: 13px; margin-right: 3px;" type="radio" name="surface" value="2" {if $data.item_surface_finish==2}checked{/if}>Honed</label></span>
			<span class="spanRadio"><label><input class="iInventoryTableEdit" style="height: 13px; margin-right: 3px;" type="radio" name="surface" value="3" {if $data.item_surface_finish==3}checked{/if}>Flamed</label></span>
			<span class="spanRadio"><label><input class="iInventoryTableEdit" style="height: 13px; margin-right: 3px;" type="radio" name="surface" value="4" {if $data.item_surface_finish==4}checked{/if}>Sand blasted</label></span>
			<span class="spanRadio"><label><input class="iInventoryTableEdit" style="height: 13px; margin-right: 3px;" type="radio" name="surface" value="5" {if $data.item_surface_finish==5}checked{/if}>Antique</label></span>
			</div>
		</td>
	</tr>
	<tr>
		<th><span class="sInventoryTableEdit">Resin Coat</span></th>
		<td class="tdRadio"><div class="dInventoryTableEdit">
			<span class="spanRadio"><label><input class="iInventoryTableEdit" style="height: 13px; margin-right: 3px;" type="radio" name="resin" value="0" {if $data.item_resin==0}checked{/if}>No</label></span>
			<span class="spanRadio"><label><input class="iInventoryTableEdit" style="height: 13px; margin-right: 3px;" type="radio" name="resin" value="1" {if $data.item_resin==1}checked{/if}>Yes</label></span>
			</div>
		</td>
	</tr>
	<tr>
		<th><span class="sInventoryTableEdit">Country origin</span></th>
		<td><div class="dInventoryTableEdit">
			<SELECT name="country" style="height: 19px; font-size: 10px; border: 1px solid #c7c7c7; width: 300px;">
			<option name="0"></option>
			{html_options options=$countryArr selected=$data.country}
			</SELECT>
			</div>
		</td>
	</tr>
	<tr>
		<th><span class="sInventoryTableEdit">Description</span></th>
		<td><div class="dInventoryTableEdit">
			<textarea name="description" style="padding: 5px; height: 80px; width: 300px; font-size: 11px; border: 1px solid #c7c7c7;">{$data.item_description}</textarea>
			</div>
		</td>
	</tr>
	<tr>
		<th><span class="sInventoryTableEdit">Price</span></th>
		<td><div class="dInventoryTableEdit">
			<select name="currency">
			<option value="USD" {if $data.price_currency == 'USD'}selected{/if}>USD</option>
			<option value="EUR" {if $data.price_currency == 'EUR'}selected{/if}>EUR</option>
			</select>
			<input class="iInventoryTableEdit" type="text" name="price" size="5" value="{if $data.id_slab_item == 0}0{else}{$data.item_price}{/if}">/sq.ft.
			</div>
		</td>
	</tr>
</table>

<div style="margin: 10 0 0 142;">
{if $data.id_slab_item>0}
	<input type="submit" name="submit" value="Update Slab">&nbsp;&nbsp;&nbsp;
	<input type="button" name="discard" value="Cancel and Return to Inventory" onclick="newLocation('../accountInventory','Are you sure?');">	
{else}
	<input type="submit" name="submit1" value="Save and Add Another Slab">&nbsp;&nbsp;&nbsp;
	<input type="submit" name="submit2" value="Save and Return to Inventory">
	<input type="button" name="discard" value="Cancel" onclick="newLocation('../accountInventory','Are you sure?');">
{/if}


</div>
</form>
</fieldset>
</div>

{literal}
<script language="javascript">
		getStoneNameList();{/literal}
	{if $data.id_slab_stone!=''}{literal}
		setStone2('{/literal}{$data.id_slab_stone}{literal}','{/literal}{$data.id_slab_item}{literal}','{/literal}{$data.stone_name}{literal}',0);{/literal}
	{/if}
	{assign var='arr' value=$data.color}
	{section name=i loop=$arr}
	{literal}
		setColor('{/literal}{$arr[i].id}{literal}','{/literal}{$arr[i].name}{literal}','SlabColor');
	{/literal}
	{/section}
{literal}
convertDimension(document.getElementById('width'),'cm');
convertDimension(document.getElementById('height'),'cm');	
</script>
{/literal}

{include file='account_end.tpl'}