<%@ page import="org.grails.plugins.google.visualization.data.Cell; org.grails.plugins.google.visualization.util.DateUtil" %>
<html>
    <head>
        <title>Google Visualization API plugin</title>
		<meta name="layout" content="main" />
        <script type="text/javascript" src="http://www.google.com/jsapi"></script>
    </head>
       <body>
       <%
          def myDailyActivitiesColumns = [['string', 'Task'], ['number', 'Hours per Day']]
          def myDailyActivitiesData = [['Work', 11], ['Eat', 2], ['Commute', 2], ['Watch TV', 2], ['Sleep', 7]]
          def companyPerformanceColumns = [['string', 'Year'], ['number', 'Sales'], ['number', 'Expenses']]
          def companyPerformanceData = [['2004', 1000, 400], ['2005', 1170, 460], ['2006', 660, 1120], ['2007', 1030, 540]]
          def yearlyExpensesColumns = [['string', 'Year'], ['number', 'Expenses'], ['number', 'Sales']]
          def yearlyExpensesData = [['2004', 1000, 900], ['2005', 1170, 1000], ['2006', 660, 660], ['2007', 1030, 1000]]
          def weightByAgeColumns = [['number', 'Age'], ['number', 'Weight']]
          def weightByAgeData = [[8, 12], [4, 5.5], [11, 14], [4, 5], [3, 3.5], [6.5, 7]]
          def revenueAndLicensesColumns = [['number', 'Revenue'], ['number', 'Licenses']]
          def revenueAndLicensesData = [[435, 132], [438, 131], [512, 137], [460, 142], [491, 140], [487, 139], [552, 147], [511, 146], [505, 151], [509, 149]]
          def gainersLoserColumns = [['string', 'Name'], ['number', ''], ['number', ''], ['number', ''], ['number', '']]
          def gainersLoserData = [['Gainers', 10, 30, 45, 60], ['Losers', 20, 35, 25, 45]]
          def systemPerformanceColumns = [['string', 'Label'], ['number', 'Value']]
          def systemPerformanceData = [['Memory', 80], ['CPU', 55], ['Network', 68]]
          def employeeColumns = [['string', 'Name'], ['string', 'Salary'], ['boolean', 'Full Time Employee']]
          def employeeData = [['Mike', '$10,000', true], ['Jim', '$8,000', false], ['Alice', '$12,500', true], ['Bob', '$7,000', true]]
          def mapColumns = [['number', 'Lat'], ['number', 'Lon'], ['string', 'Name']]
          def mapData = [[37.4232, -122.0853, 'Work'], [37.4289, -122.1697, 'University'], [37.6153, -122.3900, 'Airport'], [37.4422, -122.1731, 'Shopping']]
          def pensColumns = [['date', 'Date'], ['number', 'Sold Pencils'], ['string', 'title1'], ['string', 'text1'], ['number', 'Sold Pens'], ['string', 'title2'], ['string', 'text2']]
          def pensData = [[DateUtil.createDate(2008, 1, 1), 30000, null, null, 40645, null, null], [DateUtil.createDate(2008, 1, 2), 14045, null, null, 20374, null, null], [DateUtil.createDate(2008, 1, 3), 55022, null, null, 50766, null, null], [DateUtil.createDate(2008, 1, 4), 75284, null, null, 14334, 'Out of Stock','Ran out of stock on pens at 4pm'], [DateUtil.createDate(2008, 1, 5), 41476, 'Bought Pens','Bought 200k pens', 66467, null, null], [DateUtil.createDate(2008, 1, 6), 33322, null, null, 39463, null, null]]
          def orgColumns = [['string', 'Name'], ['string', 'Manager'], ['string', 'ToolTip']]
          def orgData = [[new Cell(value: 'Mike', label: 'Mike<div style="color:red; font-style:italic">President</div>'), '', 'The President'], [new Cell(value: 'Jim', label: 'Jim<div style="color:red; font-style:italic">Vice President<div>'), 'Mike', 'VP'], ['Alice', 'Mike', ''], ['Bob', 'Jim', 'Bob Sponge'], ['Carol', 'Bob', '']]
          def populationColumns = [['string', '', 'Country'], ['number', 'Population (mil)', 'a'], ['number', 'Area (km2)', 'b']]
          def populationData = [['CN', 1324, 9640821], ['IN', 1133, 3287263], ['US', 304, 9629091], ['ID', 232, 1904569], ['BR', 187, 8514877]]
          def popularityColumns = [['string', 'Country'], ['number', 'Popularity']]
          def popularityData = [['Germany', 200], ['United States', 300], ['Brazil', 400], ['Canada', 500], ['France', 600], ['RU', 700]]
          def fruitColumns = [['string', 'Fruit'], ['date', 'Date'], ['number', 'Sales'], ['number', 'Expenses'], ['string', 'Location']]
          def fruitData = [['Apples', DateUtil.createDate(1988, 0, 1), 1000, 300, 'East'], ['Oranges', DateUtil.createDate(1988, 0, 1), 1150, 200, 'West'], ['Bananas', DateUtil.createDate(1988, 0, 1), 300, 250, 'West'], ['Apples', DateUtil.createDate(1989, 6, 1), 1200, 400, 'East'], ['Oranges', DateUtil.createDate(1989, 6, 1), 750, 150, 'West'], ['Bananas', DateUtil.createDate(1989, 6, 1), 788, 617, 'West']]
          def marketByRegionColumns = [['string', 'Region'], ['string', 'Parent'], ['number', 'Market trade volume (size)'], ['number', 'Market increase/decrease (color)']]
          def marketByRegionData = [['Global', null, 0, 0], ['America', 'Global', 0, 0], ['Europe', 'Global', 0, 0], ['Asia', 'Global', 0, 0], ['Australia', 'Global', 0, 0], ['Africa', 'Global', 0, 0], ['Brazil', 'America', 11, 10], ['USA', 'America', 52, 31], ['Mexico', 'America', 24, 12], ['Canada', 'America', 16, -23], ['France', 'Europe', 42, -11], ['Germany', 'Europe', 31, -2], ['Sweden', 'Europe', 22, -13], ['Italy', 'Europe', 17, 4], ['UK', 'Europe', 21, -5], ['China', 'Asia', 36, 4], ['Japan', 'Asia', 20, -12], ['India', 'Asia', 40, 63], ['Laos', 'Asia', 4, 34], ['Mongolia', 'Asia', 1, -5], ['Israel', 'Asia', 12, 24], ['Iran', 'Asia', 18, 13], ['Pakistan', 'Asia', 11, -52], ['Egypt', 'Africa', 21, 0], ['S. Africa', 'Africa', 30, 43], ['Sudan', 'Africa', 12, 2], ['Congo', 'Africa', 10, 12], ['Zair', 'Africa', 8, 10]]
       %>
       <script type="text/javascript">
          function selectHandler(e) {
              alert('A table row was selected');
          }
       </script>
       <h2>Google Visualization API Examples</h2>
       <gvisualization:pieCoreChart elementId="piechart" title="My Daily Activities" width="${450}" height="${300}" columns="${myDailyActivitiesColumns}" data="${myDailyActivitiesData}" />
       <gvisualization:imagePieChart elementId="imagepiechart" width="${430}" height="${240}" title="My Daily Activities" columns="${myDailyActivitiesColumns}" data="${myDailyActivitiesData}" />
       <gvisualization:barCoreChart elementId="barchart" title="Company Performance" width="${400}" height="${240}" vAxis="${new Expando(title: 'Year', titleColor: 'red')}" columns="${companyPerformanceColumns}" data="${companyPerformanceData}" />
       <gvisualization:imageBarChart elementId="imagebarchart" width="${400}" height="${240}" min="${0}" columns="${companyPerformanceColumns}" data="${companyPerformanceData}" />
       <gvisualization:columnCoreChart elementId="columnchart" title="Company Performance" width="${400}" height="${240}" hAxis="${new Expando(title: 'Year', titleColor: 'red')}" columns="${companyPerformanceColumns}" data="${companyPerformanceData}" />
       <gvisualization:areaCoreChart elementId="areachart" title="Company Performance" width="${400}" height="${240}" hAxis="${new Expando(title: 'Year', titleColor: 'red')}" columns="${companyPerformanceColumns}" data="${companyPerformanceData}" />
       <gvisualization:imageAreaChart elementId="imageareachart" width="${400}" height="${240}" min="${300}" max="${1400}" title="Yearly Expenses and Sales" columns="${yearlyExpensesColumns}" data="${yearlyExpensesData}" />       
       <gvisualization:lineCoreChart elementId="linechart" width="${400}" height="${240}" title="Company Performance" columns="${companyPerformanceColumns}" data="${companyPerformanceData}" />
       <gvisualization:imageLineChart elementId="imagelinechart" width="${400}" height="${240}" min="${0}" columns="${companyPerformanceColumns}" data="${companyPerformanceData}" />
       <gvisualization:scatterCoreChart elementId="scatterchart" width="${400}" height="${240}" title="Age vs. Weight comparison" hAxis="${new Expando(title: 'Age', minValue: 0, maxValue: 15)}" vAxis="${new Expando(title: 'Weight', minValue: 0, maxValue: 15)}" legend="none" columns="${weightByAgeColumns}" data="${weightByAgeData}" />
       <gvisualization:imageSparkLine elementId="imagesparkline" width="${120}" height="${40}" showAxisLines="${false}" showValueLabels="${false}" labelPosition="left" columns="${revenueAndLicensesColumns}" data="${revenueAndLicensesData}" />
       <gvisualization:imageCandlestickChart elementId="imagecandlestickchart" columns="${gainersLoserColumns}" data="${gainersLoserData}" />
       <gvisualization:gauge elementId="gauge" width="${400}" height="${120}" redFrom="${90}" redTo="${100}" yellowFrom="${75}" yellowTo="${90}" minorTicks="${5}" columns="${systemPerformanceColumns}" data="${systemPerformanceData}" />
       <gvisualization:table elementId="table" width="${400}" height="${130}" columns="${employeeColumns}" data="${employeeData}" select="selectHandler" />
       <gvisualization:map elementId="map" columns="${mapColumns}" data="${mapData}" />
       <gvisualization:annotatedTimeLine elementId="annotatedtimeline" columns="${pensColumns}" data="${pensData}" />
       <gvisualization:orgChart elementId="orgchart" allowHtml="${true}" columns="${orgColumns}" data="${orgData}" />
       <gvisualization:intensityMap elementId="intensitymap" columns="${populationColumns}" data="${populationData}" />
       <gvisualization:geoMap elementId="geomap" columns="${popularityColumns}" data="${popularityData}" />
       <gvisualization:motionChart elementId="motionchart" columns="${fruitColumns}" data="${fruitData}" />
       <gvisualization:treeMap elementId="treemap" minColor="#f00" midColor="#ddd" maxColor="#0d0" headerHeight="${15}" fontColor="black" showScale="${true}" columns="${marketByRegionColumns}" data="${marketByRegionData}" />
       <table cellpadding="2" cellspacing="0">
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/piechart.html">Pie Chart</a>
             </td>
             <td>
                <div id="piechart"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/imagepiechart.html">Pie Chart (Image)</a>
             </td>
             <td>
                <div id="imagepiechart"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/barchart.html">Bar Chart</a>
             </td>
             <td>
                <div id="barchart"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/imagebarchart.html">Bar Chart (Image)</a>
             </td>
             <td>
                <div id="imagebarchart"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/columnchart.html">Column Chart</a>
             </td>
             <td>
                <div id="columnchart"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/areachart.html">Area Chart</a>
             </td>
             <td>
                <div id="areachart"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/imageareachart.html">Area Chart (Image)</a>
             </td>
             <td>
                <div id="imageareachart"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/linechart.html">Line Chart</a>
             </td>
             <td>
                <div id="linechart"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/imagelinechart.html">Line Chart (Image)</a>
             </td>
             <td>
                <div id="imagelinechart"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/scatterchart.html">Scatter Chart</a>
             </td>
             <td>
                <div id="scatterchart"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/imagesparkline.html">Sparkline (Image)</a>
             </td>
             <td>
                <div id="imagesparkline"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/imagecandlestickchart.html">Candlestick Chart (Image)</a>
             </td>
             <td>
                <div id="imagecandlestickchart" style="width: 300px; height: 300px;"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/gauge.html">Gauge</a>
             </td>
             <td>
                <div id="gauge"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/table.html">Table</a>
             </td>
             <td>
                <div id="table"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/map.html">Map</a>
             </td>
             <td>
                <div id="map" style="width: 400px; height: 300px"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/annotatedtimeline.html">Annotated Time Line</a>
             </td>
             <td>
                <div id="annotatedtimeline" style='width: 700px; height: 240px;'></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/orgchart.html">Organizational Chart</a>
             </td>
             <td>
                <div id="orgchart"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/intensitymap.html">Intensity Map</a>
             </td>
             <td>
                <div id="intensitymap"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/geomap.html">Geo Map</a>
             </td>
             <td>
                <div id="geomap"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/motionchart.html">Motion Chart</a>
             </td>
             <td>
                <div id="motionchart"></div>
             </td>
          </tr>
          <tr>
             <td>
                <a href="http://code.google.com/apis/visualization/documentation/gallery/treemap.html">Tree Map</a>
             </td>
             <td>
                <div id="treemap" style="width: 900px; height: 500px;"></div>
             </td>
          </tr>
       </table>
    </body>
</html>