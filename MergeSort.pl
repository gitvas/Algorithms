use strict;



my @input_array = (12,9,54,37,86);


sub mergesort
{
    my $first_array_pa = $_[0];
    my $second_array_pa = $_[1];
    my @merged_array=();

    my $pointer_second_s = 0;

    foreach $value (@$first_array_pa)
    {
        if($value > $second_array_pa[$pointer_second_s])
        {
            $merged_array[@merged_array-1]
        }
    }
}