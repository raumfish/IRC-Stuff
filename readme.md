<h1> If you like this app, please donate! </h1>

<a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=VADC7Y8CR3RD2"><img src="https://www.paypal.com/en_US/i/btn/btn_donateCC_LG.gif"></a>

At any rate, feel free to use this, change your nickname and password and password hash etc etc using regexp. It connects to hundreds of IRC networks and znc is configured to "channel cling" any channels that you join, unless you part them. 

- You can also connect to a single session using multiple clients simultaneously. This is ideal if you want to have an eggdrop and an irc client on the same session at the same time or if you want to irc from your cell phone or something. ZNC stays connected even if you disconnect (session resuming)

- You'll need to configure a wildcard DNS record for the host that you're running your ZNC server on. This is to circumvent a really stupid bug in IRSSI. Just regexp replace "wildcard.devel.ws" with your *.wildcard.host.tld of your choice.

<b>- Expect startup connection delays always when you run znc </b> because it's not designed to connect to hundreds of IRC networks, it's not the most efficient way to use it. I think it takes somewhere around 4 hours to finish connecting to all of the networks but it works fine once it's connected.

<b>- link ~/.irssi and ~/.znc to IRC-Stuff/irssi and znc. 

<b>- /ignore *status and /ignore *raw </b> the output is way to verbose. unignore them when you wanna look at them. they should all go to a single window (msgs) as I've configured irssi to work this way.
