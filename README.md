# CS2D Extended Wrapper
This is an extended wrapper for CS2D.

# How to use it
**CS2DWrapper.lua:** Contains old and new functions. CS2D is used as namespace for the functions.
```
if cs2d~=true then dofile("sys/lua/cs2dwrapper.lua") end
```
**wrapper.lua:** Replacement for the original wrapper.lua
```
if wrapper~=true then dofile("sys/lua/wrapper.lua") end
```
**wrapperExt.lua:** Contains only the new functions.
```
if wrapperExt~=true then dofile("sys/lua/wrapperExt.lua") end
```
