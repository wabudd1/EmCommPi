# Raspberry Pi-based Emergency Communications Server

## Purpose
The purpose of this project is to create a recipe for building an inexpensive kit that provides digital communication capabilities useful for those involved in emergency communications.  I've designed things to strike a balance between cost, complexity, availabiltiy of parts, and performance.  This project is not prescriptive - anything can be substituted out based on your needs and budget.  Purchasing of hardware components can be delayed or omitted as well and the Pi can still be useful in some capacity.  You also may already own some of these things already - such as a TNC like the DigiRig.

Please direct any suggestions to an Issue on this GitHub repository.  I also welcome any pull requests that seek to add or improve this project.

## Preconditions
- FCC licensed amateur radio operator
- Radio appropriate for your license and needs
  - Power supply for your radio
  - Radio must be capable of connecting to a TNC (audio input/output)
- The ability to solder header pins/sockets and possibly a uFL connector

This setup does include Meshtastic, which does not require a license, but should only be treated as a secondary (or tertiary) mode of communication.  The technology is too new and network conditions can be unpredictable.  That said, it is useful to relay information to non-hams from primary modes.

## Hardware

Example bill of materials:

| Category | Item            | Cost     | Source    |
|----------|-----------------|----------|-----------|
| SBC      | Pi 5 - 8GB      | $80 MSRP | PiShop.us |
| SBC      | UeeeKKoo        | ~$15     | BezosMart |
| SBC      | Official Fan    | $10      | BezosMart | 
| SBC      | 27w USB-C Power | $20      | BezosMart |
| HAT      | GPS HAT         | $29.95   | Adafruit  |
| Antenna  | GPS Antenna     | $20      | Adafruit  |
| HAT      | NVME HAT        | $17.40   | Adafruit  |
| SSD      | 512GB SSD       | $50      | BezosMart |
| LoRA     | RFM95W Breakout | $19.95   | Adafruit  |
| Antenna  | 915MHz SMA      | $10      | BezosMart |
|Connectors| Various         | ~$20     | Adafruit  |
| TNC      | DigiRig Lite    | $40      | DigiRig   |
| TNC      | DigiRig Cable   | $30      | DigiRig   |
|          |                 |          |           |


### Raspberry Pi (SBC or Single Board Computer) Options
- Pi 5
  - More expensive, but very fast processor
  - Required if an NVME SSD is used
  - RTC clock & backup battery
- Pi 4
  - Less expensive, not the fastest
  - No NVME storage, but less expensive overall
- Pi Zero 2W
  - Extremely low cost
  - Slow, but still effective for most things
  - No NVME
  - Hardware accessories more complicated to use/janky
- Various knockoffs (Orange Pi, Banana Pi, RockPi) may work, your mileage may vary

Honorable mention to the Compute Module line (and IO boards), which will work, but can layer of cost and complexity to this project that most people will not enjoy.

#### Pi RAM
- Pi 4 or 5, you should get at least a 4 gig preferably 8 gig model for best performance and expandability
- Pi Zero 2W only has one model with 512 megabytes of RAM which limits multitasking a bit

#### Pi Cases
Whichever case you select will depend on what Pi you chose and which HAT(s) you're attaching.  Each Pi version (5, 4, Zero) must be paired with a case designed for that version.  Additionally, some cases do not include a cooling solution (heatsink or fan) which is highly recommended for the larger Pi's.

- Pi 5
  - [KKSB Metal Case](https://www.amazon.com/gp/product/B07Y7NTTG8) ~$20
    - Space for HATs
    - Standoffs and feet included
    - Can break off tabs to allow access to ports and such
  - [UeeKKoo Metal Case](https://www.amazon.com/gp/product/B0DGTMXWHT) ~$15
    - Space for HATs
    - Wall and DIN rail mounting
    - Standoffs included
    - Knockouts for specific port shapes (antennas, USB, etc)
  - [GeekPi Lite Plastic Case](https://www.amazon.com/gp/product/B0DPH2DYBP) ~$40
    - HATs sit outside via daughter board
    - Includes NVME on daughter board
    - Side ports relocated to front with daughter board
    - Full-size HDMI ports
    - Includes heatsink + fan
  - [Flirc Aluminum Case](https://www.amazon.com/Flirc-Raspberry-Pi-Case/dp/B0CQNK68L7) ~$17
    - Whole case is a passive heatsink
    - No HAT compatibility :sadface:

### Add-On Devices
- GPS HAT from Adafruit
  - uFL to SMA adapter
  - SMA GPS active antenna
- LoRa breakout from Adafruit
  - uFL connector
  - uFL to SMA adapter
  - 915 MHz SMA antenna
- m.2 NVME SSD HAT
  - Can be omitted, but SD card can be less robust/reliable
  - m.2 NVME SSD (2230 footprint)
    - Can be any capacity you need, but I picked 512 for boot and modest data storage
    - Don't buy from unknown brands just because they're cheap
- Header pins/sockets as needed
  - The official m.2 NVME HAT comes with a through-hole header socket and an extra-long male header.
  - Recommend through-hole header socket for GPS HAT to stack atop NVME HAT
  - Header pins/sockets for LoRa breakout as needed
- DigiRig Mobile or DigiRig Lite
  - Cable(s) for your specific radio(s)
  - If using a Pi Zero, you will need an adapter and/or hub to connect the DigiRig USB-A connector to the Pi's USB micro-B ports
  - Other KISS TNC devices will likely work as long as you can figure out how to configure them in Direwolf

## Software
### Third-Party
### Special Sauce

## Optional Accessories
Depending on your specific threat model, you may want to include these things in a kit that lives with your Pi.

- Travel WiFi router
- Battery bank
- Ethernet cables
- USB cables

## Licensing
Until I come up with an appropriate license, consider this repository to be free as in beer.  Please respect the licenses of any third parties mentioned here.

Also, if you're building a dashboard, it is considered rude to "hotlink" images without attribution (if they allow hotlinking at all).  Server bandwidth costs money!