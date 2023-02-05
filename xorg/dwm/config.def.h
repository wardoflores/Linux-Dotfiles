/* See LICENSE file for copyright and license details. */

#include <X11/XF86keysym.h>

/* appearance */
static const unsigned int borderpx  = 2;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const unsigned int gappx     = 5;        /* gaps between windows */
static const int user_bh            = 15;        /* 0 means that dwm will calculate bar height, >= 1 means dwm will user_bh as bar height */
static const char *fonts[]          = { 
					"Source Code Pro:size=10",
					"Font Awesome 6 Free,Font Awesome 6 Free Solid:pixelsize=9:antialias=true:autohint=true",
					"Font Awesome 6 Free,Font Awesome 6 Free Regular:pixelsize=1:antialias=true:autohint=true",
					"Font Awesome 6 Brands,Font Awesome 6 Brands Regular:pixelsize=9:antialias=true:autohint=true",
					"Font Awesome v4 Compatibility,Font Awesome v4 Compatibility Regular:pixelsize=1:antialias=true:autohint=true" 
					};
static const char dmenufont[]       = { "Source Code Pro:size=10" };
static const char col_bg[]          = "#263238"; /* background */
static const char col_bl[]          = "#80deea"; /* border lines */
static const char col_fg[]          = "#6745c2"; /* text */
static const char col_wh[]          = "#000a12"; /* I dont know */
static const char col_cn[]          = "#ffeb3b"; /* Text and Highlight */
static const char *colors[][3]      = {
	/*               fg         bg   border   */
	[SchemeNorm] = { col_fg, col_bg, col_bl  },
	[SchemeSel]  = { col_cn, col_bg, col_bl  },
};

/* tagging */
static const char *tags[] = { " ", "", "", "", "", "", "", "", "" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class				instance	title	tags-mask	isfloating	monitor */
	{ "st-256color",			"st-256color",	NULL,	0,		1,		-1 },
	{ "Brave-browser-nightly",  		"brave-browser-nightly",	NULL,		1 << 1,		0,		-1 },
	{ "Google-chrome",			NULL,		NULL,	2,		0,		-1 },
	{ "Thunar",				"thunar",	NULL,	1 << 2,		0,		-1 },
	{ "fsearch",				NULL,		NULL,	1 << 2,		0,		-1 },
	{ "org.qbittorrent.qBittorrent",	NULL,		NULL,	1 << 2,		0,		-1 },
	{ NULL,					"obsidian",	NULL,	1 << (4 - 1),		0,		-1 },
	{ "anki",				"Anki",		NULL,	1 << 3,		0,		-1 },
	{ "microsoft-office-online",		NULL,		NULL,	1 << 3,		0,		-1 },
	{ "org.gnome.Maps",			NULL,		NULL,	1 << 3,		0,		-1 },
	{ "code",				NULL,		NULL,	1 << 4,		0,		-1 },
	{ "GitHub Desktop",			"github desktop",NULL,	1 << 4,		0,		-1 },
	{ "Calibre",				NULL,		NULL,	1 << 4,		0,		-1 },
	{ "mongodb-compass",			NULL,		NULL,	1 << 4,		0,		-1 },
	{ "postman",				NULL,		NULL,	1 << 4,		0,		-1 },
	{ "mpv",				NULL,		NULL,	1 << 5,		0,		-1 },
	{ "droidcam",				NULL,		NULL,	1 << 5,		0,		-1 },
	{ "discord",				"discord",	NULL,	1 << 5,		0,		-1 },
	{ "Mainwindow.py",			NULL,		NULL,	1 << 5,		0,		-1 },
	{ "lutris",				NULL,		NULL,	1 << 5,		0,		-1 },
	{ "itch",				NULL,		NULL,	1 << 5,		0,		-1 },
	{ "heroic",				NULL,		NULL,	1 << 5,		0,		-1 },
	{ "Steam",				NULL,		NULL,	1 << 5,		0,		-1 },
	{ "net-runelite-client-RuneLite",	NULL,		NULL,	1 << 5,		0,		-1 },
	{ "net-runelite-launcher-Launcher",	NULL,		NULL,	1 << 5,		0,		-1 },
	{ "org-tlauncher-tlauncher-rmo-TLauncher",	NULL,	NULL,	1 << 5,		0,		-1 },
	{ NULL,					"Minecraft* 1.16",	NULL,	1 << 5,	0,		-1 },
	{ "obs",				NULL,		NULL,	1 << 6,		0,		-1 },
	{ "krita",				NULL,		NULL,	1 << 6,		0,		-1 },
	{ "inkscape",				NULL,		NULL,	1 << 6,		0,		-1 },
	{ "Olive",				NULL,		NULL,	1 << 6,		0,		-1 },
	{ "drawio",				NULL,		NULL,	1 << 6,		0,		-1 },
	{ "tenacity",				NULL,		NULL,	1 << 6,		0,		-1 },
	{ "librecad",				NULL,		NULL,	1 << 6,		0,		-1 },
	{ "pavucontrol",			NULL,		NULL,	1 << 8,		0,		-1 },
	{ "SoundWireServer",			NULL,		NULL,	1 << 8,		0,		-1 },
	{ NULL,					"nwg-look",	NULL,	1 << 8,		0,		-1 },
	{ "Spotify",				NULL,		NULL,	1 << 7,		0,		-1 },
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen = 1; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_bg, "-nf", col_fg, "-sb", col_cn, "-sf", col_wh, NULL };
static const char *termcmd[]  = { "st", NULL };

static const char *upvol[]   = { "/usr/bin/pactl", "set-sink-volume", "0", "+5%",     NULL };
static const char *downvol[] = { "/usr/bin/pactl", "set-sink-volume", "0", "-5%",     NULL };
static const char *mutevol[] = { "/usr/bin/pactl", "set-sink-mute",   "0", "toggle",  NULL };

static const char *screenshot[] = { "flameshot", "gui", NULL };
static const char *screenshotsel[] = { "maim", "-s", "-u", "|", "xclip", "-selection", "clipboard", "-t", "image/png", "-i", NULL };

static Key keys[] = {
	/* modifier                     key        function        argument */
	{ 0,                       XF86XK_AudioLowerVolume, spawn, {.v = downvol } },
	{ 0,                       XF86XK_AudioMute, spawn, {.v = mutevol } },
	{ 0,                       XF86XK_AudioRaiseVolume, spawn, {.v = upvol   } },

	{ MODKEY,			XK_Print,	spawn,	{.v = screenshot } },
	{ MODKEY|ShiftMask,		XK_Print,	spawn,		{.v = screenshotsel } },

	{ MODKEY,                       XK_d,      spawn,          {.v = dmenucmd } },
	{ MODKEY|ShiftMask,             XK_Return, spawn,          {.v = termcmd } },
	{ MODKEY,                       XK_b,      togglebar,      {0} },
	{ MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
	{ MODKEY,                       XK_i,      incnmaster,     {.i = +1 } },
	{ MODKEY,                       XK_u,      incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
	{ MODKEY,                       XK_Return, zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	{ MODKEY|ShiftMask,             XK_c,      killclient,     {0} },
	{ MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_f,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY,                       XK_m,      setlayout,      {.v = &layouts[2]} },
	{ MODKEY,                       XK_space,  setlayout,      {0} },
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)
	{ MODKEY|ShiftMask,             XK_e,      quit,           {0} },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

