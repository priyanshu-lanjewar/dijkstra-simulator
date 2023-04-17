function minDistance(dist:Array, sptSet:Array):int{
	var min = 999999999;
	var min_index:int;
	for(var v=0; v< V; v++){
		if(sptSet[v] == false && dist[v] <= min)
		{
			min = dist[v];
			min_index = v;
		}
	}
	return min_index;
}


function printSolution(dist:Array, n:int, parentt:Array){
	var src=0;
	
	for(var i=1; i<V;i++){
		if(i==desti)
		printPath(parentt,i);
	}
	leastCost = dist[desti];
	cst.text= leastCost;
		trace("dist"+dist);

}

function dijkstra(graph:Array, src:int){
	
	for(var i=0;i<V;i++){
		parentt[0] = -1;
		dist[i] = 999999999;
		sptSet[i] = false;
	}
	
	dist[src]=0;
	
	for(var count = 0; count < V; count++){
		var u = minDistance(dist,sptSet);
		sptSet[u]=true;
		for(var v=0; v<V;v++){
			if(!sptSet[v] && graph[u][v]!=0 && dist[u] + graph[u][v] < dist[v]){
				parentt[u]=v;
				dist[v]=dist[u] + graph[u][v];
			}
		}
	}
	printSolution(dist,V,parentt);
}
