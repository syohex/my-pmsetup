use inc::Module::Install;
name 'pmsetup';
all_from 'pmsetup';

requires 'YAML';
requires 'Template';
requires 'Module::Install' => 1.00;
requires 'Module::Install::AuthorTests';
requires 'Module::Install::ReadmeMarkdownFromPod';
requires 'Module::Install::XSUtil' => 0.30;

install_script 'pmsetup';
use_test_base;
auto_include;
WriteAll;
