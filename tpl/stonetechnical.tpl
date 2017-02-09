<html>
	<head>
		<title>Stone Technical Information</title>	
		{literal}
		<script type="text/javascript" src="../xml_js/prototype.js"></script>
		<style>
			td {
				padding: 3px;	
			}
		</style>
		<script>
			function conv_abs(id,dir) {
				if(dir == 1)
					$(id+'_metric').value=$(id).value;
				else
					$(id.substr(0,id.indexOf('_'))).value=$(id).value;
				
			} 
			function conv_dens(id,dir) {
				var kg = 16.018463373953
				var lb = 0.062427960576173
				if(dir == 1)
					$(id+'_metric').value=Math.round($(id).value*kg*100)/100;
				else
					$(id.substr(0,id.indexOf('_'))).value=Math.round($(id).value*lb*100)/100;
				
			} 
			function conv_comp(id,dir) {
				var mpa = 0.006894757
				var psi = 145.03773773
				if(dir == 1)
					$(id+'_metric').value=Math.round($(id).value*mpa*100)/100;
				else
					$(id.substr(0,id.indexOf('_'))).value=Math.round($(id).value*psi*100)/100;
			} 
			
			function conv_flex(id,dir) {
				var mpa = 0.006894757
				var psi = 145.03773773
				if(dir == 1)
					$(id+'_metric').value=Math.round($(id).value*mpa*100)/100;
				else
					$(id.substr(0,id.indexOf('_'))).value=Math.round($(id).value*psi*100)/100;
			} 
		</script>
		{/literal}
	</head>
	<body style="font-family: sans-serif; font-size: 8pt;">
	<form method="post" action="stonetechnical.php">
	<input type="hidden" name="update" value="{if $arr.id > 0}{$arr.id}{else}0{/if}">
	<input type="hidden" name="id_stone" value="{$id_stone}">
	<input type="hidden" name="id" value="{$arr.id}">
    <input type="hidden" name="id2" value="{$smarty.get.id}">
		<table border="0" width="100%" style="font-family: sans-serif; font-size: 10pt;" cellpadding="0" cellspacing="0" class="table table-striped">
			<tbody>
				<tr>
					<td rowspan="2" align=center valign=middle><strong>Technical Information</strong></td>
					<td colspan="2" align=center valign=middle style="border:1px solid black;""><strong>Value</strong></td>
					<td rowspan="2" width="10%" align=center valign=middle style="border-top:1px solid black; border-right:1px solid black; border-bottom:1px solid black;"><strong>ASTM Test Method</strong></td>
				</tr>	
				<tr>
					<td width="15%" align=center valign=middle style="border-bottom:1px solid black;border-left:1px solid black;"><strong>English</strong></td>
					<td width="15%" align=center valign=middle style="border-right:1px solid black;border-bottom:1px solid black;border-left:1px solid black;"><strong>Metric</strong></td>
				</tr>	
				<tr>
					<td align=right valign=middle>Absorption by wight, % &nbsp;&nbsp;&nbsp;</td>
					<td align=center valign=middle style="border-right:1px solid black;border-bottom:1px solid black;border-left:1px solid black;"><input type="text" size="6" id="abs" name="abs" onChange="conv_abs(this.id,1)" value="{$arr.absorption}"></td>
					<td align=center valign=middle style="border-right:1px solid black;border-bottom:1px solid black;"><input type="text" size="6" id="abs_metric" onChange="conv_abs(this.id,0)" value=""></td>
					<td align=center valign=middle style="border-right:1px solid black;border-bottom:1px solid black;"><input type="text" size="6" id="abs_test" name="abs_test" value="{$arr.absorption_test}"></td>
				</tr>	
				<tr>
					<td align=right valign=middle>Density, lbs/ft<sup>3</sup>, (kg/m<sup>3</sup>) &nbsp;&nbsp;&nbsp;</td>
					<td align=center valign=middle style="border-right:1px solid black;border-bottom:1px solid black;border-left:1px solid black;"><input type="text" size="6" id="dens" name="dens" onChange="conv_dens(this.id,1)" value="{$arr.density}"></td>
					<td align=center valign=middle style="border-right:1px solid black;border-bottom:1px solid black;"><input type="text" size="6" id="dens_metric" onChange="conv_dens(this.id,0)" value=""></td>
					<td align=center valign=middle style="border-right:1px solid black;border-bottom:1px solid black;"><input type="text" size="6" id="dens_test" name="dens_test" value="{$arr.density_test}"></td>
				</tr>	
				<tr>
					<td align=right valign=middle>Compressive strenght, psi, (MPa) &nbsp;&nbsp;&nbsp;</td>
					<td align=center valign=middle style="border-right:1px solid black;border-bottom:1px solid black;border-left:1px solid black;"><input type="text" size="6" id="comp" name="comp" onChange="conv_comp(this.id,1)" value="{$arr.compress}"></td>
					<td align=center valign=middle style="border-right:1px solid black;border-bottom:1px solid black;"><input type="text" size="6" id="comp_metric" onChange="conv_comp(this.id,0)" value=""></td>
					<td align=center valign=middle style="border-right:1px solid black;border-bottom:1px solid black;"><input type="text" size="6" id="comp_test" name="comp_test" value="{$arr.compress_test}"></td>
				</tr>	
				<tr>
					<td align=right valign=middle>Abrasion resistance, hardness &nbsp;&nbsp;&nbsp;</td>
					<td align=center valign=middle style="border-right:1px solid black;border-bottom:1px solid black;border-left:1px solid black;"><input type="text" size="6" id="abr" name="abr" value="{$arr.abrasion}"></td>
					<td align=center valign=middle style="border-right:1px solid black;border-bottom:1px solid black;"><input type="text" size="6" id="abr_metric" value="NA" readonly="readonly"></td>
					<td align=center valign=middle style="border-right:1px solid black;border-bottom:1px solid black;"><input type="text" size="6" id="abr_test" name="abr_test" value="{$arr.abrasion_test}"></td>
				</tr>	
				<tr>
					<td align=right valign=middle>Flexural strength, psi, (MPa) &nbsp;&nbsp;&nbsp;</td>
					<td align=center valign=middle style="border-right:1px solid black;border-bottom:1px solid black;border-left:1px solid black;"><input type="text" size="6" id="flex" name="flex" onChange="conv_flex(this.id,1)" value="{$arr.flexural}"></td>
					<td align=center valign=middle style="border-right:1px solid black;border-bottom:1px solid black;"><input type="text" size="6" id="flex_metric" onChange="conv_flex(this.id,0)" value=""></td>
					<td align=center valign=middle style="border-right:1px solid black;border-bottom:1px solid black;"><input type="text" size="6" id="flex_test" name="flex_test" value="{$arr.flexural_test}"></td>
				</tr>	
				<tr><td colspan=4 align=center><br></td></tr>
				<tr><td colspan=4 align=center>Other Trade Names (seprate with comma): <input type="text" size=50 name="trade_names" value="{$arr.trade_names}"></td></tr>	
				<tr><td colspan=4 align=center><br></tr>
				<tr><td colspan=4 align=center><input type="submit" name="save" value="Save"></td></tr>	
			</tbody>
		</table>
	</form>
	</body>
</html>