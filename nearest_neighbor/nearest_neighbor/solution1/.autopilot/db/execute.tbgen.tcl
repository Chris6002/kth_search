set C_TypeInfoList {{ 
"execute" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"points": [[], {"array": [ {"array": [ {"scalar": "int"}, [3]]}, [100]]}] }, {"q": [[], {"array": [ {"scalar": "int"}, [3]]}] }, {"result": [[], {"array": [ {"scalar": "int"}, [2]]}] }],["0"],""],
 "0": [ "query", [[], {"array": [ {"scalar": "int"}, [3]]}],""]
}}
set moduleName execute
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {execute}
set C_modelType { void 0 }
set C_modelArgList {
	{ points int 32 regular {array 300 { 1 1 } 1 1 }  }
	{ q int 32 regular {array 3 { 1 3 } 1 1 }  }
	{ result int 32 regular {array 2 { 2 0 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "points", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "points","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 99,"step" : 1},{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "q", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "q","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "result", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "result","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ points_address0 sc_out sc_lv 9 signal 0 } 
	{ points_ce0 sc_out sc_logic 1 signal 0 } 
	{ points_q0 sc_in sc_lv 32 signal 0 } 
	{ points_address1 sc_out sc_lv 9 signal 0 } 
	{ points_ce1 sc_out sc_logic 1 signal 0 } 
	{ points_q1 sc_in sc_lv 32 signal 0 } 
	{ q_address0 sc_out sc_lv 2 signal 1 } 
	{ q_ce0 sc_out sc_logic 1 signal 1 } 
	{ q_q0 sc_in sc_lv 32 signal 1 } 
	{ result_address0 sc_out sc_lv 1 signal 2 } 
	{ result_ce0 sc_out sc_logic 1 signal 2 } 
	{ result_we0 sc_out sc_logic 1 signal 2 } 
	{ result_d0 sc_out sc_lv 32 signal 2 } 
	{ result_q0 sc_in sc_lv 32 signal 2 } 
	{ result_address1 sc_out sc_lv 1 signal 2 } 
	{ result_ce1 sc_out sc_logic 1 signal 2 } 
	{ result_we1 sc_out sc_logic 1 signal 2 } 
	{ result_d1 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "points_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "points", "role": "address0" }} , 
 	{ "name": "points_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "points", "role": "ce0" }} , 
 	{ "name": "points_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "points", "role": "q0" }} , 
 	{ "name": "points_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "points", "role": "address1" }} , 
 	{ "name": "points_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "points", "role": "ce1" }} , 
 	{ "name": "points_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "points", "role": "q1" }} , 
 	{ "name": "q_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "q", "role": "address0" }} , 
 	{ "name": "q_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q", "role": "ce0" }} , 
 	{ "name": "q_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q", "role": "q0" }} , 
 	{ "name": "result_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "address0" }} , 
 	{ "name": "result_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "ce0" }} , 
 	{ "name": "result_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "we0" }} , 
 	{ "name": "result_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result", "role": "d0" }} , 
 	{ "name": "result_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result", "role": "q0" }} , 
 	{ "name": "result_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "address1" }} , 
 	{ "name": "result_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "ce1" }} , 
 	{ "name": "result_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "we1" }} , 
 	{ "name": "result_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "execute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "211", "EstimateLatencyMax" : "211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "points", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "q", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "result", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "query", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.query_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	execute {
		points {Type I LastRead 9 FirstWrite -1}
		q {Type I LastRead 5 FirstWrite -1}
		result {Type IO LastRead 10 FirstWrite 4}
		query {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "211", "Max" : "211"}
	, {"Name" : "Interval", "Min" : "212", "Max" : "212"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	points { ap_memory {  { points_address0 mem_address 1 9 }  { points_ce0 mem_ce 1 1 }  { points_q0 mem_dout 0 32 }  { points_address1 mem_address 1 9 }  { points_ce1 mem_ce 1 1 }  { points_q1 mem_dout 0 32 } } }
	q { ap_memory {  { q_address0 mem_address 1 2 }  { q_ce0 mem_ce 1 1 }  { q_q0 mem_dout 0 32 } } }
	result { ap_memory {  { result_address0 mem_address 1 1 }  { result_ce0 mem_ce 1 1 }  { result_we0 mem_we 1 1 }  { result_d0 mem_din 1 32 }  { result_q0 mem_dout 0 32 }  { result_address1 mem_address 1 1 }  { result_ce1 mem_ce 1 1 }  { result_we1 mem_we 1 1 }  { result_d1 mem_din 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
