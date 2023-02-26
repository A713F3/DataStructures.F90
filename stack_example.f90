program stack_example
    use stack_module
    implicit none
    
    type(stack), pointer :: s1
    
    call push(s1, 10)
    call push(s1, 20)
    call push(s1, 30)
    
    print*, '1: ', top(s1)
    
    call pop(s1)
    
    print*, '2: ', top(s1)
    
    call pop(s1)
    
    print*, '3: ', top(s1)
    
end program stack_example