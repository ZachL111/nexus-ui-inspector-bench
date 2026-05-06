package.path = "src/?.lua;" .. package.path
local review = require("domain_review")

local item = { signal = 76, slack = 50, drag = 14, confidence = 93 }
assert(review.score(item) == 253)
assert(review.lane(item) == "ship")
