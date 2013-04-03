use strict;
use warnings;
use Module::Build;

my $file_notify = do {
    if ($^O eq 'linux') {
        'Linux::Inotify2';
    } elsif ($^O eq 'darwin') {
        'Mac::FSEvents';
    }
};

my $builder = Module::Build->new(
    module_name => 'pmsetup',
    dist_author => 'Syohei YOSHIDA<syohex@gmail.com>',
    license => 'perl',
    test_files => ( -d '.git' || $ENV{RELEASE_TESTING} ) ? [qw(t/ xt/)] : ['t/'],
    create_readme => 1,

    requires           => {
        'YAML'         => '0',
        'Text::Xslate' => '0',

        'Module::Install'                    => '0',
        'Module::Install::AuthorTests'       => '0',
        'Module::Install::Repository'        => '0',
        'Module::Install::XSUtil'            => '0',
        'Module::Build'                      => '0',
        'Module::Build::Pluggable'           => '0',
        'Module::Build::Pluggable::CPANfile' => '0',
        'Module::Build::Pluggable::XSUtil'   => '0',

        'Pod::Markdown'                 => '0',
        'Test::Spelling'                => '0',
        'Test::Perl::Critic'            => '0',
        'Test::Pod'                     => '0',
        'Perl::Tidy'                    => '0',
        'Config::Pit'                   => '0',
        'Software::License'             => '0',
        'Project::Libs'                 => '0',
        'Text::Xslate::Bridge::TT2Like' => '0',

        'Term::ReadLine::Gnu'   => '0',
        'Mouse'                 => '0',
        'MouseX::Getopt'        => '0',
        'Class::Accessor::Lite' => '0',

        'Plack'                => '0',
        'LWP::UserAgent'       => '0',
        'LWP::Protocol::https' => '0',
        'Furl'                 => '0',
        'XML::LibXML'          => '0',
        'XML::RSS::LibXML'     => '0',
        'IO::Socket::SSL'      => '0',

        'AnyEvent'          => '0',
        'App::cpanoutdated' => '0',
        'App::Ack'          => '0',

        'ShipIt'           => '0',
        $file_notify       => '0',

        'Text::MultiMarkdown' => '0',
        'Data::Section::Simple' => '0',
    },

    script_files => ['./pmsetup'],
);

$builder->create_build_script();
