
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601",
    "Sort::Versions" => 0,
    "Test::More" => "0.98"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Crypt password utilities",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Crypt-Password-Util",
  "dist_version" => "0.09",
  "license" => "perl",
  "module_name" => "Crypt::Password::Util",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "UUID::Random::Patch::UseMRS" => 0,
    "perl" => "5.010001"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
