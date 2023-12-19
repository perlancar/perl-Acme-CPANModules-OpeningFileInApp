package Acme::CPANModules::OpeningFileInApp;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $LIST = {
    summary => 'List of modules to open a file with appropriate application',
    entries => [
        {
            module => 'Desktop::Open',
            description => <<'MARKDOWN',

This module tries to select the appropriate application to open a file: using
`start` (on Windows) or `xdg-open` (on other OS, if available), the falls back
to <pm:Browser::Open>.

See <pm:App::DesktopOpenUtils> which includes a CLI for this module:
<prog:open-desktop>.

MARKDOWN
        },

        {
            module => 'Spreadsheet::Open',
            description => <<'MARKDOWN',

Similar to <pm:Desktop::Open>, but limiting the apps to spreadsheet
applications.

MARKDOWN
        },

        {
            module => 'App::Open',
            scripts => ['openit'],
            description => <<'MARKDOWN',

This module and tool requires configuration beforehand.

MARKDOWN
        },

        {
            module => 'Open::This',
            scripts => ['ot'],
            description => <<'MARKDOWN',

This module (and the included <prog:ot> tool) is geared upon opening a Perl
source code file with a browser. You can specify a module name (e.g.
`Foo::Bar`), a qualified function name (`Foo::Bar::func_name()`), or a sentence
copy-pasted from `git-grep` or stack trace output.

MARKDOWN
        },

        {
            module => 'Browser::Open',
            description => <<'MARKDOWN',

A web browser can open many types of files, so this application is sometimes
appropriate. The module will pick an available browser. You don\'t have to
specify the path in URL form, e.g. `file:/path/to/file`; the module recognizes
standard `/unix/path/syntax`.

See <pm:App::BrowserOpenUtils> which provides a simple CLI for the module:
<prog:open-browser>.

MARKDOWN
        },
    ],
};

1;
# ABSTRACT:
