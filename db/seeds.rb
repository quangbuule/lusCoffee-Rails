# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dishesRaw = [
  {
    name: "Expresso",
    description: "Espresso (/ɛˈsprɛsoʊ/, Italian: [esˈprɛsso]) is coffee brewed by forcing a small amount of nearly boiling water under pressure through finely ground coffee beans. Espresso is generally thicker than coffee brewed by other methods, has a higher concentration of suspended and dissolved solids, and has crema on top (a foam with a creamy consistency). As a result of the pressurized brewing process, the flavors and chemicals in a typical cup of espresso are very concentrated. Espresso is also the base for other drinks such as a caffè latte, cappuccino, caffè macchiato, cafe mocha, or caffè Americano. Espresso has more caffeine per unit volume than most coffee beverages, but because the usual serving size is much smaller, the total caffeine content is less than a mug of standard brewed coffee, contrary to a common belief. Although the actual caffeine content of any coffee drink varies by size, bean origin, roast method and other factors, the caffeine content of \"typical\" servings of espresso vs. drip brew are 120 to 170 mg vs. 150 to 200 mg.",
    section: :espresso,
    price: 20000,
    image_url: "http://caphesach.vn/uploads/news/2013_07/espresso1.jpg"
  },
  {
    name: "Capuchino",
    description: "A cappuccino About this sound /ˌkæpʉˈtʃiːnoʊ/ (help·info) (/ˌkæpᵿˈtʃiːnoʊ/; Italian pronunciation: [kapputˈtʃiːno]) is an Italian coffee drink that is traditionally prepared with espresso, hot milk and steamed milk foam.\nCream may be used instead of milk and is often topped with cinnamon. It is typically smaller in volume than a caffè latte, with a thicker layer of micro foam.\nThe name comes from the Capuchin friars, referring to the colour of their habits, and in this context referring to the colour of the beverage when milk is added in small portion to dark, brewed coffee (today mostly espresso). The physical appearance of a modern cappuccino with espresso créma and steamed milk is a result of a long evolution of the drink.",
    section: :espresso,
    price: 25000,
    image_url: "https://s-media-cache-ak0.pinimg.com/736x/b0/17/90/b01790371a5dd22b60daadf2183f737e.jpg"
  },
  {
    name: "Latte",
    description: "A latte (/ˈlæteɪ/) is a coffee drink made with espresso and steamed milk.\nThe term as used in English is a shortened form of the Italian caffè latte [kafˈfɛ lˈlatte], caffelatte [kaffeˈlatte] or caffellatte [kaffelˈlatte], which means \"milk coffee\". The word is also sometimes spelled latté or lattè in English with different kinds of accent marks, which can be a hyperforeignism or a deliberate attempt to indicate that the word is not pronounced according to the rules of English orthography.\nIn northern Europe and Scandinavia the term café au lait has traditionally been used for the combination of espresso and milk, but this term is used in the US for brewed coffee and scalded milk. In France, caffè latte is mostly known from the original italian name of the drink (caffe' latte or caffelatte); a combination of espresso and steamed milk equivalent to a \"latte\" is in French called grand crème and in German Milchkaffee or Melange.",
    section: :espresso,
    price: 26000,
    image_url: "http://files.differencebetween.com/wp-content/uploads/2014/08/cafe-latte.jpg"
  },
  {
    name: "Mocha",
    section: :espresso,
    description: "Like a caffè latte, caffè mocha is based on espresso and hot milk, but with added chocolate, typically in the form of sweet cocoa powder, although many varieties use chocolate syrup. Mochas can contain dark or milk chocolate.\nCaffè mocha, in its most basic formulation, can also be referred to as hot chocolate with (e.g., a shot of) espresso added. Like cappuccino, caffè mochas typically contain the distinctive milk froth on top, although, as is common with hot chocolate, they are sometimes served with whipped cream instead. They are usually topped with a dusting of either cinnamon or cocoa powder, and marshmallows may also be added on top for flavor and decoration.\nA variant is white caffè mocha, made with white chocolate instead of milk or dark. There are also variants of the drink that mix the two syrups; this mixture is referred to by several names, including black and white mocha, marble mocha, tan mocha, tuxedo mocha, and zebra.",
    price: 27000,
    image_url: "http://cdn1.my.opensnap.com/azsg/snapphoto/photo/L8/GRRK/3B9FZXFBA01621168498DFl.jpg"
  },
  {
    name: "Frappucino",
    description: "Frappuccino is a trademark for a line of frozen coffee beverages sold by Starbucks. It consists of coffee or other base ingredient (e.g., strawberries and cream), blended with ice and other various ingredients, usually topped with whipped cream. Frappuccinos are also sold as bottled coffee beverages in stores and from vending machines.",
    section: :ice_blended,
    price: 29000,
    image_url: "http://www.cs.montana.edu/paxton/145/fall2011/gueguen_rhinard/images/mochacoconutfrappuccino.jpg"
  },
  {
    name: "Mocha ice blended",
    description: "Like a caffè latte, caffè mocha is based on espresso and hot milk, but with added chocolate, typically in the form of sweet cocoa powder, although many varieties use chocolate syrup. Mochas can contain dark or milk chocolate.\nCaffè mocha, in its most basic formulation, can also be referred to as hot chocolate with (e.g., a shot of) espresso added. Like cappuccino, caffè mochas typically contain the distinctive milk froth on top, although, as is common with hot chocolate, they are sometimes served with whipped cream instead. They are usually topped with a dusting of either cinnamon or cocoa powder, and marshmallows may also be added on top for flavor and decoration.\nA variant is white caffè mocha, made with white chocolate instead of milk or dark. There are also variants of the drink that mix the two syrups; this mixture is referred to by several names, including black and white mocha, marble mocha, tan mocha, tuxedo mocha, and zebra.",
    section: :ice_blended,
    price: 32000,
    image_url: "http://cdn1.sg.opensnap.com/azsg/snapphoto/photo/LB/GU69/3BQKI9DCE5E4C0005EE047l.jpg"
  },
  {
    name: "Matcha",
    description: "Matcha (抹茶?, pronounced [mat.tɕa][n 1]) is finely ground powder of specially grown and processed green tea. It is special in two aspects of farming and processing: The green tea plants for matcha are shade-grown for about three weeks before harvest, and the stems and veins are removed in processing.\nThe traditional Chinese and Japanese tea ceremony centers on the preparation, serving, and drinking of matcha. In modern times, matcha also has come to be used to flavour and dye foods such as mochi and soba noodles, green tea ice cream, and a variety of wagashi (Japanese confectionery). Often, the former is referred to as ceremonial-grade matcha, meaning that the matcha powder is good enough for tea ceremony. The latter is referred to as culinary-grade matcha. However, there is no standard industry definition or requirements for either. Different matcha manufacturers might provide their own definitions.",
    section: :coffee_alternative,
    price: 27000,
    image_url: "http://matchagreenteadrinks.co.uk/images/img_matcha_tea_2250.jpg"
  },
  {
    name: "Hot chocolate",
    description: "Hot chocolate, also known as hot cocoa, is a heated beverage consisting of shaved chocolate, melted chocolate or cocoa powder, heated milk or water, and often sugar. Hot chocolate made with melted chocolate is sometimes called drinking chocolate, characterized by less sweetness and a thicker consistency.\nThe first chocolate beverage is believed to have been created by the Aztecs around 2,000 years ago, and a cocoa beverage was an essential part of Aztec culture by 1400 AD. The beverage became popular in Europe after being introduced from Mexico in the New World and has undergone multiple changes since then. Until the 19th century, hot chocolate was even used medicinally to treat ailments such as liver and stomach diseases. Today, hot chocolate is consumed throughout the world and comes in multiple variations including the very thick cioccolata densa served in Italy and chocolate a la taza served in Spain, and the thinner hot cocoa consumed in the United States.",
    section: :coffee_alternative,
    price: 25000,
    image_url: "http://4.bp.blogspot.com/-gNVFAWRKoek/U2WynHdS3tI/AAAAAAAAA20/lD1NI0Lua8E/s1600/photo+2.JPG"
  },
]

Dish.create(dishesRaw)
