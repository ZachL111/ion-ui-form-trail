package.path = "src/?.lua;" .. package.path
local review = require("domain_review")

local item = { signal = 43, slack = 54, drag = 17, confidence = 64 }
assert(review.score(item) == 153)
assert(review.lane(item) == "ship")
