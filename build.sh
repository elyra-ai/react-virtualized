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

echo "npm install --legacy-peer-deps"
npm install --legacy-peer-deps

pwd
ls -la
which postcss
postcss --help
#echo "npm run build"
yarn run clean:commonjs
echo "cross-env"
cross-env NODE_ENV=commonjs babel source --out-dir dist/commonjs
#postcss ./source/styles.css -o styles.css --use autoprefixer

#npm run build
