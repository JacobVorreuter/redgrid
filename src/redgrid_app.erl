-module(redgrid_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1, load/0]).

load() ->
    application:start(redgrid).    

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    redgrid_sup:start_link().

stop(_State) ->
    ok.
