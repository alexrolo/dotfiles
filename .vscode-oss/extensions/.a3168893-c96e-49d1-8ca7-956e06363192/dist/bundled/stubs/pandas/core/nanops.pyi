bn = ...

def set_use_bottleneck(v: bool = ...) -> None: ...

class disallow:
    dtypes = ...
    def __init__(self, *dtypes) -> None: ...
    def check(self, obj) -> bool: ...
    def __call__(self, f): ...

class bottleneck_switch:
    name = ...
    kwargs = ...
    def __init__(self, name = ..., **kwargs) -> None: ...
    def __call__(self, alt): ...

def nanany(values, axis=..., skipna: bool=..., mask=...) : ...
def nanall(values, axis=..., skipna: bool=..., mask=...) : ...
def nansum(values, axis = ..., skipna: bool = ..., min_count: int = ..., mask = ...): ...
def nanmean(values, axis = ..., skipna: bool = ..., mask = ...): ...
def nanmedian(values, axis = ..., skipna: bool = ..., mask = ...): ...
def nanstd(values, axis = ..., skipna: bool = ..., ddof: int = ..., mask = ...): ...
def nanvar(values, axis = ..., skipna: bool = ..., ddof: int = ..., mask = ...): ...
def nansem(values, axis = ..., skipna: bool = ..., ddof: int = ..., mask = ...): ...

nanmin = ...
nanmax = ...

def nanargmax(values, axis = ..., skipna: bool = ..., mask = ...): ...
def nanargmin(values, axis = ..., skipna: bool = ..., mask = ...): ...
def nanskew(values, axis = ..., skipna: bool = ..., mask = ...): ...
def nankurt(values, axis = ..., skipna: bool = ..., mask = ...): ...
def nanprod(values, axis = ..., skipna: bool = ..., min_count: int = ..., mask = ...): ...
def nancorr(a, b, method: str = ..., min_periods = ...): ...
def get_corr_func(method): ...
def nancov(a, b, min_periods = ...): ...
def make_nancomp(op): ...

nangt = ...
nange = ...
nanlt = ...
nanle = ...
naneq = ...
nanne = ...

def nanpercentile(values, q, axis, na_value, mask, ndim, interpolation): ...