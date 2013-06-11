<!--= scroll left http://jsbin.com/inixoz/378/edit -->
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <link type="text/css" rel="stylesheet" href="style.css"/>
    <script type="text/javascript" src="d3/d3.js"></script>
    <script type="text/javascript" src="d3/d3.layout.js"></script>
    <style type="text/css">


.node circle {
  cursor: pointer;
  fill: #fff;
  stroke: steelblue;
  stroke-width: 1.5px;
}

.node text {
  font-size: 11px;
}

path.link {
  fill: none;
  stroke: #ccc;
  stroke-width: 1.5px;
}

.node p
{
	  font: 300 14px "Helvetica Neue";
  color: #000;
}
.node rect {
  stroke-width: 1px;
  stroke: #e6e6b8;
  fill: #ffffcc;
}

    </style>
  </head>
  <body>
    <div id="body">
      <div id="content"></div>
      <div id="footer">
        d3.layout.tree
        <div class="hint">click or option-click to expand or collapse</div>
      </div>
    </div>
    <script type="text/javascript">

var m = [20, 120, 20, 120],
    w = 1400+1280 - m[1] - m[3],
    h = 800 - m[0] - m[2],
    i = 0,
    root;
var pbarSize = { width : 100, height : 40 };

var tree = d3.layout.tree()
    .size([h, w]);

var diagonal = d3.svg.diagonal()
    .projection(function(d) { return [d.y, d.x]; });

var vis = d3.select("#content").append("svg:svg")
    .attr("width", w + m[1] + m[3])
    .attr("height", h + m[0] + m[2])
  .append("svg:g")
    .attr("transform", "translate(" + m[3] + "," + m[0] + ")");
//../get_or_make_post.php?mapid=0&newpost=
//d3.json("flare.json", function(json) {
d3.json("../get_or_make_post.php?mapid=<?=$_GET['mapid']?>&newpost=", function(json) {
  root = json.treePosts;
  console.log(root);
  root.x0 = h / 2;
  root.y0 = 0;

  function toggleAll(d) {
    if (d.children) {
      d.children.forEach(toggleAll);
      toggle(d);
    }
  }
	
	function mapToRay(map) {
		if(!map)
			return null;
		ray = [];
		for (var pid in map) {
			ray.push(map[pid]);
		}
		
		return ray;
	}
  // Initialize the display to show a few nodes.
	function replaceChildren(node) {
			
			if(node.children) {
				ray=mapToRay(node.children);
				if(ray.length>0) {
					node.children=mapToRay(node.children);
					for(var i=0;i<node.children.length;i++)
						replaceChildren(node.children[i]);
				}
				 
					
			}
				
				/*
			childrenray = [];
			
			//console.log(node.children);
			if(node.children) {
				for (var pid in node.children) {
					newChild=node.children[pid]
					childrenray.push(newChild);
					replaceChildren(newChild);
					
					console.log(node);
				}
				
				if(childrenray.length>0)
					node.children=childrenray;
			}
			//console.log(childrenray);*/
		
	}
  replaceChildren(root);
    console.log(root);
  root.children.forEach(toggleAll);
  if(root.children[0])
  	toggle(root.children[0]);
  if(root.children[0].children[1])
	  toggle(root.children[0].children[1]);
  /*
  toggle(root.children[1]);
  toggle(root.children[1].children[2]);
  toggle(root.children[9]);
  toggle(root.children[9].children[0]);*/

  update(root);
});

