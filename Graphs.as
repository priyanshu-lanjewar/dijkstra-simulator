package  {
	
	public class Graphs {
		var vertices:int;
		var adjList:Array;
		public function Graphs(vertices:int) {
			this.vertices = vertices;
			
			adjList = new Array();
			
			for(var i=0;i<vertices;i++){
				adjList[i] = new Array();
			}
		}
		
		function addEdge(src:int,dest:int,wt;int){
			var edge:Edge =  new Edge(src,dest,wt);
			adjList[src].push(edge);
			
			edge = new Edge(dest,src,wt);
			adjList[dest].push(edge);
			
		}

	}
	
}
