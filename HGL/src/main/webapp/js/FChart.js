    function drawChart() {

      var data = new google.visualization.DataTable();
      data.addColumn('number', '가장 최근 입력한 5개의 건강수치');
      data.addColumn('number', '최고 혈압');
      data.addColumn('number', '최저혈압');
      data.addColumn('number', '체중');

      var famNo = document.getElementById("famNo").value;
      var array = new Array()();
      $.ajax({
          url : "FamHealthList.do",
          type: "post",
          data : "famNo="+famNo,
          dataType:"json",
          success:function(data){
             array = data;
          },            
          error:function(){                        
             alert("실패!"); // 통신 실패시에 alert 출력
          }       
       });
      
      for(var i=0; i<array.lenght; i++){
    	  for(var j=0; j<array[i].length; i++){
    		  alert(array[i][j]);
    	  }
      }
      
      /*  $.each(data, function(key, val) { // 배열로 저장
                items.push(val);
               });
       * */
      
      
      data.addRows(
    		  [ [1,  110, 85, 69], [2,  120, 90, 72],
        [3,  110, 95, 73],
        [4,  115.4,   88, 71],
        [5,  125.7, 92, 72],
      ]
    		  
      
      );

      
      
      
      
      
      var options = {
        chart: {
          title: '건강 그래프',
          subtitle: '가장 최근 입력된 5개의 정보'
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