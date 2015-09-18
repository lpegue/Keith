# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
wines = Wine.create([
	{
	vintage: 2009, 
	predominant_variety: "Merlot",
	country: "France", 
	region: "Bordeaux",
	producer: "Cheval Blanc", 
	vineyard: "Estate"
	},	
	{
	vintage: 2010,
	predominant_variety: "Pinot Noir",
	country: "France", 
	region: "Burgundy",
	producer: "Romanee Conti", 
	vineyard: "Latache"
	},
	{
	vintage: 2010,
	predominant_variety: "Tempernillo",
	country: "Spain", 
	region: "Navarra",
	producer: "Bodega Otazu", 
	vineyard: "Estate"
	},
	{
	vintage: 2014,
	predominant_variety: "Viognier",
	country: "U.S.", 
	region: "California (Central Coast)",
	producer: "Sunstone", 
	vineyard: "Linda's Vineyard"
	},
	{
	vintage: 2011,
	predominant_variety: "Pinot Noir",
	country: "U.S.", 
	region: "California (Santa Lucia Highland)",
	producer: "Bernardus", 
	vineyard: "Sarbanes"
	},
	{
	vintage: 2013,
	predominant_variety: "Chardonnay",
	country: "U.S.", 
	region: "California (Napa Valley)",
	producer: "Domaine Carneros", 
	vineyard: "La Terre Promise"
	},
	{
	vintage: 2007,
	predominant_variety: "Petite Sirah",
	country: "U.S.", 
	region: "California (Napa Valley)",
	producer: "Spellbound", 
	vineyard: "Estate"
	}
	])

