use inc::Module::Install;

name 'pmsetup';
all_from 'pmsetup';

requires 'YAML';
requires 'Text::Xslate';
requires 'Module::Install' => 1.00;
requires 'Module::Install::AuthorTests';
requires 'Module::Install::Repository';
requires 'Module::Install::XSUtil' => 0.30;
requires 'Test::Spelling';
requires 'Test::Perl::Critic';
requires 'Test::Pod';

install_script 'pmsetup';
use_test_base;
auto_include;
WriteAll;
