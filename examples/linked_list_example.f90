program linked_list_example
    use linked_list_module
    implicit none

    type(list), pointer :: l1, l2
    integer, dimension(5) :: numbers

    numbers = (/ 1, 6, 9, 7, 5 /)

    call create_list(l1, 3)
    call create_list_from_array(l2, numbers)

    print*, 'List1:'
    call print_list(l1)

    print*, ''
    print*, 'List2:'
    call print_list(l2)

end program linked_list_example

