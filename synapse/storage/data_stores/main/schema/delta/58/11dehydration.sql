/* Copyright 2020 The Matrix.org Foundation C.I.C
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

CREATE TABLE IF NOT EXISTS dehydrated_devices(
    user_id TEXT NOT NULL PRIMARY KEY,
    device_id TEXT NOT NULL,
    device_data TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS dehydration_token(
    token TEXT NOT NULL PRIMARY KEY,
    user_id TEXT NOT NULL,
    device_id TEXT NOT NULL,
    login_submission TEXT NOT NULL,
    creation_time BIGINT NOT NULL
);

-- FIXME: index on creation_time to expire old tokens