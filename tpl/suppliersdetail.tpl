{include file='search.tpl'}
<!-- CONTAINER CONTAINS SLAB LIST / RIGHT SIDE CONTAINER -->
<div class="container col-md-9">

  <!-- First Row -->
  <div class="row">
    <div class="col-md-12">

      <div class="panel panel-default">
        <div class="panel-heading">
          <h3>{if $_link2 == 1}Local Warehouse{else}Supplier #{$_link2}{/if} - Slab List</h3>
        </div>

        <div class="panel-body">

		{section name=i loop=$arr}
		{stone}
		{/section}
        </div> <!-- End of Panel Body -->
		<div>
			<nav aria-label="Page navigation" class="page_navigation">
				{assign var='linkString' value=$_link1}{include file="paging.tpl"}
			</nav>
		</div>
      </div> <!-- End of Panel Default -->

    </div>
  </div>


</div>
<!-- End of Right Side Container -->
