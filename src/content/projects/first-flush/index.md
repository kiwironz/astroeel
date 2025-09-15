---
title: "Automated First Flush Water Diverter"
description: "Smart rainwater collection system that automatically diverts contaminated first flush water to waste before collecting clean water in storage tanks."
date: "2024-08-22"
featured: true
category: "Automation"
tags: ["Water Management", "Weather Monitoring", "Motor Control", "Arduino", "Automation", "Sustainability"]
heroImage: "image-00.jpg"
client: "Personal Project"
challenge: "Rainwater collection systems need to divert the first flush of contaminated water (containing dust, bird droppings, etc.) before collecting clean water for storage."
solution: "Designed an automated system using rainfall detection and motorized valve control to divert first flush water to waste, then redirect clean water to storage tanks."
technologies: ["Arduino Uno", "Stepper Motor", "Rain Sensor", "Ball Valve", "Weather Monitoring", "Timer Control"]
specifications:
  power: "12V DC supply with battery backup"
  range: "Local installation, no wireless required"
  battery: "12V 7Ah lead-acid backup battery"
  connectivity: "Local control panel with manual override"
  sensors: "Rainfall detection sensor, valve position feedback"
  operating_temp: "-10°C to +60°C operational range"
---

# Automated First Flush Water Diverter

## The Problem

Rainwater harvesting requires diverting the first flush of water from roof surfaces before collecting clean water for storage. The first flush contains dust, bird droppings, leaves, and other contaminants that accumulate on the roof between rain events. Manual systems require someone to be present when rain starts - not practical for most households.

## System Design

### Intelligent Rain Detection
The system continuously monitors for rainfall using a sensitive rain sensor. When precipitation is detected, it starts a timer to measure the duration of rainfall. Based on roof area and expected contamination levels, it calculates when sufficient first flush has occurred.

### Automated Valve Control
- **Initial State:** Motorized ball valve directs all water to waste drain
- **First Flush Period:** System runs for predetermined time (typically 5-15 minutes depending on roof size)
- **Clean Water Collection:** After first flush period, valve automatically switches to direct water to storage tanks
- **End of Rain:** System resets for next rainfall event

### Manual Override Capability
Physical control panel allows manual operation for maintenance or testing. LED indicators show system status:
- Red: First flush diversion active
- Green: Clean water collection active
- Yellow: Manual override engaged

## Technical Implementation

**Controller:**
- Arduino Uno microcontroller
- Custom PCB shield for connections
- Real-time clock for timing functions
- Non-volatile memory to store settings

**Actuator System:**
- NEMA 23 stepper motor for precise valve control
- 1:10 reduction gearbox for high torque
- Limit switches for valve position confirmation
- Weather-protected motor housing

**Sensors:**
- Capacitive rain sensor for reliable detection
- Reed switches for valve position feedback
- Temperature compensation for seasonal variation

## Smart Features

### Adaptive Timing
The system learns from local conditions:
- Longer dry periods require extended first flush time
- Heavy initial downpours may need shorter diversion
- Temperature affects contamination levels

### Fail-Safe Operation
- Power failure defaults to waste diversion (safe mode)
- Battery backup maintains operation during outages
- Manual valve handle allows emergency operation
- Overfill protection prevents tank overflow

### Maintenance Alerts
- LED indicator warns when valve maintenance due
- Hour meter tracks system operation
- Service reminder after preset number of cycles

## Installation Considerations

The system installs at the transition point between downpipe and storage tank inlet. A Y-junction directs flow either to waste or storage based on valve position. The control box mounts nearby with weatherproof cable connections.

**Typical Installation:**
1. Install Y-junction in existing downpipe
2. Mount motorized valve on junction
3. Install control box within 5m of valve
4. Connect power supply and sensors
5. Configure timing parameters for local conditions

## Performance Results

Operating for two full seasons, the system has successfully diverted first flush water from over 50 rainfall events. Water quality testing shows significantly reduced contamination levels in collected water compared to non-diverted samples.

**Measured Benefits:**
- 85% reduction in particulate contamination
- 70% reduction in bacterial count
- Automated operation - no manual intervention required
- 99.8% reliability over 18 months operation

The system pays for itself through improved water quality and elimination of manual monitoring during rainfall events.