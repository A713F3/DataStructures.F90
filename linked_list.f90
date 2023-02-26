! Linked list module
module linked_list_module
    implicit none
    
        ! list node that holds integer
        type list
            integer :: data
            type(list), pointer :: next
        end type
        
    contains
        ! create a list in range 1 .. n
        subroutine create_list(lst, n)
        implicit none
            type(list), pointer :: iter, lst
            integer :: n, i
    
            iter=>lst
    
            do i=1, n
                iter%data = i
    
                allocate(iter%next)
                iter=>iter%next
    
            end do
            
        end subroutine create_list
    
        ! create list from integer array
        subroutine create_list_from_array(lst, arr)
            implicit none
                integer, dimension(:), intent(in) :: arr
                type(list), pointer :: iter, lst
                integer :: i, n

                iter=>lst
                
                n = size(arr)
                do i=1, n
                    iter%data = arr(i)
        
                    allocate(iter%next)
                    iter=>iter%next
        
                end do
                
            end subroutine create_list_from_array
        
        ! print list
        subroutine print_list(lst)
            type(list), pointer :: lst, iter
            integer :: i
            i = 1
    
            iter=>lst
            
            do while (associated(iter%next))
                print*, 'node', i, ': ', iter%data
                iter=>iter%next
                i = i + 1
            end do
    
        end subroutine print_list 
    
    end module linked_list_module