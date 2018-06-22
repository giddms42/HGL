    function drawChart() {

      var data = new google.visualization.DataTable();

      data.addColumn('number', '가장 최근 입력한 건강수치');
      data.addColumn('number', '최고 혈압');
      data.addColumn('number', '최저혈압');
      data.addColumn('number', '체중');
      
      //([0,최고 혈압, 최저 혈압, 체중],
      //[1,최고 혈압, 최저 혈압, 체중],
      //[2,최고 혈압, 최저 혈압, 체중],
      //[3,최고 혈압, 최저 혈압, 체중],
      //[4,최고 혈압, 최저 혈압, 체중])
  
      var healthName = document.getElementsByName("health"); 
      var healthNameSize = healthName.length;
      var totalCount = (healthNameSize/3); 
      if(totalCount==0){
    	  totalCount=1;
      }

      var arr = new Array(totalCount);  // totalcount 크기의 배열 선언 (현재 5개)
		for(var i=0; i<arr.length; i++){
			arr[i]=new Array(3);  // 이중 배열 선언 (i번지의  배열은 3개)
		}
      
      var count = 0;
      for(var i=0; i<totalCount; i++){  //5 
    	  for(var j=0; j<4; j++){  // 0 1 2 3
    		  if((j%4)==0){ //j가 0일 때. 즉  맨 처음번지에 순서 담김 
    			  arr[i][j] = i; 
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
        width: 450,
        height: 400,
        axes: {
          x: {
            0: {side: 'top'}
          }
        }
      };

      var chart = new google.charts.Line(document.getElementById('graph'));

      chart.draw(data, {backgroundColor : {fill : "#F4F4F4"}});
      chart.draw(data, google.charts.Line.convertOptions(options));
    }