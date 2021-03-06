package Corinna::Schema::Union;
use utf8;
use strict;
use warnings;

use parent 'Corinna::Schema::Object';

our $VERSION = '2.0';

Corinna::Schema::Union->mk_accessors(qw(memberTypes memberClasses));

1;

__END__

=head1 NAME

B<Corinna::Schema::Union> - Class that represents the META information about a W3C schema B<union>.

=head1 WARNING

This module is used internally by L<Corinna>. You do not normally know much
about this module to actually use L<Corinna>.  It is documented here for
completeness and for L<Corinna> developers. Do not count on the interface of
this module. It may change in any of the subsequent releases. You have been
warned.

=head1 ISA

This class descends from L<Corinna::Schema::Object>.

=head1 DESCRIPTION

B<Corinna::Schema::Union> is a data-oriented object class that reprsents a W3C
B<union>. It is parsed from the W3C schema. Objects of this class contain META
information about the W3C schema B<union> that they represent. It is not used
a building block for the produced B<schema model> however.  Objects of this
class have an existence only in the node stack of schema parser.  They are
used to build the B<simple type>s that they are defined under. They are then
destroyed.

Like other schema object classes, this is a data-oriented object class,
meaning it doesn't have many methods other than a constructor and various
accessors.

=head1 METHODS

=head2 CONSTRUCTORS

=head4 new()

  $class->new(%fields)

B<CONSTRUCTOR>, inherited.

The new() constructor method instantiates a new object. It is inheritable.

Any -named- fields that are passed as parameters are initialized to those
values within the newly created object.

=head2 ACCESSORS

=head3 Inherited accessors

Several accessors are inherited by this class from its ancestor
L<Corinna::Schema::Object>.  Please see L<Corinna::Schema::Object> for a
documentation of those.

=head3 Accessors defined here

=head4 memberTypes()

  my $mt = $object->memberTypes();  # GET
  $object->memberTypes($mt);        # SET

This is a W3C facet. For more information please refer to W3C XML schema
documentation.

This is a whitespace separated list of member type names in the context of a
W3C B<union>.  The value is retrieved from the W3C schema and further enriched
by the implicit (local) type names by the schema parser. It is later used for
validation.

This accessor is created by a call to B<mk_accessors> from L<Class::Accessor>.


=head4 memberClasses()

  my $mc = $object->memberClasses();  # GET
  $object->memberClasses($mc);        # SET

This is NOT a W3C facet. It is computed.

This is a reference to an array of Perl classes each of which represent a
I<type> mentioned in L</memberTypes()>.  So it makes sense only in a W3C
B<union> context. The value is computed at schema model resolution time. It is
later used for validation.

This accessor is created by a call to B<mk_accessors> from L<Class::Accessor>.
.

=head1 BUGS & CAVEATS

There no known bugs at this time, but this doesn't mean there are aren't any.
Note that, although some testing was done prior to releasing the module, this
should still be considered alpha code.  So use it at your own risk.

Note that there may be other bugs or limitations that the author is not aware
of.

=head1 AUTHOR

Ayhan Ulusoy <dev(at)ulusoy(dot)name>

=head1 COPYRIGHT

  Copyright (C) 2006-2007 Ayhan Ulusoy. All Rights Reserved.

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.

=head1 SEE ALSO

See also L<Corinna>, L<Corinna::ComplexType>, L<Corinna::SimpleType>

If you are curious about the implementation, see L<Corinna::Schema::Parser>,
L<Corinna::Schema::Model>, L<Corinna::Generator>.

If you really want to dig in, see L<Corinna::Schema::Attribute>,
L<Corinna::Schema::AttributeGroup>, L<Corinna::Schema::ComplexType>,
L<Corinna::Schema::Element>, L<Corinna::Schema::Group>,
L<Corinna::Schema::List>, L<Corinna::Schema::SimpleType>,
L<Corinna::Schema::Type>, L<Corinna::Schema::Object>

=cut
