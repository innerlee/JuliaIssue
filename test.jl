
immutable Handle
    p::Ptr{Void}
end

mhand = Handle(C_NULL);
ph = pointer([mhand])
pstr = pointer("")

ccall((Libdl.dlopen("liblib.so"), "fun"), Cint,
    (Handle, Cstring, Cstring,Handle, Handle, Handle, Handle, Ptr{Handle}),
    mhand, pstr, pstr, mhand, mhand, mhand, mhand, ph)

# $ it will output the following error.

# signal (11): Segmentation fault
# while loading /home/lizz/dev/dump/test.jl, in expression starting on line 10
# unknown function (ip: 0x7f641f91fd02)
# unknown function (ip: 0x7f641f920ec9)
# unknown function (ip: 0x7f641f9247f1)
# unknown function (ip: 0x7f641f921aac)
# unknown function (ip: 0x7f641f9265c0)
# unknown function (ip: 0x7f641f9b4fdb)
# unknown function (ip: 0x7f641f9b6890)
# unknown function (ip: 0x7f641f80c203)
# unknown function (ip: 0x7f642017a89e)
# unknown function (ip: 0x7f642017ac1a)
# unknown function (ip: 0x7f642017a458)
# operator() at /home/centos/buildbot/slave/package_tarball64/build/src/jitlayers.cpp:330
# operator() at /home/centos/local/include/c++/5.1.0/functional:2271
# addModule at /home/centos/buildbot/slave/package_tarball64/build/src/jitlayers.cpp:433
# jl_finalize_function at /home/centos/buildbot/slave/package_tarball64/build/src/jitlayers.cpp:665
# jl_generate_fptr at /home/centos/buildbot/slave/package_tarball64/build/src/codegen.cpp:1028
# jl_call_method_internal at /home/centos/buildbot/slave/package_tarball64/build/src/julia_internal.h:84
# jl_parse_eval_all at /home/centos/buildbot/slave/package_tarball64/build/src/ast.c:780
# jl_load at /home/centos/buildbot/slave/package_tarball64/build/src/toplevel.c:585
# include_from_node1 at ./loading.jl:426
# unknown function (ip: 0x7f641b29f2cc)
# jl_call_method_internal at /home/centos/buildbot/slave/package_tarball64/build/src/julia_internal.h:88
# process_options at ./client.jl:266
# _start at ./client.jl:322
# unknown function (ip: 0x7f641b2da754)
# jl_call_method_internal at /home/centos/buildbot/slave/package_tarball64/build/src/julia_internal.h:88
# unknown function (ip: 0x401db5)
# unknown function (ip: 0x4017fa)
# unknown function (ip: 0x7f641eb4b82f)
# unknown function (ip: 0x401840)
# Allocations: 958286 (Pool: 957204; Big: 1082); GC: 1
# Segmentation fault (core dumped)
