---
title: Atlantis
---

# Atlantis

```{figure} ../_static/videos/environments/atlantis.gif
:width: 120px
:name: Atlantis
```

This environment is part of the <a href='..'>Atari environments</a>. Please read that page first for general information.

|                   |                                   |
|-------------------|-----------------------------------|
| Make              | gymnasium.make("ALE/Atlantis-v5") |
| Action Space      | Discrete(4)                       |
| Observation Space | Box(0, 255, (210, 160, 3), uint8) |

For more Atlantis variants with different observation and action spaces, see the variants section.

## Description

Your job is to defend the submerged city of Atlantis. Your enemies slowly descend towards the city and you must destroy them before they reach striking distance. To this end, you control three defense posts. You lose if your enemies manage to destroy all seven of Atlantis' installations. You may rebuild installations after you have fought of a wave of enemies and scored a sufficient number of points.

For a more detailed documentation, see [the AtariAge page](https://atariage.com/manual_html_page.php?SoftwareID=835)

## Actions

Atlantis has the action space of `Discrete(4)` with the table below listing the meaning of each action's meanings.
To enable all 18 possible actions that can be performed on an Atari 2600, specify `full_action_space=True` during
initialization or by passing `full_action_space=True` to `gymnasium.make`.

|   Value | Meaning   |
|---------|-----------|
|       0 | NOOP      |
|       1 | FIRE      |
|       2 | RIGHTFIRE |
|       3 | LEFTFIRE  |

See [environment specification](../env-spec) to see more information on the action meaning.

## Observations

Atari environments have three possible observation types:

- `obs_type="rgb"` -> `observation_space=Box(0, 255, (210, 160, 3), np.uint8)`
- `obs_type="ram"` -> `observation_space=Box(0, 255, (128,), np.uint8)`
- `obs_type="grayscale"` -> `Box(0, 255, (210, 160), np.uint8)`, a grayscale version of the q"rgb" type

See variants section for the type of observation used by each environment id by default.

### Reward

You score points for destroying enemies, keeping installations protected during attack waves. You score more points if you manage to destroy your enemies with one of the outer defense posts. For a more detailed documentation, see [the AtariAge page](https://atariage.com/manual_html_page.php?SoftwareID=835).

## Variants

Atlantis has the following variants of the environment id which have the following differences in observation,
the number of frame-skips and the repeat action probability.

| Env-id                 | obs_type=   | frameskip=   | repeat_action_probability=   |
|------------------------|-------------|--------------|------------------------------|
| Atlantis-v0            | `rgb`       | `(2, 5)`     | `0.25`                       |
| AtlantisNoFrameskip-v0 | `rgb`       | `1`          | `0.25`                       |
| Atlantis-v4            | `rgb`       | `(2, 5)`     | `0.00`                       |
| AtlantisNoFrameskip-v4 | `rgb`       | `1`          | `0.00`                       |
| ALE/Atlantis-v5        | `rgb`       | `4`          | `0.25`                       |
| ALE/Atlantis2-v5       | `rgb`       | `4`          | `0.25`                       |

See the [version history page](https://ale.farama.org/environments/#version-history-and-naming-schemes) to implement previously implemented environments, e.g., `AtlantisNoFrameskip-v4`.

## Difficulty and modes

It is possible to specify various flavors of the environment via the keyword arguments `difficulty` and `mode`.
A flavor is a combination of a game mode and a difficulty setting. The table below lists the possible difficulty and mode values
along with the default values.

| Available Modes   | Default Mode   | Available Difficulties   | Default Difficulty   |
|-------------------|----------------|--------------------------|----------------------|
| `[0, 1, 2, 3]`    | `0`            | `[0]`                    | `0`                  |

## Version History

A thorough discussion of the intricate differences between the versions and configurations can be found in the general article on Atari environments.

* v5: Stickiness was added back and stochastic frame-skipping was removed. The environments are now in the "ALE" namespace.
* v4: Stickiness of actions was removed
* v0: Initial versions release
