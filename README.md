# Random Event Datapack

Random Event is a Minecraft Java 1.21.5 datapack for a survival challenge. When enabled, it triggers one random positive or negative event every 60 seconds.

## What It Does

- Starts and stops a timed random event challenge.
- Runs one event every 1200 game ticks, about 60 seconds.
- Includes twenty events: 13 negative events and 7 positive events.
- Shows a sidebar with challenge state, current event ID, and seconds until the next event.
- Avoids permanent terrain destruction.

## Install In Minecraft

1. Open Minecraft Java 1.21.5.
2. Create or open a world.
3. Open the world folder, then open `datapacks`.
4. Copy the `RandomEvent` folder or release zip into `datapacks`.
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

Use `/trigger ping` first when testing. If it works, the datapack command triggers are ready.

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

Positive events:

- lucky relief
- guardian blessing
- swift wind
- supply cache
- golden hour
- miner's grace
- second chance

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
          trigger_event.mcfunction
          update_sidebar.mcfunction
        events/
          *.mcfunction
tools/
  build-release.ps1
```

Important files:

- `pack.mcmeta`: datapack metadata and Minecraft pack format.
- `data/minecraft/tags/function/load.json`: runs `random_event:load` after `/reload`.
- `data/minecraft/tags/function/tick.json`: runs `random_event:tick` every game tick.
- `data/random_event/function/load.mcfunction`: creates scoreboards, trigger commands, fixed-order sidebar rows, and sidebar teams.
- `data/random_event/function/tick.mcfunction`: handles trigger input, counts down the timer, and fires events.
- `data/random_event/function/internal/update_sidebar.mcfunction`: updates stable sidebar row suffixes while keeping row scores fixed.
- `data/random_event/function/internal/trigger_event.mcfunction`: rolls `1..20` and dispatches to one event file.
- `data/random_event/function/events/`: one `.mcfunction` file per random event.
- `tools/build-release.ps1`: builds a Minecraft-safe release zip with `/` path separators.

To add or change an event:

1. Add or edit a file in `data/random_event/function/events/`.
2. Update `data/random_event/function/internal/trigger_event.mcfunction` so the random range and event mapping include it.
3. Keep short event feedback in `title` and `subtitle`; the sidebar shows fixed-order `State`, `Event`, and `Next` rows.
4. Rebuild the release zip with `tools/build-release.ps1`.

## Release Zip

When publishing a release zip, zip the contents of `RandomEvent` so `pack.mcmeta` is at the zip root. Do not zip the outer repository folder.

```powershell
cd F:\.github\random-calamity-datapack
.\tools\build-release.ps1 -Version 1.1.2
```

Use `tools/build-release.ps1` instead of `Compress-Archive`; Minecraft expects zip entries like `data/minecraft/...`, not Windows-style `data\minecraft\...`.

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
