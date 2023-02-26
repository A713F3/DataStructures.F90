module stack_module
    implicit none

    type stack
        integer :: data
        type(stack), pointer :: next_node
    end type

contains

    subroutine push(s, d)
        type(stack), pointer :: s
        integer :: d

        type(stack), pointer :: node

        allocate(node)

        node%data = d
        node%next_node=>s

        s => node
    end subroutine push

    function top(s) result(node_val)
        type(stack), pointer :: s
        integer :: node_val

        node_val = s%data
    end function top

    subroutine pop(s)
        type(stack), pointer :: s, prev

        prev=>s

        s=>s%next_node

        deallocate(prev)
    end subroutine pop

end module stack_module