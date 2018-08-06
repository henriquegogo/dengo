/* See LICENSE file for copyright and license details. */

/* appearance */
static const char *fonts[] = {
  "Cantarell:size=10"
};
static const char dmenufont[]       = "Cantarell:size=12";
static const char normbordercolor[] = "#444444";
static const char normbgcolor[]     = "#222222";
static const char normfgcolor[]     = "#bbbbbb";
static const char selbordercolor[]  = "#666666";
static const char selbgcolor[]      = "#222222";
static const char selfgcolor[]      = "#eeeeee";
static const unsigned int borderpx  = 1;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */

/* tagging */
static const char *tags[] = { "" };

static const Rule rules[] = { { NULL } };

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */

static const Layout layouts[] = {
  /* symbol     arrange function */
  { "",         NULL },    /* no layout function means floating behavior */
};

/* key definitions */
#define ALTKEY Mod1Mask
#define SUPERKEY Mod4Mask

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[]   = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", normbgcolor, "-nf", normfgcolor, "-sb", selbordercolor, "-sf", selfgcolor, "-p", "Run:", "-l", "8", NULL };
static const char *termcmd[]    = { "x-terminal-emulator", NULL };

static const char *upvol[]   = { "amixer", "set", "Master", "3+", NULL };
static const char *downvol[] = { "amixer", "set", "Master", "3-", NULL };
static const char *lock[]    = { "slock", NULL };
static const char *screenshot_full[] = { "scrot", NULL };
static const char *screenshot_area[] = { "scrot", "-s", NULL };

static const char *resizemove_full[]  = { "wmctrl", "-r", ":ACTIVE:", "-e", "0,0,19,1364,747"  };
static const char *resizemove_left[]  = { "wmctrl", "-r", ":ACTIVE:", "-e", "0,0,19,686,747" };
static const char *resizemove_right[] = { "wmctrl", "-r", ":ACTIVE:", "-e", "0,687,19,677,747" };

static Key keys[] = {
  /* modifier                     key        function        argument */
  { ALTKEY|ControlMask,           XK_t,      spawn,          {.v = termcmd } },
  { ControlMask,                  XK_space,  spawn,          {.v = dmenucmd } },
  { ALTKEY,                       XK_F2,     spawn,          {.v = dmenucmd } },
  { ALTKEY,                       XK_Tab,    focusstack,     {.i = +1 } },
  { ALTKEY|ShiftMask,             XK_Tab,    focusstack,     {.i = -1 } },
  { ALTKEY,                       XK_F4,     killclient,     {0} },
  { ALTKEY|ControlMask,           XK_Delete, quit,           {0} },
  { ALTKEY|ShiftMask,             XK_space,  togglefloating, {0} },

  { SUPERKEY,                     XK_Up,     spawn,          {.v = resizemove_full } },
  { SUPERKEY,                     XK_Left,   spawn,          {.v = resizemove_left } },
  { SUPERKEY,                     XK_Right,  spawn,          {.v = resizemove_right } },

  { ALTKEY|ControlMask,           XK_l,      spawn,          {.v = lock } },
  { SUPERKEY,                     XK_l,      spawn,          {.v = lock } },

  { 0,                           0x1008ff11, spawn,          {.v = downvol } },
  { 0,                           0x1008ff13, spawn,          {.v = upvol } },
  { 0,                            XK_Print,  spawn,          {.v = screenshot_full } },
  { ALTKEY,                       XK_Print,  spawn,          {.v = screenshot_area } },
};

/* button definitions */
/* click can be ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
  /* click                event mask      button          function        argument */
  { ClkTagBar,            0,              Button1,        spawn,          {.v = dmenucmd } },
  { ClkTagBar,            0,              Button2,        killclient,     {0} },
  { ClkWinTitle,          0,              Button1,        focusstack,     {0} },
  { ClkWinTitle,          0,              Button2,        movemouse,      {0} },
  { ClkLtSymbol,          0,              Button1,        spawn,          {.v = dmenucmd } },
  { ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
  { ClkClientWin,         ALTKEY,         Button1,        movemouse,      {0} },
  { ClkClientWin,         ALTKEY,         Button3,        resizemouse,    {0} },
};