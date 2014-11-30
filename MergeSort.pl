use strict;

# my @input_array_a = <STDIN>;
# chop(@input_array_a);
# my @output_array_a = srini_mergesort(@input_array_a);
# print "@output_array_a";

sub srini_mergesort
{
    my @array_a = @_;
    my $middle_s = @array_a/2;

    # Point 1
    if(@array_a <= 1)
    {
        return @array_a;
    }
    else
    {

        my @first_array_a = srini_mergesort(@array_a[0..$middle_s-1]);
        my @second_array_a = srini_mergesort(@array_a[$middle_s..@array_a-1]);

        my @merged_array_a=();

        my $pointer_second_s = 0;
        my $pointer_first_s = 0;

        while(($pointer_first_s < @first_array_a) && ($pointer_second_s < @second_array_a))
        {
            if($first_array_a[$pointer_first_s] < $second_array_a[$pointer_second_s])
            {
                @merged_array_a = (@merged_array_a,@first_array_a[$pointer_first_s]);
                $pointer_first_s++;
            }
            else
            {
                @merged_array_a = (@merged_array_a,@second_array_a[$pointer_second_s]);
                $pointer_second_s++;
            }
        }

        if($pointer_first_s < @first_array_a)
        {
            @merged_array_a = (@merged_array_a,@first_array_a[$pointer_first_s..@first_array_a-1]);
        }
        elsif($pointer_second_s < @second_array_a)
        {
            @merged_array_a = (@merged_array_a,@second_array_a[$pointer_second_s..@second_array_a-1]);
        }
        return @merged_array_a; 
    }

}
