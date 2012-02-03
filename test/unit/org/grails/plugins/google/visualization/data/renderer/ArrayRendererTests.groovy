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

/**
 * Array data type renderer tests
 *
 * @author <a href='mailto:benjamin.muschko@gmail.com'>Benjamin Muschko</a>
 */
class ArrayRendererTests extends GrailsUnitTestCase {
    void testRenderValue() {
        assertEquals "['a', 1, true]", ArrayRenderer.instance.renderValue(['a', 1, true]).toString()
    }

    void testRenderValueForObjectArray() {
        assertEquals "[{color: '#FF0000', darker: '#680000'}, {color: 'cyan', darker: 'deepskyblue'}]", ArrayRenderer.instance.renderValue([new Expando(color:'#FF0000', darker:'#680000'), new Expando(color:'cyan', darker:'deepskyblue')]).toString()
    }
}
