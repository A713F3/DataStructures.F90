! Linked list module
module linked_list
    implicit none
    
        ! list node that holds integer
        type list_node
            integer :: data
            type(list_node), pointer :: next
        end type
        
    contains
        ! create a list in range 1 .. n
        function create_list(n)
        implicit none
            type(list_node), pointer :: iter
            type(list_node), target :: create_list
            integer :: n, i
    
            iter=>create_list
    
            do i=1, n
                iter%data = i
    
                allocate(iter%next)
                iter=>iter%next
    
            end do
            
        end function create_list
    
        ! create list from integer array
        function create_list_from_array(a, n)
            implicit none
                integer :: n, i
                integer, dimension(n) :: a
                type(list_node), pointer :: iter
                type(list_node), target :: create_list_from_array
        
                iter=>create_list_from_array
        
                do i=1, n
                    iter%data = a(i)
        
                    allocate(iter%next)
                    iter=>iter%next
        
                end do
                
            end function create_list_from_array
        
        ! print list
        subroutine print_list(p)
            type(list_node), target :: p
            type(list_node), pointer :: iter
            integer :: i
            i = 1
    
            iter=>p
            
            do while (associated(iter%next))
                print*, 'node', i, ': ', iter%data
                iter=>iter%next
                i = i + 1
            end do
    
        end subroutine print_list 
    
    end module linked_list