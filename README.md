# Random Event Datapack

Random Event is a Minecraft Java 1.21.5 datapack for a survival challenge. When enabled, it triggers random positive or negative events at changing intervals.

## What It Does

- Starts and stops a timed random event challenge.
- Runs one event every 15-60 seconds.
- Switches event pools by progression stage: Overworld, Nether, Stronghold Hunt, and The End.
- Includes thirty-six events, with several Ender Dragon fight events only appearing in The End.
- Adds optional shared team tasks with clickable time choices in chat.
- Automatically stops after the Ender Dragon is defeated.
- Shows a sidebar with current stage, challenge state, current event, and seconds until the next event.
- Avoids permanent terrain destruction.

## Install In Minecraft

1. Open Minecraft Java 1.21.5.
2. Create or open a world.
3. Open the world folder, then open `datapacks`.
4. Copy the `RandomEvent` folder into `datapacks`.
5. Run `/reload` in game.
6. Run `/datapack list enabled` and confirm the datapack is listed.

## Commands

Use these `/trigger` commands after `/reload`:

```mcfunction
/trigger ping
/trigger start
/trigger stop
/trigger event
/trigger uninstall
```

Command meanings:

- `ping`: test whether the datapack is ready.
- `start`: start the random event timer.
- `stop`: stop the timer.
- `event`: trigger one event immediately.
- `uninstall`: remove this datapack's scoreboards.

Use `/trigger ping` first when testing. If it works, the datapack command triggers are ready. `/trigger start` also sends clickable team task choices to all players.

Optional task triggers are normally selected by clicking chat buttons, but they are also plain trigger commands:

```mcfunction
/trigger task set 1
/trigger task set 2
/trigger task set 3
/trigger task set 4
/trigger task set 5
/trigger task set 6
/trigger task set 7
/trigger task set 8
/trigger task set 9
```

Task numbers match the chat menu from top to bottom:

- 1-3: Nether Rush 15, 20, 30 minutes.
- 4-6: Eye Spy 30, 40, 60 minutes.
- 7-9: Crystal Breaker 2, 4, 6 minutes.

## Progression Stages

The datapack is built around beating the Ender Dragon.

- Stage 1, Overworld: from `/trigger start` until any player enters the Nether.
- Stage 2, Nether: after any player gets `minecraft:story/enter_the_nether`.
- Stage 3, Stronghold Hunt: after any player gets Eye Spy, `minecraft:story/follow_ender_eye`.
- Stage 4, The End: after any player enters The End.
- Victory: after any player gets `minecraft:end/kill_dragon`; random events stop automatically.

## Team Tasks

Tasks are shared by the whole server team. One player clicking a task starts that task for everyone.

- Nether Rush: choose 15, 20, or 30 minutes from `/trigger start` to entering the Nether. Rewards are gold blocks, golden apples, fire resistance, and an extra fire resistance potion for the fastest tier.
- Eye Spy: choose 30, 40, or 60 minutes from `/trigger start` to getting the Eye Spy advancement. Shorter time gives better rewards.
- Crystal Breaker: choose 2, 4, or 6 minutes. The timer starts when the team enters The End, and rewards strength plus health boost when no End crystals remain.

Task rewards help the whole team, such as fire resistance, golden apples, random enchantments, experience, or strength. Failed tasks apply a short team penalty.

## Stage Event Pools

Each stage uses equal probability inside its own pool. For example, if a stage has 15 events, each listed event has a `1/15 = 6.67%` chance whenever an event triggers in that stage.

Stage 1, Overworld: 17 events, each `5.88%`

- Blindness Fog
- Mob Ambush
- Gravity Slip
- Weakness Wave
- Starving Curse
- Creeper Drop
- Inventory Weight
- Frozen Feet
- Cobweb Snare
- Rotten Snack
- Lucky Relief
- Guardian Blessing
- Swift Wind
- Supply Cache
- Golden Hour
- Miner's Grace
- Diamond Spark

Stage 2, Nether: 15 events, each `6.67%`

- Mob Ambush
- Weakness Wave
- Starving Curse
- Dark Pulse
- Fire Panic
- Rotten Snack
- Hostile Bell
- Arrow Storm
- Brute Raid
- Sky Return
- Lucky Relief
- Guardian Blessing
- Golden Hour
- Random Enchantment
- Golden Apple Gift

Stage 3, Stronghold Hunt: 16 events, each `6.25%`

- Blindness Fog
- Mob Ambush
- Gravity Slip
- Weakness Wave
- Dark Pulse
- Cobweb Snare
- Arrow Storm
- Ender Panic
- Silverfish Crack
- Sky Return
- Lucky Relief
- Swift Wind
- Second Chance
- Random Enchantment
- Golden Apple Gift
- Ender Pearls

Stage 4, The End: 15 events, each `6.67%`

- Gravity Slip
- Weakness Wave
- Dark Pulse
- Arrow Storm
- Ender Panic
- Sky Return
- Ender Swarm
- Dragon Breath Bloom
- Void Pressure
- Crystal Pulse
- Feather Fall
- End Resistance
- Golden Apple Gift
- Ender Pearls
- Arrow Refill

## Event Pool

Negative events:

- blindness fog
- mob ambush
- gravity slip
- weakness wave
- starving curse
- creeper drop
- inventory weight
- frozen feet
- dark pulse
- cobweb snare
- fire panic
- rotten snack
- hostile bell
- arrow storm
- ender panic
- silverfish crack
- brute raid
- sky return
- ender swarm
- dragon breath bloom
- void pressure
- crystal pulse

