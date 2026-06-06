# Random Calamity Datapack

Random Calamity is a Minecraft Java 1.21.5 datapack for a simple survival challenge. When the challenge is enabled, a timer triggers one random event every 60 seconds.

This is also a first GitHub learning project. The repository is intentionally small, readable, and split into clear milestones so you can learn how commits describe progress.

## What It Does

- Starts and stops a timed calamity challenge.
- Runs a random event every 1200 game ticks, about 60 seconds.
- Includes twenty events, split between danger and help:
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
  - lucky relief
  - guardian blessing
  - swift wind
  - supply cache
  - golden hour
  - miner's grace
  - second chance
- Shows a sidebar with challenge state, current event ID, and seconds until the next event.
- Avoids permanent terrain destruction.

## Install In Minecraft

1. Open Minecraft Java 1.21.5.
2. Create or open a world.
3. Open the world folder, then open `datapacks`.
4. Copy the `RandomCalamity` folder into `datapacks`.
5. Run `/reload` in game.
6. Run `/datapack list enabled` and confirm Random Calamity is listed.

## Commands

Use these player commands after `/reload`:

```mcfunction
/trigger ping
/trigger start
/trigger stop
/trigger force_event
/trigger uninstall
```

The commands mean:

- `ping`: test whether the datapack is ready
- `start`: start the random calamity timer
- `stop`: stop the timer
- `force_event`: trigger one event immediately
- `uninstall`: remove this datapack's scoreboards

These named `/trigger` commands are the recommended way to use the datapack.

Operator function commands are also available:

```mcfunction
/function calamity:ping
/function calamity:start
/function calamity:stop
/function calamity:force_event
/function calamity:uninstall
```

The longer admin names also work:

```mcfunction
/function calamity:admin/ping
/function calamity:admin/start
/function calamity:admin/stop
/function calamity:admin/force_event
/function calamity:admin/uninstall
```

Use `/trigger ping` first when testing. If it works, the datapack command triggers are ready.

## GitHub Learning Checklist

After Git is installed, these commands create a local repository and make the first learning commits:

```powershell
cd F:\.github\random-calamity-datapack
git init
git status
git add README.md .gitignore RandomCalamity\pack.mcmeta
git commit -m "Create datapack project scaffold"
git add RandomCalamity\data\minecraft RandomCalamity\data\calamity\function\load.mcfunction RandomCalamity\data\calamity\function\tick.mcfunction
git commit -m "Wire load and tick functions"
git add RandomCalamity\data\calamity\function\admin
git commit -m "Add admin control functions"
git add RandomCalamity\data\calamity\function\events RandomCalamity\data\calamity\function\internal
git commit -m "Add random calamity events"
git add README.md
git commit -m "Document install and play steps"
```

To publish on GitHub, create a public empty repository named `random-calamity-datapack`, then run:

```powershell
git branch -M main
git remote add origin https://github.com/Fredfive007/random-calamity-datapack.git
git push -u origin main
```

## Release Zip

When publishing a release zip, zip the contents of `RandomCalamity` so `pack.mcmeta` is at the zip root. Do not zip the outer repository folder.

```powershell
cd F:\.github\random-calamity-datapack
.\tools\build-release.ps1 -Version 1.0.4
```

Use `tools/build-release.ps1` instead of `Compress-Archive`; Minecraft expects zip entries like `data/minecraft/...`, not Windows-style `data\minecraft\...`.

## Troubleshooting Unknown Command

If Minecraft says `Unknown command`, first run:

```mcfunction
/help function
```

If `/help trigger` is unknown, commands/cheats/operator permissions are not active in that world or server.

If `/help trigger` works, run:

```mcfunction
/trigger ping
```

If `ping` is unknown or disabled, run `/reload` once. If it still fails, the datapack is not loaded correctly. Check that the installed folder or zip has `pack.mcmeta` directly at its root.

Correct:

```text
datapacks/RandomCalamity/pack.mcmeta
datapacks/RandomCalamity/data/
```

Incorrect:

```text
datapacks/random-calamity-datapack/RandomCalamity/pack.mcmeta
```
