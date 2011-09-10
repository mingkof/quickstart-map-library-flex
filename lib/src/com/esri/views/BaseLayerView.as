///////////////////////////////////////////////////////////////////////////
// Copyright (c) 2010-2011 Esri. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and 
// limitations under the License.
///////////////////////////////////////////////////////////////////////////
package com.esri.views
{

import com.esri.model.Model;

import flash.events.MouseEvent;

import spark.components.supportClasses.ListBase;
import spark.components.supportClasses.SkinnableComponent;

/**
 * @private
 */
public class BaseLayerView extends SkinnableComponent
{
    [Bindable]
    public var model:Model;

    [SkinPart]
    public var buttonBar:ListBase;

    public function BaseLayerView()
    {
        addEventListener(MouseEvent.MOUSE_DOWN, mouseDownHandler);
    }

    private function mouseDownHandler(event:MouseEvent):void
    {
        if (event.currentTarget === this)
        {
            event.stopImmediatePropagation(); // Prevent a map click event from dispatching
        }
    }

}
}
