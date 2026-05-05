package.path = "src/?.lua;" .. package.path
local policy = require("policy")

local signal_case_1 = { demand = 74, capacity = 103, latency = 19, risk = 23, weight = 8 }
assert(policy.score(signal_case_1) == 76)
assert(policy.classify(signal_case_1) == "review")
local signal_case_2 = { demand = 74, capacity = 72, latency = 9, risk = 6, weight = 9 }
assert(policy.score(signal_case_2) == 172)
assert(policy.classify(signal_case_2) == "review")
local signal_case_3 = { demand = 73, capacity = 82, latency = 26, risk = 24, weight = 13 }
assert(policy.score(signal_case_3) == 30)
assert(policy.classify(signal_case_3) == "review")
