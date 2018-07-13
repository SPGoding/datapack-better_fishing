# datapack-better_fishing
A Minecraft: Java Edition datapack which improve the fishing system a lot.

[![CBL](http://ww2.sinaimg.cn/large/006b6BKsjw1f35uq9sgn9g30b408ce82.gif)](url=http://www.mcbbs.net/thread-302146-1-1.html)

# How to Block the Vanilla Fishing System?
I replace `minecraft:gameplay/fishing` with an empty loot table, and type `stopsound @a * minecraft:entity.fishing_bobber.splash` in `spgoding:better_fishing/tick`, so that players are not able to get any fish and hear the splash sound.

# And What Does Your _better\_fishing_ Do?
Before the player throws a fishing rod, the _better_fishing_ will check if he/she has any bait(cookie) by function `spgoding:better_fishing/check_bait`.

If the player does have, the fishing rod will be thrown, and attract an random fish to come by function `spgoding:better_fishing/attract_fish`. A fish will be teleported to the player and be killed when it touches the fishing bobber by function `spgoding:better_fishing/kill_fishes`. Eventually, the bait will be cost.

# How about Treasure and Junk?
I add treasure and junk in the loot tables of these kinds of fish also:

- `minecraft:entities/cod`
- `minecraft:entities/pufferfish`
- `minecraft:entities/salmon`
- `minecraft:entities/squid`
- `minecraft:entities/tropical_fish`

So never worry about your enchanted books!

# I Want to Help You Improve It!
It's very welcome to fork this repo, and send me a PR! If you are not similar with GitHub, here's a nice [tutorial](https://akrabat.com/the-beginners-guide-to-contributing-to-a-github-project/)