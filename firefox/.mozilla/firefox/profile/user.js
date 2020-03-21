// user_pref("gfx.webrender.all", true);
// user_pref("layers.acceleration.force-enabled", true);

// user_pref("general.autoScroll", true);
// user_pref("reader.parse-on-load.enabled", false);
// user_pref("widget.content.gtk-theme-override", "Adwaita");
// user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

// user_pref("network.cookie.cookieBehavior", 1);
// user_pref("browser.search.suggest.enabled", false);
// user_pref("browser.privatebrowsing.searchUI", false);
// user_pref("browser.startup.homepage", "about:blank");

// user_pref("font.default.x-western", "sans-serif");
// user_pref("font.name.monospace.x-western", "Roboto Mono");
// user_pref("font.name.sans-serif.x-western", "Roboto");
// user_pref("font.name.serif.x-western", "Roboto Slab");

// user_pref("xpinstall.signatures.required", false);
// user_pref("toolkit.telemetry.reportingpolicy.firstRun", false);


// Disable geolocation
user_pref("geo.enabled", false);
user_pref("geo.wifi.uri", "");

// Show full URLs in the address bar (including "http://"):
user_pref("browser.urlbar.trimURLs", false);

// Don't warn on opening about:config:
user_pref("general.warnOnAboutConfig", false);

// Remove "(site) is now fullscreen" nag message:
user_pref("full-screen-api.warning.delay", 0);
user_pref("full-screen-api.warning.timeout", 0);

// Prevent sites from disabling the default right-click menu:
user_pref("dom.event.contextmenu.enabled", false);

// Disable fullscreen URL bar animation:
user_pref("browser.fullscreen.animate", false);

// Disable URLbar autosuggestion
// user_pref("browser.urlbar.suggest.searches", false);

// PREF: When using the location bar, don't suggest URLs from browsing history
user_pref("browser.urlbar.suggest.history", false);

// Disable URLbar "search x with ..."
user_pref("browser.urlbar.oneOffSearches", false);

// Better legible default fonts (for Windows, at least - might require ttf-mscorefonts on *nix):
// As an alternative, the free Ubuntu and Droid font families are pretty good as well.
// user_pref("font.name.monospace.x-unicode", "Lucida Console");
// user_pref("font.name.monospace.x-western", "Lucida Console");
// user_pref("font.name.sans-serif.x-unicode", "Segoe UI");
// user_pref("font.name.sans-serif.x-western", "Segoe UI");
// user_pref("font.name.serif.x-unicode", "Georgia");
// user_pref("font.name.serif.x-western", "Georgia");

// Dark theme for dev tools:
user_pref("devtools.theme", "dark");


// Disable style editor in devtools
user_pref("devtools.styleeditor.enabled", false);

// Enable eyedropper in dev tools:
user_pref("devtools.command-button-eyedropper.enabled", true);

// If installed - ask to activate Flash. If not - don't nag about missing Flash plugin:
user_pref("plugin.state.flash", 1);
user_pref("plugins.notifyMissingFlash", false);

// Disable "Pocket"
user_pref("browser.pocket.api", "");
user_pref("browser.pocket.enabled", false);
user_pref("browser.pocket.oAuthConsumerKey", "");
user_pref("browser.pocket.site", "");

// Disable "Reader Mode":
user_pref("reader.parse-on-load.enabled", false);

// PREF: Don't try to guess domain names when entering an invalid domain name in URL bar
// http://www-archive.mozilla.org/docs/end-user/domain-guessing.html
user_pref("browser.fixup.alternate.enabled", false);

// PREF: When browser.fixup.alternate.enabled is enabled, strip password from 'user:password@...' URLs
// https://github.com/pyllyukko/user.js/issues/290#issuecomment-303560851
user_pref("browser.fixup.hide_user_pass", true);

// PREF: Disable form autofill, don't save information entered in web page forms and the Search Bar
user_pref("browser.formfill.enable", false);

// PREF: When username/password autofill is enabled, still disable it on non-HTTPS sites
// https://hg.mozilla.org/integration/mozilla-inbound/rev/f0d146fe7317
user_pref("signon.autofillForms.http", false);

// PREF: Require manual intervention to autofill known username/passwords sign-in forms
// http://kb.mozillazine.org/Signon.autofillForms
// https://www.torproject.org/projects/torbrowser/design/#identifier-linkability
user_pref("signon.autofillForms", false);

// PREF: Do not check if Firefox is the default browser
user_pref("browser.shell.checkDefaultBrowser", false);

// Use external editor for viewing source
//user_pref("view_source.editor.external", true);
//user_pref("view_source.editor.path", "/usr/bin/emacs");
