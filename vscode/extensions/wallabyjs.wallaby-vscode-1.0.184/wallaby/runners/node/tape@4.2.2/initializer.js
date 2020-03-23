/*
 * Wallaby.js - v1.0.859
 * https://wallabyjs.com
 * Copyright (c) 2014-2020 Wallaby.js - All Rights Reserved.
 *
 * This source code file is a part of Wallaby.js and is a proprietary (closed source) software.

 * IMPORTANT:
 * Wallaby.js is a tool made by software developers for software developers with passion and love for what we do.
 * Pirating the tool is not only illegal and just morally wrong,
 * it is also unfair to other fellow programmers who are using it legally,
 * and very harmful for the tool and its future.
 */
var tracer=global.$_$tracer,tape,tapeInstalled=!1;try{tape=require("tape"),tapeInstalled=!0}catch(e){tracer.start(function(){tracer.reportGlobalError("tape node module is not found or the version is not supported, missing `npm install tape --save-dev`?\n"+(e.stack||""))}),module.exports={init:function(){return{configure:function(){}}}}}if(tapeInstalled){var testFiles=[],harness=tape.getHarness({exit:!1,objectMode:!0}),results=harness._results;tracer.start(function(){testFiles.forEach(function(e){require(e)});var e=tracer.initialSpecId(),t=global.$_$session,n=!1,r=function(){return t!==global.$_$session},i=function(){n||r()||(n=!0,tracer.complete())},o="undefined"!=typeof setImmediate?setImmediate:process.nextTick,s=function(e){if(!e._only)return e.tests.shift();do{var t=e.tests.shift();if(t&&e._only===t.name)return t}while(0!==e.tests.length)},a=function(t){if(!r()){var n=t._cb;t._cb=function(){tracer.specSyncStart();try{n(t)}catch(e){t.fail(e.message,{error:e}),t.end(e)}finally{tracer.specSyncEnd()}},t.on("prerun",function(){r()||(t._id=++e,t._timeout=t._timeout||1e3,t._time=(new tracer._Date).getTime(),t._log=[],tracer.specStart(t._id,t.name))}),t.on("result",function(e){r()||t._log.push(e)}),t.on("test",function(e){r()||a(e)}),t.once("end",function(){if(!r()){var e=tracer.specEnd(),n={id:t._id,timeRange:e,name:t.name,suite:[],skipped:t._skip,time:(new tracer._Date).getTime()-t._time,log:[],hook:!1};if(!n.skipped)for(var i=0,o=t._log.length;i<o;i++){var s=t._log[i];if(n.success=n.success&&s.ok,!s.ok&&s.error){var a={message:s.error.message,stack:s.actual&&s.actual.stack||s.error.stack};s.showDiff="equal"===s.operator||"notEqual"===s.operator||"deepEqual"===s.operator||"deepLooseEqual"===s.operator||"notDeepEqual"===s.operator||"notDeepLooseEqual"===s.operator;var l=s.actual,c=s.expected;tracer.setAssertionData(s,a),"fail"!==s.operator&&"error"!==s.operator&&(a.message="Actual: "+tracer._inspect(l,5)+"\nExpected: "+tracer._inspect(c,5)),n.log.push(a)}}n.log.length||delete n.log,tracer.result(n)}})}},l=function(){for(var e;(e=s(results))&&!r();)if(a(e),e.run(),!e.ended)return e.once("end",function(){!r()&&o(l)});results.emit("done")};tracer.started({total:"unknown number of"}),results.once("done",i),l()}),module.exports={init:function(e){return testFiles=e,tape}}}