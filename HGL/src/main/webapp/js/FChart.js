    function drawChart() {

      var data = new google.visualization.DataTable();

      data.addColumn('number', '가장 최근 입력한 건강수치');
      data.addColumn('number', '최고 혈압');
      data.addColumn('number', '최저혈압');
      data.addColumn('number', '체중');
  
      var healthName = document.getElementsByName("health");
      var healthNameSize = healthName.length;
      var totalCount = (healthNameSize/3); 
      if(totalCount==0){
    	  totalCount=1;
      }

      var arr = new Array(totalCount); 
		for(var i=0; i<arr.length; i++){
			arr[i]=new Array(3); 
		}
      
      var count = 0;
      for(var i=0; i<totalCount; i++){
    	  for(var j=0; j<4; j++){
    		  if((j%4)==0){
    			  arr[i][j] = i+1;
    		  }else{
    			  arr[i][j] = Number(healthName[count].value);
    			  count=count+1;
    		  }
    	  }
      }
      
      data.addRows(arr);

      var options = {
        chart: {
          title: '건강 그래프',
          subtitle: '가장 최근 입력된 건강 정보'
          
        },
        width: 700,
        height: 500,
        axes: {
          x: {
            0: {side: 'top'}
          }
        }
      };

      var chart = new google.charts.Line(document.getElementById('graph'));

      chart.draw(data, google.charts.Line.convertOptions(options));
    }