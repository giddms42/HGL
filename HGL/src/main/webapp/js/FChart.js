    function drawChart() {

      var data = new google.visualization.DataTable();
      data.addColumn('number', '가장 최근 입력한 5개의 건강수치');
      data.addColumn('number', '최고 혈압');
      data.addColumn('number', '최저혈압');
      data.addColumn('number', '체중');

      data.addRows([
    	[0,  110, 85, 69],
        [1,  120, 90, 72],
        [2,  110, 95, 73],
        [3,  115.4,   88, 71],
        [4,  125.7, 92, 72],
        [5,  120.9, 95, 70],
        [6,  110.9, 90, 73],
        [7,  120.9, 95, 70],
        [8,  110.9, 90, 73]
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