function update(source) {
  var duration = d3.event && d3.event.altKey ? 5000 : 500;

  // Compute the new tree layout.
  var nodes = tree.nodes(root).reverse();

  // Normalize for fixed-depth.
  nodes.forEach(function(d) { d.y = d.depth * 180; });

  // Update the nodes…
  var node = vis.selectAll("g.node")
      .data(nodes, function(d) { return d.id || (d.id = ++i); });

  // Enter any new nodes at the parent's previous position.
  var nodeEnter = node.enter().append("svg:g")
      .attr("class", "node")
      .attr("transform", function(d) { return "translate(" + source.y0 + "," + source.x0 + ")"; })
	  
	 
	
      .on("click", function(d) { toggle(d); update(d); });

  nodeEnter.append("svg:circle")
      .attr("r", 1e-6)
      .style("fill", function(d) { return d._children ? "lightsteelblue" : "#fff"; });

  nodeEnter.append("svg:text")
      .attr("x", function(d) { return d.children || d._children ? -10 : 10; })
      .attr("dy", ".35em")
      .attr("text-anchor", function(d) { return d.children || d._children ? "end" : "start"; })
      .text(function(d) { 
	  	
		if(!d.title || d.title==null) {  
			var idea=d.body;
			
		  	if(idea)
			{
				i1=idea.indexOf("--");
				i2=idea.indexOf(":");
				i=Math.max(i1,i2);
				if(i<0) i=10000;
				nameEnd = Math.min(50,i);
				d.title=idea.substr(0,nameEnd);
			}
			else
				d.title=" ";
				
	    }
	       pbar = '<!-- **PROGBAR** -->      <div class="container">        <div class="progress progress-striped active">            <div class="bar" style="width: ' + d.progress + '%;">'+d.progress+ '%</div>        </div>	 <span class="metric">' + d.metric + ' </span> </div>' 
		   //return d.title; 
		   
		   return d.title //+ "<br>"+pbar;
	   })
	   
      .style("fill-opacity", 1e-6);
	  
  nodeEnter.append("svg:circle")
      .attr("r", 1e-6)
      .style("fill", function(d) { return d._children ? "lightsteelblue" : "#fff"; });
	/*
	nodeEnter.append("svg:rect")
	.attr('width', pbarSize.width)
	.attr('height', pbarSize.height);
	
	//http://jsfiddle.net/EHzcR/2/
	//http://stackoverflow.com/questions/15213898/implementing-div-tooltips-via-d3-within-an-svg-container
	//http://stackoverflow.com/questions/15148481/html-element-inside-svg-not-displayed/15153990#15153990
	
	nodeEnter.append("svg:foreignObject")
		.attr('width', pbarSize.width)
		.attr('height', pbarSize.height)
		.append('xhtml:p')
		.attr("class","pbar")
		.text(function(d) { return d.progress; });
	
	*/
  // Transition nodes to their new position.
  var nodeUpdate = node.transition()
      .duration(duration)
      .attr("transform", function(d) { return "translate(" + d.y + "," + d.x + ")"; });

  nodeUpdate.select("circle")
      .attr("r", 4.5)
      .style("fill", function(d) { return d._children ? "lightsteelblue" : "#fff"; });

  nodeUpdate.select("text")
      .style("fill-opacity", 1);

  // Transition exiting nodes to the parent's new position.
  var nodeExit = node.exit().transition()
      .duration(duration)
      .attr("transform", function(d) { return "translate(" + source.y + "," + source.x + ")"; })
      .remove();

  nodeExit.select("circle")
      .attr("r", 1e-6);

  nodeExit.select("text")
      .style("fill-opacity", 1e-6);

  // Update the links…
  var link = vis.selectAll("path.link")
      .data(tree.links(nodes), function(d) { return d.target.id; });

  // Enter any new links at the parent's previous position.
  link.enter().insert("svg:path", "g")
      .attr("class", "link")
      .attr("d", function(d) {
        var o = {x: source.x0, y: source.y0};
        return diagonal({source: o, target: o});
      })
    .transition()
      .duration(duration)
      .attr("d", diagonal);

  // Transition links to their new position.
  link.transition()
      .duration(duration)
      .attr("d", diagonal);

  // Transition exiting nodes to the parent's new position.
  link.exit().transition()
      .duration(duration)
      .attr("d", function(d) {
        var o = {x: source.x, y: source.y};
        return diagonal({source: o, target: o});
      })
      .remove();

  // Stash the old positions for transition.
  nodes.forEach(function(d) {
    d.x0 = d.x;
    d.y0 = d.y;
  });
}

// Toggle children.
function toggle(d) {
  if (d.children && d.children.length>0) {
    d._children = d.children;
    d.children = null;
  } else {
    d.children = d._children;
    d._children = null;
  }
}

    </script>
  </body>
</html>