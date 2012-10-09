use inc::Module::Install;

name 'pmsetup';
all_from 'pmsetup';

requires 'YAML';
requires 'Text::Xslate';
requires 'Module::Install' => 1.00;
requires 'Module::Install::AuthorTests';
requires 'Module::Install::Repository';
requires 'Module::Install::XSUtil' => 0.30;
requires 'Pod::Markdown';
requires 'Test::Spelling';
requires 'Test::Perl::Critic';
requires 'Test::Pod';
requires 'Perl::Tidy';
requires 'Config::Pit';
requires 'Software::License';
requires 'Project::Libs';
requires 'Text::Xslate::Bridge::TT2Like';

requires 'Term::ReadLine::Gnu';
requires 'Mouse';
requires 'MouseX::Getopt';
requires 'Class::Accessor::Lite';

# Web Programming
requires 'Plack';
requires 'Furl';
requires 'XML::LibXML';
requires 'XML::RSS::LibXML';
requires 'IO::Socket::SSL';

if ($^O eq 'linux') {
    requires 'Linux::Inotify2';
} elsif ($^O eq 'darwin') {
    requires 'Mac::FSEvents';
}

requires 'Encode::Guess';
requires 'Data::Recursive::Encode';

requires 'Email::Sender::Simple';
requires 'Net::SMTP::SSL';
requires 'Net::IMAP::Client';

requires 'AnyEvent';
requires 'App::cpanoutdated';
requires 'App::Ack';

auto_include;
WriteAll;
