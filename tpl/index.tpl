<div class="col-md-12">
	<img src="{$UpDir}img/slabmarket.jpg" class="img-responsive img-rounded" alt="slabmarket">
	<br>
</div>
{include file='search.tpl'}
<div class="col-md-9">
	<div class="row" style="padding: 0px;">

	    <div class="col-sm-12 col-md-6">
	      <div class="panel panel-default">
	        <div class="panel-heading">
	          <h3 class="panel-title">Want to <span>buy</span> slabs?</h3>
	        </div>
	        <div class="panel-body">
	          <p><strong>Benefits</strong></p>
	          <ul>
	            <li>Huge savings! No wholesalers!</li>
	            <li>No Paperwork! We handle all documents!</li>
	            <li>Choose from over 200 quarries in the world!</li>
	            <li>Top Quality Slabs - we put our name on it!</li>
	            <li>User friendly interface</li>
	          </ul>
	          <a href="{$_upDir}all-slabs"><button type="button" class="btn btn-default pull-right">Choose Your Slab Now </button></a>
	        </div>
	      </div>
	    </div>

	    <div class="col-sm-12 col-md-6">
	      <div class="panel panel-default">
	        <div class="panel-heading">
	          <h3 class="panel-title">Want to <span>sell</span> slabs</h3>
	        </div>
	        <div class="panel-body">
	          <p><strong>Benefits</strong></p>
	          <ul>
	            <li>No Fee to Join!</li>
	            <li>You get to reach hundreds of fabricators, previously unknown to you!</li>
	            <li>Orders are processed by AGM - the name you trust.</li>
	          </ul>
	          <a href="{$_upDir}login"><button type="button" class="btn btn-default pull-right">List your inventory now </button></a>
	        </div>
	      </div>
	    </div>
	</div>

	<div class="row slab_list">
	  <div class="col-sm-12">
	  	{section name=i loop=$arr}
	  	{stone}
	  	{/section}


	  </div>
	</div>

	<div class="row">
		    <div class="col-md-12">
	            <h1 class="page-header">
	                Watch Slabmarket.com Overview
	            </h1>
	        </div>
	  <div class="col-sm-12 video_section">
	    <div align="center" class="embed-responsive embed-responsive-16by9">
	         <iframe src="http://www.youtube.com/embed/FyPFXxBCYYc" frameborder="0" allowfullscreen=""></iframe>
	    </div>
	  </div>
	</div>

	<div class="row">
	    <div class="col-md-12">
            <h1 class="page-header">
                Clients Reviews
            </h1>
        </div>
		<div class="col-sm-12 well" >
		  <blockquote>
		    <i>"Import straight from quarry at low prices"</i>
		    <p class="pull-right">-says Mathew Anderson</p>
		  </blockquote>
		  <hr>
		  <p>Matt Anderson is the general manager of A&M Granite and a Slab Market user. Below is an interview about his experiences with Slab Market.</p>
		  <p><strong>Slab Market:</strong> Tell us a little bit about your company.</p>
		  <p><strong>Matt Anderson:</strong> My company A&M Granite has been in the industry for over ten years and we specialize in fabrication of natural stone countertops. We are a small fabricator located in the western United States and our goal is to provide affordable granite and marble tops. As with other smaller businesses in this industry, my company never had a large inventory. We would have sample slabs of the most popular colors in our yard for customers to see.</p>
		  <a href="{$UpDir}interviews/Import-straight-from-quarry-at-low-prices" class="btn btn-primary pull-right">Read More</a>
		</div>
		<br>
		<div class="col-sm-12 well" style="margin-top:10px;">
		  <blockquote>
		    <i>"Attract previously unreachable clients"</i>
		    <p class="pull-right">-says Roberto Vieira</p>
		  </blockquote>
		  <hr>
		  <p>Roberto Vieira is the CEO of BSE â€“ a brazilian granite manufacturer and exporter. Below are excerpts from our interview with him.</p>
		  <p><strong>Slab Market:</strong> Roberto, please give us some background information on your company.</p>
		  <p><strong>Roberto Vieira:</strong> Our company, BSE, is a medium-sized manufacturer and exporter of natural stone slabs in Brazil. Before finding out about Slab Market, we usually sold our material to large fabricators and warehouses. While business has always been there from the large warehouses, my quarryâ€™s vision is to expand and serve even the medium and small size fabricators directly.</p>
		  <a href="{$UpDir}interviews/Attract-previously-unreachable-clients" class="btn btn-primary pull-right">Read More</a>
		</div>
		<div class="col-md-12">
			<img src="{$UpDir}img/slabmarketads/estimate2.jpg" class="img-responsive img-rounded" alt="estimate">
			<br>
		</div>

	</div>
</div>

