# My NixOS config
## done so far
- integrated flakes + home-manager with nixos-unstable (although it's kinda janky rn, might redo)
- cachyos kernel
  - stale for now because v4l2loopback (required for droidcam) doesn't behave well with the kernel
- gaming essentials (lutris, steam, protonup-qt)
﻿
## stuff to do
- **IMPORTANT:** single gpu passthrough vfio setup 
- nvidia configuration
  - patches such as `options nvidia NVreg_PreserveVideoMemoryAllocations=1` and modesetting for a somewhat proper wayland experience
- advanced gaming configuration
  - wine-discord-ipc-bridge integration (for seamless discord rich presence with windows games)
  - whatever else is needed over time
- music prod essentials
  - yabridge + low-latency pipewire settings
- proper kanata configuration - the .kbd file should contain the following:
  - [x] Canary keyboard layout
  - support for german umlaute and romanian deadkeys (might replace with xkb if i won't be able to integrate this)
  - symbol layer
- **optional:** ricing my shell further + nim dev environment

﻿**this repo might suffer some heavy changes over time, especially when i'll get a new laptop for college**
