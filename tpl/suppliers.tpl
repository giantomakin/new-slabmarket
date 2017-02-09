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
<!-- CONTAINER CONTAINS SLAB LIST / RIGHT SIDE CONTAINER -->
<div class="container col-md-9">
	<!-- First Row -->
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3>Supplier List</h3>
				</div>
				<div class="panel-body">
					<div class="col-xs-12">
						<p>Below you can see a list of suppliers currently offering slabs in our Slab Market™. In order to offer competitive pricing, the names of the suppliers are withheld. Therefore, they are identified by their ID number, country of origin and the number of colors available.</p>
					</div>
					<!-- beginning of slab list -->

					{section name=i loop=$arr}
					{assign var='country' value=$arr[i].country}
					<!-- Begin of Slab List -->
					<div class="col-xs-3 col-md-3 col-md-2 suppliers_card_list"> <!-- Start of Card 1 -->
						<div class="card">
							<a href="{$_upDir}suppliers/{$arr[i].id}">
								<img class="card-img-top" src="{$_upDir}img/flags/{$countryArr[$country]|lower}.jpg" alt="{$countryArr[$country]}" alt="{$countryArr[$country]}">
							</a>
							<div class="card-block">
								<h4 class="card-title">Quarry #{$arr[i].id}</h4>
								<p class="card-text text-center">{$countryArr[$country]}</p>
								<p class="card-text text-center">{$arr[i].stones} stone(s)</p>
							</div>
						</div>
					</div> <!-- End of Card 1 -->

					<!-- end of slab lits -->
					{/section}
				</div>
			</div>
		</div>
	</div>
</div>


