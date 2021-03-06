%%
%% %CopyrightBegin%
%% 
%% Copyright Ericsson AB 1999-2012. All Rights Reserved.
%% 
%% The contents of this file are subject to the Erlang Public License,
%% Version 1.1, (the "License"); you may not use this file except in
%% compliance with the License. You should have received a copy of the
%% Erlang Public License along with this software. If not, it can be
%% retrieved online at http://www.erlang.org/.
%% 
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and limitations
%% under the License.
%% 
%% %CopyrightEnd%
%%

%% Purpose : Kernel Erlang as records.

%% It would be nice to incorporate some generic functions as well but
%% this could make including this file difficult.
%% N.B. the annotation field is ALWAYS the first field!

%% Kernel annotation record.
-record(k, {us,					%Used variables
	    ns,					%New variables
	    a}).				%Core annotation

%% Literals
%% NO CHARACTERS YET.
%%-record(k_char, {anno=[],val}).
-record(k_literal, {anno=[],val}).		%Only used for complex literals.
-record(k_int, {anno=[],val}).
-record(k_float, {anno=[],val}).
-record(k_atom, {anno=[],val}).
-record(k_nil, {anno=[]}).

-record(k_tuple, {anno=[],es}).
-record(k_cons, {anno=[],hd,tl}).
-record(k_binary, {anno=[],segs}).
-record(k_bin_seg, {anno=[],size,unit,type,flags,seg,next}).
-record(k_bin_int, {anno=[],size,unit,flags,val,next}).
-record(k_bin_end, {anno=[]}).
-record(k_var, {anno=[],name}).

-record(k_local, {anno=[],name,arity}).
-record(k_remote, {anno=[],mod,name,arity}).
-record(k_internal, {anno=[],name,arity}).

-record(k_mdef, {anno=[],name,exports,attributes,body}).
-record(k_fdef, {anno=[],func,arity,vars,body}).

-record(k_seq, {anno=[],arg,body}).
-record(k_put, {anno=[],arg,ret=[]}).
-record(k_bif, {anno=[],op,args,ret=[]}).
-record(k_test, {anno=[],op,args}).
-record(k_call, {anno=[],op,args,ret=[]}).
-record(k_enter, {anno=[],op,args}).
-record(k_receive, {anno=[],var,body,timeout,action,ret=[]}).
-record(k_receive_accept, {anno=[]}).
-record(k_receive_next, {anno=[]}).
-record(k_try, {anno=[],arg,vars,body,evars,handler,ret=[]}).
-record(k_try_enter, {anno=[],arg,vars,body,evars,handler}).
-record(k_catch, {anno=[],body,ret=[]}).

-record(k_guard_match, {anno=[],vars,body,ret=[]}).
-record(k_match, {anno=[],vars,body,ret=[]}).
-record(k_alt, {anno=[],first,then}).
-record(k_select, {anno=[],var,types}).
-record(k_type_clause, {anno=[],type,values}).
-record(k_val_clause, {anno=[],val,body}).
-record(k_guard, {anno=[],clauses}).
-record(k_guard_clause, {anno=[],guard,body}).

-record(k_break, {anno=[],args=[]}).
-record(k_guard_break, {anno=[],args=[]}).
-record(k_return, {anno=[],args=[]}).

%%k_get_anno(Thing) -> element(2, Thing).
%%k_set_anno(Thing, Anno) -> setelement(2, Thing, Anno).
