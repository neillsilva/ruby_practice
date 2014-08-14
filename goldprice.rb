price_per_ounce = 1336

def price_of_gold(ounces)
	ounces * price_per_ounce
end

def price_of_gold_from_pounds(pounds)
	(pounds * 16) * price_per_ounce
end

