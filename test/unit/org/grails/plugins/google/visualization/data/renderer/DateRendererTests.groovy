/* Copyright 2010 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.grails.plugins.google.visualization.data.renderer

import grails.test.GrailsUnitTestCase
import org.grails.plugins.google.visualization.util.DateUtil

/**
 * Date data type renderer tests
 *
 * @author <a href='mailto:benjamin.muschko@gmail.com'>Benjamin Muschko</a>
 */
class DateRendererTests extends GrailsUnitTestCase {
    void testRenderValue() {
        def date = DateUtil.removeTime(DateUtil.createDate(1995, Calendar.NOVEMBER, 29))
        assertEquals "new Date(1995, 10, 29, 0, 0, 0, 0)", DateRenderer.instance.renderValue(date).toString()
    }
}
