use utf8;
package npg_tracking::Schema::Result::StCache;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

npg_tracking::Schema::Result::StCache

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<st_cache>

=cut

__PACKAGE__->table("st_cache");

=head1 ACCESSORS

=head2 id_cache

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 id_run

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 type

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 content

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id_cache",
  {
    data_type => "bigint",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "id_run",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "type",
  { data_type => "char", default_value => "", is_nullable => 0, size => 64 },
  "content",
  { data_type => "char", default_value => "", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_cache>

=back

=cut

__PACKAGE__->set_primary_key("id_cache");

=head1 RELATIONS

=head2 run

Type: belongs_to

Related object: L<npg_tracking::Schema::Result::Run>

=cut

__PACKAGE__->belongs_to(
  "run",
  "npg_tracking::Schema::Result::Run",
  { id_run => "id_run" },
  { is_deferrable => 1, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07035 @ 2013-07-22 17:13:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Ve6GAbGXFqPKlQ3lnzQqZw
# Author:        david.jackson@sanger.ac.uk
# Maintainer:    $Author: jo3 $
# Created:       2010-04-08
# Last Modified: $Date: 2010-09-13 18:21:28 +0100 (Mon, 13 Sep 2010) $
# Id:            $Id: StCache.pm 10867 2010-09-13 17:21:28Z jo3 $
# $HeadURL: svn+ssh://svn.internal.sanger.ac.uk/repos/svn/new-pipeline-dev/npg-tracking/trunk/lib/npg_tracking/Schema/Result/StCache.pm $

use Readonly; Readonly::Scalar our $VERSION => do { my ($r) = q$LastChangedRevision: 10867 $ =~ /(\d+)/mxs; $r; };

1;

