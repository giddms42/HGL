    function drawChart(list) {

    	alert(list.length);
      var data = new google.visualization.DataTable();
      data.addColumn('number', '가장 최근 입력한 5개의 건강수치');
      data.addColumn('number', '최고 혈압');
      data.addColumn('number', '최저혈압');
      data.addColumn('number', '체중');


      
      data.addRows([
    	[1,  110, 85, 69],
        [2,  120, 90, 72],
        [3,  110, 95, 73],
        [4,  115.4,   88, 71],
        [5,  125.7, 92, 72],
      ]);

      
      
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