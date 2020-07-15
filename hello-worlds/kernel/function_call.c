int callee(int);

void caller(){
    callee(0xdede);
}

int callee(int my_arg){
    return my_arg;
}