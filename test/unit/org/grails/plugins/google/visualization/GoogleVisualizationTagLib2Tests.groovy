package org.grails.plugins.google.visualization

import static org.junit.Assert.*

import grails.test.GrailsUnitTestCase
import grails.test.mixin.support.*
import grails.test.mixin.web.GroovyPageUnitTestMixin

/**
 * It checks a javascript code generated by GoogleVisualizationTagLib.
 */
@TestMixin(GroovyPageUnitTestMixin)
class GoogleVisualizationTagLib2Tests {
	
    void setUp() {
    }

    void tearDown() {
    }

    void testIntensityMap() {
		mockTagLib(GoogleVisualizationTagLib)
		def columns = [['string', 'Country'], ['number', 'Number']]
		def data = [['US', 4357], ['DE', 5201]]
		def colors = ['ffff00']
		def WHITE_SPACES = "\\s*"
		//def regex = "(?s)(.*)"
		def regex = "(?s)" + WHITE_SPACES
		regex += "<script type=\"text/javascript\">" + WHITE_SPACES
		regex += "google\\.load\\(\\'visualization\\'\\, \\'1\\'\\, \\{\\'packages\\'\\: \\[\\'intensitymap\\'\\]\\}\\);" + WHITE_SPACES
		regex += "google\\.setOnLoadCallback\\(drawMap\\);" + WHITE_SPACES
		regex += "function drawMap\\(\\) \\{" + WHITE_SPACES
		regex += "map_data = new google\\.visualization\\.DataTable\\(\\);" + WHITE_SPACES
		regex += "map_data\\.addColumn\\(\\'string\\'\\, \\'Country\\'\\);" + WHITE_SPACES
		regex += "map_data\\.addColumn\\(\\'number\\'\\, \\'Number\\'\\);" + WHITE_SPACES
		regex += "map_data\\.addRow\\(\\[\\'US\\'\\, 4357\\]\\);" + WHITE_SPACES
		regex += "map_data\\.addRow\\(\\[\\'DE\\'\\, 5201\\]\\);" + WHITE_SPACES
		regex += "map = new google\\.visualization\\.IntensityMap\\(document\\.getElementById\\(\\'map\\'\\)\\);" + WHITE_SPACES
		regex += "map\\.draw\\(map_data\\, \\{colors\\: \\[\\'ffff00\\'\\]\\, height\\: 150\\, width\\: 150\\}\\);" + WHITE_SPACES
		regex += "\\}" + WHITE_SPACES
		regex += "</script>" + WHITE_SPACES
		assertOutputMatches (~regex
				, '<gvisualization:intensityMap name="map" elementId="map" columns="${columns}" data="${data}" colors="${colors}" height="${150}" width="${150}"/>'
				, [columns : columns, data : data, colors : colors]
			)
//		def NEW_LINE = System.getProperty("line.separator")
//		assertOutputEquals (NEW_LINE
//				+ NEW_LINE
//				+ NEW_LINE
//				+ "<script type=\"text/javascript\">" + NEW_LINE
//				+ "    google.load('visualization', '1', {'packages': ['intensitymap']});" + NEW_LINE
//				+ "    google.setOnLoadCallback(drawMap);" + NEW_LINE
//				+ "    " + NEW_LINE
//				+ "    function drawMap() {" + NEW_LINE
//				+ "        map_data = new google.visualization.DataTable();" + NEW_LINE
//				+ "        " + NEW_LINE
//				+ "        map_data.addColumn('string', 'Country');" + NEW_LINE
//				+ "        " + NEW_LINE
//				+ "        map_data.addColumn('number', 'Number');" + NEW_LINE
//				+ "        " + NEW_LINE
//				+ "        " + NEW_LINE
//				+ "        map_data.addRow(['US', 4357]);" + NEW_LINE
//				+ "        " + NEW_LINE
//				+ "        map_data.addRow(['DE', 5201]);" + NEW_LINE
//				+ "        " + NEW_LINE
//				+ "      " + NEW_LINE
//				+ "        map = new google.visualization.IntensityMap(document.getElementById('map'));" + NEW_LINE
//				+  NEW_LINE
//				+ "        " + NEW_LINE
//				+ "" + NEW_LINE
//				+  NEW_LINE
//				+ NEW_LINE
//				+ "        " + NEW_LINE
//				+ "        map.draw(map_data, {colors: ['ffff00'], height: 150, width: 150});" + NEW_LINE
//				+ NEW_LINE
//				+ "        " + NEW_LINE
//				+ "    }" + NEW_LINE
//				+ "</script>"
//				, '<gvisualization:intensityMap name="map" elementId="map" columns="${columns}" data="${data}" colors="${colors}" height="${150}" width="${150}"/>'
//				, [columns : columns, data : data, colors : colors]
//			)
    }
}
