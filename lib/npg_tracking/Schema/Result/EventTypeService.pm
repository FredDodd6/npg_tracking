use utf8;
package npg_tracking::Schema::Result::EventTypeService;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

npg_tracking::Schema::Result::EventTypeService

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

=head1 TABLE: C<event_type_service>

=cut

__PACKAGE__->table("event_type_service");

=head1 ACCESSORS

=head2 id_event_type_service

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 id_ext_service

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 id_event_type

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id_event_type_service",
  {
    data_type => "bigint",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "id_ext_service",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "id_event_type",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_event_type_service>

=back

=cut

__PACKAGE__->set_primary_key("id_event_type_service");

=head1 RELATIONS

=head2 event_type

Type: belongs_to

Related object: L<npg_tracking::Schema::Result::EventType>

=cut

__PACKAGE__->belongs_to(
  "event_type",
  "npg_tracking::Schema::Result::EventType",
  { id_event_type => "id_event_type" },
  { is_deferrable => 1, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 ext_service

Type: belongs_to

Related object: L<npg_tracking::Schema::Result::ExtService>

=cut

__PACKAGE__->belongs_to(
  "ext_service",
  "npg_tracking::Schema::Result::ExtService",
  { id_ext_service => "id_ext_service" },
  { is_deferrable => 1, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07035 @ 2013-07-22 17:13:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nGEXQ/eENrzYbUvGusDQeg
# Author:        david.jackson@sanger.ac.uk
# Maintainer:    $Author: jo3 $
# Created:       2010-04-08
# Last Modified: $Date: 2010-09-13 18:21:28 +0100 (Mon, 13 Sep 2010) $
# Id:            $Id: EventTypeService.pm 10867 2010-09-13 17:21:28Z jo3 $
# $HeadURL: svn+ssh://svn.internal.sanger.ac.uk/repos/svn/new-pipeline-dev/npg-tracking/trunk/lib/npg_tracking/Schema/Result/EventTypeService.pm $

use Readonly; Readonly::Scalar our $VERSION => do { my ($r) = q$LastChangedRevision: 10867 $ =~ /(\d+)/mxs; $r; };

1;

