package.path = "src/?.lua;" .. package.path
local policy = require("policy")

local signal_case_1 = { demand = 56, capacity = 71, latency = 10, risk = 16, weight = 8 }
assert(policy.score(signal_case_1) == 91)
assert(policy.classify(signal_case_1) == "review")
local signal_case_2 = { demand = 72, capacity = 78, latency = 10, risk = 10, weight = 6 }
assert(policy.score(signal_case_2) == 162)
assert(policy.classify(signal_case_2) == "accept")
local signal_case_3 = { demand = 92, capacity = 90, latency = 22, risk = 22, weight = 9 }
assert(policy.score(signal_case_3) == 121)
assert(policy.classify(signal_case_3) == "review")
