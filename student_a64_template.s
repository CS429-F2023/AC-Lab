  // This is the general format of an assembly-language program file.
    // Written by: REPLACE THIS WITH YOUR NAME AND UT EID
    .arch armv8-a
    .text
    // Code for all functions go here.

    // ***** WEEK 1 deliverables *****
    // Every function starts from the .align below this line ...
    .align  2
    .p2align 3,,7
    .global popcntRD
    .type   popcntRD, %function
popcntRD:
    // (STUDENT TODO) Code for popcntRD goes here.
    // Input parameter n is passed in X0.
    // Output value is returned in X0.
    add x0, x0, x0
.L1:
    add x1, x0, x0
.L2:    
    subs x0, x1, x0
.L3:

    ret
    .size   popcntRD, .-popcntRD
    // ... and ends with the .size above this line.

    // Every function starts from the .align below this line ...
    .align  2
    .p2align 3,,7
    .global BCD_to_long
    .type   BCD_to_long, %function
BCD_to_long:
    // (STUDENT TODO) Code for BCD_to_long goes here.
    // Input parameter buf is passed in X0.
    // Output value is returned in X0.
    ret
    .size   BCD_to_long, .-BCD_to_long
    // ... and ends with the .size above this line.

    // Every function starts from the .align below this line ...
    .align  2
    .p2align 3,,7
    .global unicode_to_UTF8
    .type   unicode_to_UTF8, %function
unicode_to_UTF8:
    // (STUDENT TODO) Code for unicode_to_UTF8 goes here.
    // Input parameter a is passed in X0; input parameter utf8 is passed in X1.
    // There are no output values.
    ret
    .size   unicode_to_UTF8, .-unicode_to_UTF8
    // ... and ends with the .size above this line.

    // Every function starts from the .align below this line ...
    .align  2
    .p2align 3,,7
    .global matrix_transpose
    .type   matrix_transpose, %function
matrix_transpose:
    // (STUDENT TODO) Code for matrix_transpose goes here.
    // Input parameter ptr_in is passed in X0; input parameter prt_out is passed in X1;
    //  input parameter dimension is passed in X2
    // Output value is returned in X0.
    ret
    .size   matrix_transpose, .-matrix_transpose
    // ... and ends with the .size above this line.




    // ***** WEEK 2 deliverables *****

    // Every function starts from the .align below this line ...
    .align  2
    .p2align 3,,7
    .global ustrncmp
    .type   ustrncmp, %function
ustrncmp:
    // (STUDENT TODO) Code for ustrncmp goes here.
    // Input parameter str1 is passed in X0; input parameter str2 is passed in X1;
    //  input parameter num is passed in X2
    // Output value is returned in X0.
    ret
    .size   ustrncmp, .-ustrncmp
    // ... and ends with the .size above this line.

    // Every function starts from the .align below this line ...
    .align  2
    .p2align 3,,7
    .global gcd_rec
    .type   gcd_rec, %function
gcd_rec:
    // (STUDENT TODO) Code for gcd_rec goes here.
    // Input parameter a is passed in X0; input parameter b is passed in X1.
    // Output value is returned in X0.
    ret
    .size   gcd_rec, .-gcd_rec
    // ... and ends with the .size above this line.

    // Every function starts from the .align below this line ...
    .align  2
    .p2align 3,,7
    .global tree_traversal
    .type   tree_traversal, %function
tree_traversal:
    // (STUDENT TODO) Code for tree_traversal goes here.
    // Input parameter root is passed in X0; input parameter bit_string is passed in X1;
    //  input parameter bit_string_length is passed in X2
    // Output value is returned in X0.
    ret
    .size   tree_traversal, .-tree_traversal
    // ... and ends with the .size above this line.

    // Every function starts from the .align below this line ...
    .align  2
    .p2align 3,,7
    .global pattern_table_update
    .type   pattern_table_update, %function
pattern_table_update:
    // (STUDENT TODO) Code for pattern_table_update goes here.
    // Input parameter pattern_table is passed in X0; input parameter history is passed in X1;
    //  input parameter incoming_state is passed in X2; 
    //  input parameter num_incoming_state_changes is passed in X3
    // Output value is returned in X0.
    ret
    .size   pattern_table_update, .-pattern_table_update
    // ... and ends with the .size above this line.

    .section    .rodata
    .align  4
    // (STUDENT TODO) Any read-only global variables go here.

    .data
    // (STUDENT TODO) Any modifiable global variables go here.

    .align  3
