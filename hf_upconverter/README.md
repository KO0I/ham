# Upconverter

## Introduction:

My SDR Receiver is an EZCAP EzTV-645. I intend to use RTL-SDR software to
interact with it. My goal is to use this device to generate a waterfall
display on my computer.

This is desirable because having a waterfall display will help me to see
what I am hearing, and give me a bird's-eye view of the band I'm in.

However, since I will be working in HF bands (40m mostly), I will not be
able to use the dongle I purchased as-is to listen in on HF bands. For
this to work, I need to build a simple device called an upconverter.

## Theory of Operation:

A double-balanced mixer will give the sum and difference of two signals
passed to it. Using one signal from my transceiver and the other from an
oscillator. The output is something far more palatable for the EzTV-645, and
therefore will allow me to make a waterfall display of the band that I am in. 

## Practical Example

I like M1GEO's design. I will be making something comparable,
although I might end up using a simpler Butterworth Filter instead of the
Chebyshev. I'll be including in this directory M1GEO's upconverter as a
reference. A major problem with M1GEO's design is that the pins on the
ends are the smaller Type F connectors; my dongle uses an IEC connector.
Also, on the input end of the board, I may want to add a buffer amplifier so
that I won't mess up the signal coming from the transceiver (I think I
will wire it directly to the IF on my Norcal 40A CW transceiver)
