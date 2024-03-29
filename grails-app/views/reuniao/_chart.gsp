<html>
  <head>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Ano');
        data.addColumn('number', 'Presentes');
        data.addRows(${listaPresenca});

        var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
        chart.draw(data, {width: 1000, height: 240, title: 'Relatório de Presença',
                          hAxis: {title: 'Ano', titleTextStyle: {color: '#FF0000'}}
                         });
      }
    </script>
  </head>
  <body>
    <div id="chart_div"></div>
  </body>
</html>