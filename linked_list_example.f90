program linked_list_example
    use linked_list
    implicit none

    type(list_node), target :: l1, l2
    integer, dimension(5) :: numbers

    numbers = (/ 1, 6, 9, 7, 5 /)

    l1 = create_list(3)
    l2 = create_list_from_array(numbers, 5)

    print*, 'List1:'
    call print_list(l1)

    print*, ''
    print*, 'List2:'
    call print_list(l2)

end program linked_list_example