Positive events:

- lucky relief
- guardian blessing
- swift wind
- supply cache
- golden hour
- miner's grace
- second chance
- enchanted manual
- golden apple gift
- diamond spark
- ender pearls
- feather fall
- end resistance
- arrow refill

Mob Ambush has four variants:

- 3 cave spiders
- 2 chicken jockeys
- 3 wither skeletons
- 6-8 mixed zombies, bow skeletons, and spiders

Ambush mobs are spread around players after spawning so they are less likely to be trapped inside walls.

## Datapack Structure

```text
RandomEvent/
  pack.mcmeta
  data/
    minecraft/
      tags/
        function/
          load.json
          tick.json
    random_event/
      function/
        load.mcfunction
        tick.mcfunction
        admin/
          ping.mcfunction
          start.mcfunction
          stop.mcfunction
          event.mcfunction
          uninstall.mcfunction
        internal/
          enable_triggers.mcfunction
          handle_triggers.mcfunction
          return_from_sky.mcfunction
          run_selected_event.mcfunction
          set_random_cooldown.mcfunction
          spread_mobs.mcfunction
          trigger_event.mcfunction
          update_sidebar.mcfunction
          event_pools/
            overworld.mcfunction
            nether.mcfunction
            stronghold.mcfunction
            end.mcfunction
        tasks/
          reset.mcfunction
          show_menu.mcfunction
          tick.mcfunction
          update_stage.mcfunction
          select/
            *.mcfunction
          complete/
            *.mcfunction
          fail/
            *.mcfunction
        events/
          *.mcfunction
          enchanted_manual/
            *.mcfunction
          mob_ambush/
            *.mcfunction
      tags/
        item/
          enchanted_manual/
            *.json
```

Important files:

- `pack.mcmeta`: datapack metadata and Minecraft pack format.
- `data/minecraft/tags/function/load.json`: runs `random_event:load` after `/reload`.
- `data/minecraft/tags/function/tick.json`: runs `random_event:tick` every game tick.
- `data/random_event/function/load.mcfunction`: creates scoreboards, trigger commands, fixed-order sidebar rows, and sidebar teams.
- `data/random_event/function/tick.mcfunction`: handles trigger input, counts down the timer, and fires events.
- `data/random_event/function/internal/set_random_cooldown.mcfunction`: rolls the next interval from 15-60 seconds.
- `data/random_event/function/internal/spread_mobs.mcfunction`: spreads ambush mobs around players after summoning.
- `data/random_event/function/internal/return_from_sky.mcfunction`: returns players from the sky return event after 15 seconds.
- `data/random_event/function/internal/update_sidebar.mcfunction`: updates stable sidebar row suffixes while keeping row scores fixed.
- `data/random_event/function/internal/trigger_event.mcfunction`: refreshes the current stage and dispatches to that stage's event pool.
- `data/random_event/function/internal/event_pools/`: stage-specific equal-probability event pools.
- `data/random_event/function/internal/run_selected_event.mcfunction`: maps event IDs to event files.
- `data/random_event/function/tasks/`: shared team task selection, timers, completion checks, failure checks, and victory stop logic.
- `data/random_event/function/events/`: one `.mcfunction` file per random event.
- `data/random_event/function/events/enchanted_manual/`: helper functions for selecting and enchanting eligible player items.
- `data/random_event/tags/item/enchanted_manual/`: item tag groups used by the random enchantment helpers.
To add or change an event:

1. Add or edit a file in `data/random_event/function/events/`.
2. Add its event ID to `data/random_event/function/internal/run_selected_event.mcfunction`.
3. Add the event ID to one or more files in `data/random_event/function/internal/event_pools/`.
4. Update `data/random_event/function/internal/update_sidebar.mcfunction` so the sidebar shows its name.
5. Keep short event feedback in `title` and `subtitle`; the sidebar shows fixed-order `Stage`, `State`, `Event`, and `Next` rows.
6. Run `/reload` in a test world and trigger the event or its stage to check the result.

## Troubleshooting Unknown Command

If Minecraft says `Unknown command`, first run:

```mcfunction
/help trigger
```

If `/help trigger` is unknown, commands/cheats/operator permissions are not active in that world or server.

If `/help trigger` works, run:

```mcfunction
/trigger ping
```

If `ping` is unknown or disabled, run `/reload` once. If it still fails, the datapack is not loaded correctly. Check that the installed folder or zip has `pack.mcmeta` directly at its root.

Correct:

```text
datapacks/RandomEvent/pack.mcmeta
datapacks/RandomEvent/data/
```

Incorrect:

```text
datapacks/random-calamity-datapack/RandomEvent/pack.mcmeta
```

## Contributors

Thanks to [Tremila-Termina](https://github.com/Tremila-Termina) for contributing fixes and improvements through pull requests, including the Fire Panic fix and the improved Random Enchantment event system.

## Future Ideas

- Add mode presets such as `easy`, `chaos`, `reward-heavy`, and `hardcore`.
- Add configurable event weights so players can tune how often positive and negative events appear.
- Add a vote system for multiplayer servers, letting players vote to skip, reroll, or intensify the next event.
- Add milestone rewards for surviving 5, 10, or 20 events.
- Add a temporary event shield item that blocks the next negative event.
- Add event combos, where some events modify the next event instead of acting immediately.
- Add an in-game statistics sidebar or book showing events survived, rewards gained, and most dangerous event.
- Add structure or arena support, such as optional safe zones where events are paused.
- Add more advancement-linked goals beyond the three current team tasks.
