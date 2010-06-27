/*
 * Copyright 2007-2010 the original author or authors.
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
package org.as3commons.bytecode.abc.enum {
	import flash.errors.IllegalOperationError;
	import flash.utils.Dictionary;

	public class BaseEnum {

		protected static const items:Dictionary = new Dictionary();

		private var _value:*;

		public function BaseEnum(val:*) {
			super();
			items[val] = this;
			_value = val;
		}

		public function get value():* {
			return _value;
		}

		public function toString():String {
			throw new IllegalOperationError("not implemented in base class");
		}
	}
}