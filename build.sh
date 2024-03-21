#!/bin/bash

#
# Copyright 2017-2024 Elyra Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

set -e

echo "Versions ..."
node -v
yarn -v

echo "yarn install"
yarn install

echo "yarn run build:commonjs"
yarn run build:commonjs

echo "yarn run build:es"
yarn run build:es

echo "yarn run build:umd"
yarn run build:umd
