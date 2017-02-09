{include file='search.tpl'}
{literal}
<script>
	function toggleLayer(lay) {
		if(lay == 1) {
			$('tabdata1').style.display = 'block';
			$('tabdata2').style.display = 'none';
			$('tab1').className = 'current';
			$('tab2').className = '';
		}
		if(lay == 2) {
			$('tabdata2').style.display = 'block';
			$('tabdata1').style.display = 'none';
			$('tab2').className = 'current';
			$('tab1').className = '';
		}
	}
</script>
<style type="text/css">
	/*- Menu Tabs J--------------------------- */

	#tabsJ {
		margin-top: 10px;
		float:right;
		width:640px;
		line-height:normal;
		font: bold 16px Arial, sans-serif;
	}
	#tabsJ ul {
		margin:0;
		padding:0px;
		list-style:none;
	}
	#tabsJ li {
		display:inline;
		margin:0;
		padding:0;
	}
	#tabsJ a {
		float:left;
		background:url("{/literal}{$_upDir}{literal}img/b2a.png") no-repeat left top;
		width:640px;
		margin:0;
		padding:0px;
		text-decoration:none;
	}
	#tabsJ a span {
		float:left;
		display:block;
		padding: 8px 0px 10px 20px;
		color:#d9e4e8;
	}

	#tabsJ .current a {
		background:url("{/literal}{$_upDir}{literal}img/b1a.png") no-repeat right top;
		width:640px;
	}
	#tabsJ .current a span {
		color:#FFF;
	}
</style>
{/literal}
<div class="container col-md-9">
	<!-- First Row -->
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3>Stones from Quarries</h3>
				</div>
				<div class="well well-lg" style="margin:20px">
					<div class="pull-left">
						{if $_link1=='all-slabs'}<h1>All Slabs</h1>
				        {else}<h1>{$type2|capitalize} Slabs</h1>
				        {/if}
					</div>
					<div class="all_slabs_with_dropdown pull-right">
						<p>Select a specific stone type: </p>

						<select name='stone_search' style="display:inline" onchange="location.href=this.options[this.selectedIndex].value">
							<option value="{$_upDir}all-slabs/0">All Slabs</option>
							{section name=i loop=$arrType}
							<option value="{$_upDir}{$arrType[i].type|lower}-slabs/0" {if strtolower($arrType[i].type)==strtolower($type|replace:" ":"-")}selected{/if}>{$arrType[i].type|replace:"-":" "} Slabs</option>
							{/section}
						</select>
					</div>
					<div style="clear: both;">

					</div>
				</div>
				<div class="panel-body">
					<!-- beginning of slab list -->
					{section name=i loop=$arr}
					{stone}
					{/section}
					<!-- end of slab lits -->
				</div>
				<div>
					<nav aria-label="Page navigation" class="page_navigation">
						{assign var='linkString' value=$_link1}{include file="paging.tpl"}
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
{if $_link3 == 'w'}<script>toggleLayer(2);</script>{/if}
