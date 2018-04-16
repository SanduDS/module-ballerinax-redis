// Copyright (c) 2018 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/redis;

@final string REDIS_HOST = "localhost";

function testHDel () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    
    var result = conn -> hDel("testHDelKey", ["testHDelField1", "testHDelField2", "testHDelField3"]);
    _ = conn -> quit();
    return result;
}

function testHGet () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> hGet("testHGetKey", "testHGetField1");
    _ = conn -> quit();
    return result;
}

function testHExists () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> hExists("testHExistsKey", "testHExistsField1");
    _ = conn -> quit();
    return result;
}

function testHGetAll () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> hGetAll("testHGetAllKey");
    _ = conn -> quit();
    return result;
}

function testHIncrBy () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> hIncrBy("testHIncrByKey", "testHIncrByField1", 2);
    _ = conn -> quit();
    return result;
}

function testHIncrByFloat () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> hIncrByFloat("testHIncrByFloatKey", "testHIncrByFloatField1", 0.2f);
    _ = conn -> quit();
    return result;
}

function testHKeys () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> hKeys("testHKeysKey");
    _ = conn -> quit();
    return result;
}

function testHLen () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> hLen("testHLenKey");
    _ = conn -> quit();
    return result;
}

function testHMGet () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> hMGet("testHMGetKey", ["testHMGetField1", "testHMGetField2", "testHMGetField3"]);
    _ = conn -> quit();
    return result;
}

function testHMSet () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    map fieldValueMap = {testHMSetField1:"testHMSetValue1", testHMSetField2:"testHMSetValue2"};
    var result = conn -> hMSet("testHMSetKey", fieldValueMap);
    _ = conn -> quit();
    return result;
}

function testHSet () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> hSet("testHSetKey", "testHSetField1", "testHSetValue1");
    _ = conn -> quit();
    return result;
}

function testHSetNx () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> hSet("testHSetNxKey", "testHSetNxField1", "testHSetNxValue1");
    _ = conn -> quit();
    return result;
}

function testHStrln () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> hStrln("testHStrlnKey", "testHStrlnField1");
    _ = conn -> quit();
    return result;
}

function testHVals () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> hVals("testHValsKey");
    _ = conn -> quit();
    return result;
}