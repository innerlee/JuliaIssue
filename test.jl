
immutable Info
    n::Cint
end

type Obj
    components
end

three = Obj([1, 2, 3])

function get_info(h::Ptr{Void}, pinfo::Ptr{Info})
    obj = unsafe_pointer_to_objref(h)
    println("get object $obj")
    unsafe_store!(pinfo, Info(length(obj.components)))
    Cint(0)
end

fn = cfunction(get_info, Cint, (Ptr{Void}, Ptr{Info}))

ccall(Libdl.dlsym(Libdl.dlopen("liblib.so"), "test"), Cint,
    (Ptr{Void}, Ptr{Void}),
    pointer_from_objref(three), fn)
