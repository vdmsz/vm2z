-- VM2 bootstrap-decoy-values: ["Versio","v1.h4.8","vm2-canary:380aea7a6f617cb7:293d38a5bfa38c66"]
function bqs(...)
 local r=select(1,...)
 if r~=nil then return error(r,0) end
 local rea=coroutine.wrap(function() error("VM2_DEBUG_FAILURE:guard "..(type(debug)=="table" and type(debug.traceback)=="function" and debug.traceback() or "no traceback"),0) end)
 return rea()
end
function fni(...)
 local r=select(1,...)
 if r~=nil then return error(r,0) end
 local viw,wkg=pcall(function() error("VM2_DEBUG_FAILURE:guard "..(type(debug)=="table" and type(debug.traceback)=="function" and debug.traceback() or "no traceback"),0) end)
 if viw then error(nil,0) end
 return error(wkg,0)
end
function bwb(...)
 local r=select(1,...)
 if r~=nil then return error(r,0) end
 local tuy=coroutine.create(function() error("VM2_DEBUG_FAILURE:guard "..(type(debug)=="table" and type(debug.traceback)=="function" and debug.traceback() or "no traceback"),0) end)
 local viw,wkg=coroutine.resume(tuy)
 if viw then error(nil,0) end
 return error(wkg,0)
end
function gix(...)
 local r=select(1,...)
 if r~=nil then return error(r,0) end
 local zey={false}
 if zey[1] then error("VM2_DEBUG_FAILURE:guard "..(type(debug)=="table" and type(debug.traceback)=="function" and debug.traceback() or "no traceback"),0) end
 zey[1]=true
 return error("VM2_DEBUG_FAILURE:guard "..(type(debug)=="table" and type(debug.traceback)=="function" and debug.traceback() or "no traceback"),0)
end
function msm(...)
 local r=select(1,...)
 if r~=nil then return error(r,0) end
 local jus=function() error("VM2_DEBUG_FAILURE:guard "..(type(debug)=="table" and type(debug.traceback)=="function" and debug.traceback() or "no traceback"),0) end
 local viw,wkg=pcall(jus)
 if viw then return error(nil,0) end
 return error(wkg,0)
end
function pwt(_s)
 local _k=string.char(109,88,10,99,240,61,136,33,173,147,142,188,155,150,207,19)
 local _o={}
 local function _n(_v)
  if _v>=48 and _v<=57 then return _v-48 end
  if _v>=97 and _v<=102 then return _v-87 end
  msm(); bqs("vm",0)
 end
 for _i=1,#_s,2 do
  local _p=(_i-1)/2
  _o[#_o+1]=string.char(bit32.bxor(
   _n(string.byte(_s,_i))*16+_n(string.byte(_s,_i+1)),
  string.byte(_k,_p%#_k+1)
  ))
 end
 return table.concat(_o)
end
local cre={pwt('1e307f059651ed1b'),pwt('1b35384e935cfb4480e0fad9fcf9f571023c7359'),pwt('1b35384e935cfb4480e0fad9fcf9f5670c3f30'),pwt('1b35384e935cfb4480e0fad9fcf9f560192a6f029d07'),pwt('1b35384e8349fa44ccfeb4d8f2f1aa601962630d9949b248c3e7ebdbe9ffbb6a403f6b179507'),pwt('1b35384e9550ea44c9f7ebd8b6fdaa6a57'),pwt('1b35384e9550ea44c9f7ebd8b6e6ae6a01376b07ca'),pwt('1b35384e8349fa44ccfeb4d8f2f1aa6019626c0a9e5ce41bc4fdfad9fce4a66714756d028458b2'),pwt('1e2c780a9e5a'),pwt('032d6701954f'),pwt('0f37650f955ce6'),pwt('1939680f95'),pwt('0b2d64008454e74f'),pwt('5d693850c408be1695aaefdef8f2aa75'),pwt('2c1a4927b57bcf69e4d9c5f0d6d880433c0a5937a56bdf79f4c9efdef8f2aa750a3063099b51e54fc2e3ffcee8e2ba651a207319c00cba1299a6b88ba3afe24c')}
function __VM2_DEBUG_EMIT(myq,...)
 local om=tostring(myq)
 for jxn=1,select("#",...) do om=om.." "..tostring(select(jxn,...)) end
 local ycx=type(aca)==cre[12] and rawget(aca,"__VM2_DEBUG_HOOK") or nil
 if type(ycx)==cre[13] then pcall(ycx,om) elseif type(print)==cre[13] then print("VM2_DEBUG "..om) end
end
function __VM2_AUTH_MARK(...) __VM2_DEBUG_EMIT("auth",...) end
function __VM2_AUTH_KEY(...) __VM2_DEBUG_EMIT("key",...) end
function __VM2_DUMP_AUTH(...) __VM2_DEBUG_EMIT("auth-data",...) end
function __VM2_DUMP_KEYS(...) __VM2_DEBUG_EMIT("keys",...) end
function __VM2_DUMP_FIELDS(...) __VM2_DEBUG_EMIT("fields",...) end
function gfo()
    local z=string.char(97,53,242,195,189,77,55,246,95,13,162,129,167,68,47,184,178,180,40,175,45,101,106,152,255,221,214,31,83,179,159,85)
    local tp=table.unpack or unpack
        local function ew(yhs,md,yn)
         local xj=2166136261
         local wy=2246822519
         local ct=0
         local function id(etx)
          ct=ct+1
          xj=bit32.band(bit32.bxor(xj,etx+ct*374761393)*1000003+2654435761,4294967295)
          wy=bit32.band(bit32.bxor(wy,etx+ct*668265263)*1000033+2246822519,4294967295)
         end
         for jxn=1,#z do id(string.byte(z,jxn)) end
         for jxn=1,#md do id(string.byte(md,jxn)) end
         for jxn=1,#yn do id(yn[jxn]) end
         for jxn=1,#yhs do id(yhs[jxn]) end
         return bit32.bxor(xj,wy)
        end
        local function oh(yhs,md,yn,fj)
         if ew(yhs,md,yn)~=fj then gix(); bqs("vm",0) end
         local xj=2166136261
         local wy=2246822519
         for jxn=1,#z do
          local etx=string.byte(z,jxn)
          xj=bit32.band(bit32.bxor(xj,etx+jxn*16777619)*1000003+2654435761,4294967295)
          wy=bit32.band(bit32.bxor(wy,etx+jxn*374761393)*1000033+2246822519,4294967295)
         end
         for jxn=1,#md do
          local etx=string.byte(md,jxn)
          xj=bit32.band(bit32.bxor(xj,etx+(#z+jxn)*16777619)*1000003+2654435761,4294967295)
          wy=bit32.band(bit32.bxor(wy,etx+(#z+jxn)*374761393)*1000033+2246822519,4294967295)
         end
         xj=bit32.band(bit32.bxor(xj,#md*374761393+1442695041)*1000033+2654435761,4294967295)
         wy=bit32.band(bit32.bxor(wy,#md*668265263+2246822519)*1000033+2246822519,4294967295)
         for jxn=1,#yn do
          xj=bit32.band(bit32.bxor(xj,yn[jxn]+(#md+jxn)*374761393)*1000033+1442695041,4294967295)
          wy=bit32.band(bit32.bxor(wy,yn[jxn]+(#md+jxn)*668265263)*1000033+2246822519,4294967295)
         end
         local bjv={}
         for jxn=1,#yhs do
          xj=bit32.band(bit32.bxor(xj,jxn*374761393)*1000033+1442695041,4294967295)
          wy=bit32.band(bit32.bxor(wy,jxn*668265263)*1000033+2246822519,4294967295)
          local ic=((jxn-1)%4)*8
          bjv[jxn]=string.char(bit32.bxor(yhs[jxn],bit32.band(bit32.rshift(bit32.bxor(xj,wy),ic),255)))
         end
         return table.concat(bjv)
        end
        local function oe(yhs,md,yn,fj)
         if ew(yhs,md,yn)~=fj then bwb(); gix("vm",0) end
         local xj=2166136261
         local wy=2246822519
         for jxn=1,#z do
          local etx=string.byte(z,jxn)
          xj=bit32.band(bit32.bxor(xj,etx+jxn*16777619)*1000003+2654435761,4294967295)
          wy=bit32.band(bit32.bxor(wy,etx+jxn*374761393)*1000033+2246822519,4294967295)
         end
         for jxn=1,#md do
          local etx=string.byte(md,jxn)
          xj=bit32.band(bit32.bxor(xj,etx+(#z+jxn)*16777619)*1000003+2654435761,4294967295)
          wy=bit32.band(bit32.bxor(wy,etx+(#z+jxn)*374761393)*1000033+2246822519,4294967295)
         end
         xj=bit32.band(bit32.bxor(xj,#md*374761393+1442695041)*1000033+2654435761,4294967295)
         wy=bit32.band(bit32.bxor(wy,#md*668265263+2246822519)*1000033+2246822519,4294967295)
         for jxn=1,#yn do
          xj=bit32.band(bit32.bxor(xj,yn[jxn]+(#md+jxn)*374761393)*1000033+1442695041,4294967295)
          wy=bit32.band(bit32.bxor(wy,yn[jxn]+(#md+jxn)*668265263)*1000033+2246822519,4294967295)
         end
         local bxc={}
         for jxn=1,#yhs,4 do
          local wgr=0
          for isc=0,3 do
           xj=bit32.band(bit32.bxor(xj,(jxn+isc)*374761393)*1000033+1442695041,4294967295)
           wy=bit32.band(bit32.bxor(wy,(jxn+isc)*668265263)*1000033+2246822519,4294967295)
           wgr=wgr+bit32.bxor(yhs[jxn+isc] or 0,bit32.band(bit32.rshift(bit32.bxor(xj,wy),(isc%4)*8),255))*2^(isc*8)
          end
          bxc[#bxc+1]=wgr
         end
         return bxc
        end
        local bs=false
        local vu={}
        local nc={}
        local ms=0
        local eg={5,2,4}
        local px=0
        local sy=0
        local gy=0x9E3779B9
        local function oq(vor,xi,vv,lnx)
         if type(vor)~=cre[10] or vor<1 or vor>#nc then gix(); bqs("vm",0) end
         local ep=0
         for jxn=1,#eg do
          if eg[jxn]==vor then ep=jxn break end
         end
         if ep==0 or px>=ep then gix(); bqs("vm",0) end
         if type(__VM2_AUTH_MARK)==cre[13] then __VM2_AUTH_MARK("stage:"..tostring(vor)..":"..tostring(xi)..":"..tostring(vv)..":"..tostring(ms)) end
         if xi~=nc[vor] then gix(); bqs("vm",0) end
         gy=bit32.bxor(gy,nc[vor],vv,ms)
         px=ep
         sy=bit32.bor(sy,bit32.lshift(1,ep-1))
         if px==#eg
            and sy~=bit32.lshift(1,#eg)-1 then
          gix(); bqs("vm",0)
         end
         ms=lnx
        end
function nj(yhs,ixf)
 return bit32.bor(bit32.lshift(yhs,ixf),bit32.rshift(yhs,32-ixf))
end
function es(ppx)
 local hbx={324508639,610839777,3285377520,523124044,2309737967,271136839,1432778632,2712847316}
 for jxn=1,#ppx do
  local vor=(jxn-1)%8+1
  local gj=((vor-1)*3+5)%8+1
  hbx[vor]=bit32.band(hbx[vor]+string.byte(ppx,jxn)+(jxn-1)*73244475,4294967295)
  hbx[gj]=bit32.band(bit32.bxor(hbx[gj],hbx[vor]),4294967295)
 end
 for uph=0,7 do
  for jxn=1,8 do
   local gj=(jxn+uph)%8+1
   hbx[jxn]=bit32.band(hbx[jxn]+hbx[gj]+bit32.bxor(2654435769,uph*73244475),4294967295)
  end
 end
 local bjv={}
 for jxn=1,8 do
  local yhs=hbx[jxn]
  bjv[#bjv+1]=string.char(bit32.band(yhs,255),bit32.band(bit32.rshift(yhs,8),255),bit32.band(bit32.rshift(yhs,16),255),bit32.band(bit32.rshift(yhs,24),255))
 end
 return table.concat(bjv)
end
function uyx(xb,jt)
 local hbx={324508639,610839777,3285377520,523124044,2309737967,271136839,1432778632,2712847316}
 local wv=#xb*4
 local rm=wv+#jt
 local function lks(jxn)
  if jxn<=wv then
   local wgr=xb[math.floor((jxn-1)/4)+1]
   return bit32.band(bit32.rshift(wgr,((jxn-1)%4)*8),255)
  end
  return string.byte(jt,jxn-wv)
 end
 for jxn=1,rm do
  local vor=(jxn-1)%8+1
  local gj=((vor-1)*3+5)%8+1
  hbx[vor]=bit32.band(hbx[vor]+lks(jxn)+(jxn-1)*73244475,4294967295)
  hbx[gj]=bit32.band(bit32.bxor(hbx[gj],hbx[vor]),4294967295)
 end
 for uph=0,7 do
  for jxn=1,8 do
   local gj=(jxn+uph)%8+1
   hbx[jxn]=bit32.band(hbx[jxn]+hbx[gj]+bit32.bxor(2654435769,uph*73244475),4294967295)
  end
 end
 local bjv={}
 for jxn=1,8 do
  local yhs=hbx[jxn]
  bjv[#bjv+1]=string.char(bit32.band(yhs,255),bit32.band(bit32.rshift(yhs,8),255),bit32.band(bit32.rshift(yhs,16),255),bit32.band(bit32.rshift(yhs,24),255))
 end
 return table.concat(bjv)
end
function ke(quo,fc)
 local hbx={324508639,610839777,3285377520,523124044,2309737967,271136839,1432778632,2712847316}
 local az=type(quo)==cre[12] and #quo*4 or #quo
 local function ia(jxn)
  if type(quo)~=cre[12] then return string.byte(quo,jxn) end
  return bit32.band(bit32.rshift(quo[math.floor((jxn-1)/4)+1],((jxn-1)%4)*8),255)
 end
 local rw=bit32.band(ia(1),7)
 local gi=1+2*bit32.band(ia(2),3)
 local kj=bit32.band(ia(3),7)
 local yt=1+2*bit32.band(ia(4),3)
 local ek=1+2*bit32.band(ia(7),3)
 local pt=1+2*bit32.band(ia(8),3)
 local vs=8+bit32.band(ia(5),7)
 local pl=bit32.band(ia(6),7)
 local ka=bit32.bxor(73244475,ia(9)+ia(10)*256+ia(11)*65536+ia(12)*16777216)
 local vi=bit32.bxor(118178911,ia(13)+ia(14)*256+ia(15)*65536+ia(16)*16777216)
 local vz=bit32.bxor(2135587861,ia(17)+ia(18)*256+ia(19)*65536+ia(20)*16777216)
 local uy=bit32.bxor(2654435761,ia(21)+ia(22)*256+ia(23)*65536+ia(24)*16777216)
 for jxn=1,az do
  local vor=((jxn-1)*gi+rw)%8+1
  local gj=((vor-1)*ek+bit32.band(ia(25),7))%8+1
  hbx[vor]=bit32.band(hbx[vor]+ia(jxn)+(jxn-1)*ka,4294967295)
  hbx[gj]=bit32.band(bit32.bxor(hbx[gj],hbx[vor]),4294967295)
 end
 for jxn=1,#fc do
  local vor=((jxn-1)*yt+kj)%8+1
  local gj=((vor-1)*pt+bit32.band(ia(26),7))%8+1
  hbx[vor]=bit32.band(hbx[vor]+string.byte(fc,jxn)+(jxn-1+az)*vi,4294967295)
  hbx[gj]=bit32.band(bit32.bxor(hbx[gj],hbx[vor]),4294967295)
 end
 for uph=0,vs-1 do
  for jxn=1,8 do
   local gj=(jxn-1+uph+pl)%8+1
   hbx[jxn]=bit32.band(hbx[jxn]+hbx[gj]+bit32.bxor(vz,uph*uy),4294967295)
  end
 end
 local bjv={}
 for jxn=1,8 do
  local yhs=hbx[jxn]
  bjv[#bjv+1]=string.char(bit32.band(yhs,255),bit32.band(bit32.rshift(yhs,8),255),bit32.band(bit32.rshift(yhs,16),255),bit32.band(bit32.rshift(yhs,24),255))
 end
 return table.concat(bjv)
end
local function xl(wyx,ixf)
 local zl=0
 local wdn=""
 local ilv=65
 local function lw()
  local kyc={wyx[1],wyx[2],wyx[3],wyx[4],wyx[5],wyx[6],wyx[7],wyx[8],ixf[1],ixf[2],ixf[3],zl,2654435769,2779096485,1013904242,2135587861}
  local bjv={tp(kyc)}
  for uph=0,11 do
   for jxn=1,16 do
    local lkt=(jxn+uph)%16+1
    local ih=(((jxn-1)*5+uph+3)%16)+1
    kyc[jxn]=bit32.band(kyc[jxn]+nj(kyc[lkt],5+((jxn-1)%4)),4294967295)
    kyc[jxn]=bit32.bxor(kyc[jxn],nj(kyc[ih],11+((uph+jxn-1)%4)))
    kyc[jxn]=bit32.band(kyc[jxn]+bit32.bxor(2654435769,uph*73244475),4294967295)
   end
  end
  local sg={}
  for jxn=1,16 do
   local yhs=bit32.band(kyc[jxn]+bjv[jxn],4294967295)
   sg[#sg+1]=string.char(bit32.band(yhs,255),bit32.band(bit32.rshift(yhs,8),255),bit32.band(bit32.rshift(yhs,16),255),bit32.band(bit32.rshift(yhs,24),255))
  end
  wdn=table.concat(sg) ilv=1 zl=zl+1
 end
 return function()
  if ilv>#wdn then lw() end
  local yhs=string.byte(wdn,ilv) ilv=ilv+1 return yhs
 end
end
function ba(jxn)
 return string.char(
  bit32.band(jxn,255),
  bit32.band(bit32.rshift(jxn,8),255),
  bit32.band(bit32.rshift(jxn,16),255),
  bit32.band(bit32.rshift(jxn,24),255)
 )
end
function aq(quo)
 if type(quo)==cre[12] then return quo end
 local bxc={}
 for jxn=1,#quo/4 do
  local pqa=(jxn-1)*4+1
  bxc[jxn]=bit32.band(string.byte(quo,pqa),255)
   +bit32.band(string.byte(quo,pqa+1),255)*256
   +bit32.band(string.byte(quo,pqa+2),255)*65536
   +bit32.band(string.byte(quo,pqa+3),255)*16777216
 end
 return bxc
end
function ab(xb)
 local bxc={}
 for jxn=1,#xb do
  local yhs=xb[jxn]
  bxc[#bxc+1]=string.char(
   bit32.band(yhs,255),
   bit32.band(bit32.rshift(yhs,8),255),
   bit32.band(bit32.rshift(yhs,16),255),
   bit32.band(bit32.rshift(yhs,24),255)
  )
 end
 return table.concat(bxc)
end
function wr()
 local o=oe({12,248,117,29,174,222,134,188,80,232,48,17,76,109,84,106,242,112,228,179,130,26,28,202,18,201,122,99,136,170,14,7},string.char(104,107),{112,148,250,49},2008649586)
 if type(__VM2_AUTH_MARK)==cre[13] then __VM2_AUTH_MARK("keys-hk") end
 local function yp(md,ct)
  local pc=es(ab(o).."vm2:stage-prf:"..md..string.char(ct)..string.char(127,149,248,181))
  local jn=string.byte(pc,1)+string.byte(pc,2)*256
   +string.byte(pc,3)*65536+string.byte(pc,4)*16777216
  return jn
 end
 for jxn=0,3 do vu[jxn+1]=yp("token",jxn)%2147483647 end
 for jxn=0,5 do nc[jxn+1]=yp("witness",jxn) end
 ms=vu[1]
 local function mn(md) return es(ab(o)..string.char(118,109,50,58,107,101,121,58)..md..string.char(91,184,30,80)) end
 if type(__VM2_AUTH_MARK)==cre[13] then __VM2_AUTH_MARK("keys-prf") end
 local y=aq(mn(string.char(45)))
 local r=aq(mn(string.char(47)))
 local q=aq(string.sub(mn(string.char(46)),1,12))
 local m=aq(string.sub(mn(string.char(48)),1,12))
 local lz=aq(mn(string.char(43)))
 local uz=aq(string.sub(mn(string.char(44)),1,12))
 local function qb(jn)
 local we={}
 if type(jn)==cre[12] then
  for jxn=1,#jn do
   local wgr=jn[jxn]
   we[#we+1]=string.format("%08x",wgr)
  end
 else
  for jxn=1,#jn do we[#we+1]=string.format("%02x",string.byte(jn,jxn)) end
 end
 return table.concat(we)
end
if type(__VM2_DUMP_KEYS)==cre[13] then __VM2_DUMP_KEYS(qb(o),qb(y),qb(r),qb(q),qb(m),qb(lz),qb(uz)) end

 return o,y,r,q,m,lz,uz
end
local o,y,r,q,m,lz,uz=wr()

local ik=false
local hl={
 w=0,
 p=0,
 v=0,
 u=type(debug)==cre[12] and type(debug.info)==cre[13],
 s=false
}
function wt()
 if not hl.u then return end
 local qw,qad=debug.info(wt,"sl")
 if type(qw)~=cre[9] or qw=="" or type(qad)~=cre[10]
    or qad<1 then
  hl.u=false
  return
 end
 hl.s=true
end
function qu(rpi)
 local jn=nc[1]
 for jxn=1,#rpi do
  jn=bit32.band(
   bit32.bxor(jn,string.byte(rpi,jxn)+jxn*374761393)
   *1000003+2654435761,
   4294967295
  )
 end
 return jn
end
local fg=""
function ol(zq)
 local bxc={}
 for jxn=1,#zq,2 do
  local ryw=string.byte(zq,jxn)
  local pgo=string.byte(zq,jxn+1)
  local function egv(lks)
   if lks>=48 and lks<=57 then return lks-48 end
   if lks>=97 and lks<=102 then return lks-87 end
   fni(); bwb("vm",0)
  end
  bxc[#bxc+1]=string.char(egv(ryw)*16+egv(pgo))
 end
 return table.concat(bxc)
end
local ch=ol('5bb81e50dda3dd17829dad7cc245aca7261a61107729ca4f2e5771ae35c551cd6a37e6c4b935bdd830856ea091ee58a97bd4ee96736daef5f5acbdc14f216afa96cd134b45bc993abf7475bb19bc55f8525941dc62bd7ad092526540e6725c6bdbbcf36eb371e324cc0a3e2645b7aaf9a55c3fc6299d249b329482290b647cc879598ebb0a491dd6bc699c8f2bde2f40c7bf06ac0fe4c31cc2d37c7fcd67a834bd39c9ed68fe26715abfb9b7a2dfc08b0a24b285a3575ce2a49612b336268cfe4d3d86735a5a662d2f2204dd34f45de1474489f3e441872ebcb4f4a50ae41d05e60f6fe59d72e4e830196b3b1375fc82d4554504f9d3543335bf939a44f1ed2d6ff9fa5be3a9bb58b44be004c8644de7619047b3ca5d9d18ee3c8323ef05921d47b023dac426472f7e390352f853dcc656527094e63b9cc98c896870ccb9430fe4e3e0be7d4d02eb0645adb879747c146eb97ca961fb9e9518b577b3a3b18dd4a557e803be1a205d870956db4579736187952069d3b6b3c5c34c38cf6dff31f677bc5e1be2f6007788a47f8a1f58d78baa66ab54816304b809f0786efe59ac8388821e261d35875672fb2c69b028d52c43289ee7f1110a7c723e03aa32c93ee79e5901aac7a2aeb3c66d65ace160fad59ff689ae685a635f42b9a4cdceacd82d1731cf6151ecb365d65da3acea1d8126b34fdc92fb99c131363014b300669d05366ed8ebe4dc0d372e09a5138deb3aee7e9bb13c6a35c7d14f1e2db50eab7e835f5fb164602b97fded058e7b7e8fa7d89db20e1937b0e2a91376bebc1378349f562d33a406cbdbfd39d914e71aaff02807912954031042dd402e0328283afbbbf32bc380414a47a4399d968cdf7636b0d2acd42e6db4d9d9fb566560d5c6540e16d8b0f06297c28f655d8456a977a8c01de18f0fa6893cf6afe86d769ca066728a2ef610787295aac16e93bab29348332dd1d0ecc067713a5e03dd8bcb1ae5e757111246ea191b0e483adceeb6b2e137f22aa6a7f799dda413a297da4485c74361e2f82ef27804166c1048216e67bbb65aeb03157585b1bc1c68995359f8165ecc95ab36815d5c4bebb2f5e8142a5082cbfee520777f4b471e08b93ade1ad15658fead09c178776ff654ca70745386a35825ca1d1de54651f79612e2fa2b6095aa93b42f3d3b8208fc03b51f13f787ebc22dcabbdcda2c05b054f17e702a70ea29161b9af142b9d769917163bae8c2abe36b6f32fa03fe6778b9b474706c962b40e5814460191d31bfa647b46614f3d7b7f95e0ec66d89068c1682c6d6a87cb89476c0186e07070452676e88b8f99f4cf4a6211c442948e6efde3c5ee76536ef731720cfe6f796b3b88c35b9ae43d16644819a4f24a18df4cb2fed2ef13ad8d5420e30e3f900667848dd99a47d131f98f34c320fffa598cbbf86e78789bb3e5c8010c374a07857e030adc0cce1d976221e7b1123342b9708c29ecd87e541648e7b920f4b1a40d62b6e8e03ab59350802bd17d0e72cb356b23acf8ab388e17fa5317e2dc8b6d94be84a91738d164423bfb78be3721888052ec015ad3495128b951cf0ba415e72bcf3c3e21eec78c59326fc60fc52200d87340b490faaf995aa4f0b80e7b6aefd1479d9df09524bdd458ff24618db49c2fe747da55cb94a84735683839ce32545cef0ce33b9bf60a60d8c7b6b6dc4734c7bc4d7cc44924bee7951fb30ceb0c9dc2a02e4e1e805bd49e7645f3bf8d56079d65ca844189e611658434c2777a242968fa2cad3b0a23f95af164c27e1177438edb42f71fc04922ccc94b2e4b0e61f3d19ddb628d49230ad13f8cc4e074001fdf66b5ef59deb904a494ec8bbdf24533ae976ab8f83be8602da9d8a3cd8cee606a25a91304db143791f26e2925a3b23aad24ace106315edb3f7b4131dabca5d1c08a7521d2cce8c3388084324610707e685cf27e18c86f76cd6a99e4ba57166ae3e1f2a83266794dc8ea2ed3097d6d9c89ed5189784ca54f848a376dd402dfaba7acc03f50e5f4e80ac17a99035921f7ea8fdb1c5d8c70fc4c7719f74e32df8df99acd32df5f04e3b527fff72225808917e75615f6aebf58fd0e82740db988561020538fb5a9b0426ee6fa122dfd7ea7efc1b9757600509166913cbb275b6b428bf9fd23d67863c9413899ad0bc03ae1960b52327811031265a2b1b7be2b10aea5b5c9f050de218d343e62437acd4cc608c74f3085ff30137d357f6ad61011315fdfb2f17d4144819ea26fbdb6c66faea2ce1a02cbd8dc7df7428359369a0b00f25124603966ebb9834d1138571dfd742c95f90a181d7b45214f15e0c9b27a673f923a6c4404b4d5b06bed8139fd5f19f9b758c79a7d649c29bb82f118ef83be6f58f202fe8654a19596b157b6ec9179229384f73c926ab30d3146eb9f5ddd9f9b249e88fabfeaed6661735df41fd27dd7d1793d80223018baa3696d4eff3627ee25c52e32e8bbeb44a76b8d1699c1fd68a1e980be8c0c2403e09e01a8ba06bb92be34c5a995c9c9dd6b5529d063dba3164260ee541f1a36c6036e81d3ed1ace88c1d1fb1113b11e0b2f0391b62a4178a2ecdb5fe13902501a0c1f95827e13ebf3816d9364f14e64790858397fa0df60dbb10e489938cd5666cdbcf40bde0d704a25f140a54f7455fbc1ca4d05d2beef5a0a974887c907df57915963fe3961ce12bd5ed7aa070838fc24ec1992096a480c8056b67247cbf713537d734688f0f1d0d10d569d67358193d8f026695187fcdaa221ca62f0eec0816638c4e5fb4fefc77b5f33bae87371a31238f2b4bf114406d936bb39d4546552a8124e11f4af7f232d49b8f39a7204468e19c33b588b1582e6ba507e3724f2bd498c4761dc34294f95fd091783d7d7a04b34f30dbe456afe1fff44ce4363819a602960b429c8e143b783baee91a2f89906db6ab67e7bf6ad4f42f621a0ecc915c32906588b69ed0de44c5ccac102f5d5124db155b0d37cf36aa51dea8f2d4cb77abb9cad5e160ed2a48e23e7380ac4b0750d3b76d6bc9b70c6d3e0809c19031ed13e2ff95dc87b2dcf64db4df4feebedd32645128cc36b3b48e3325d4d38675ca2927c36b2278d0178e7cd5e31fac38ceb7821707c6c45c105cd016a40a31b1422ef335313b7840fa7d5607d8e98fa4804d85acd7960f0513331787afcc87f287aa392edbbefb1eeec8354cca6bde3e162b511eb957abda52e5da0d852123dfc4cb1cc4430a87452aa3d7f82e3583a33985bf88edf5ad2594a819f2b04b05eb1b3bd56e83771a6f7cf1909f768ac079695b6ec2ab273ce6a3eefc301f133aef7493df18d0d6b123248593c638d89de9158b82aafefa866f89c02c9a9a2c9208923aa67ec6277deb4977d1bcf33d116ee56db30c63976fa504fa505afca6c291cdd2ebd980c43b41328085d813a237d81f375ed66f247fc7c39b0f88a586fcad3b022f964bb6fdb2b965df98e73ece57380fd9da5c871a6a90ad31dad050d274ffc02de9625bea93e0a25ba23dbc779e42698b1849fabf3835676083d99129d0e27c19abb0ec0ac19ece2f8f3124621d841a23eb1805f466df53e26ffcf40c8dfbc86f7c256d87f5dffab80493df68ecd01d1295e6a9fe75a8d746df1ae928cd38ded49c26d227e29a192bb7e9554827fa10238df7b03c11310eddd28e9ceeb8f311246997b25a4ac635c6d27f01791bae24ec98c58ff2aa2150424ec69fddc3aeaee4a32c8f561d50f507071ca62c618c41d700f2b195f2ec25a35939514d6171ccaacfdd771caf4e07e1abcdc0fd97890d27845f907f29db0bcaa0a42f904af6d8088812b83fb2f4cecdbc47113f4c32f610c10580e1ede702b2d96c8eb945cc638c7de98e963a4cfb1f19dfcdd410b5cd8f89d19f03a4894cc0f9d23367c7fc97b6c41c137ec042f7344524a8201b45f02b88f81d9c995c82d186ccf5158e9a463297b82d3c3640fb8fd17eebde8da4e5f1b56c1d1c664e3967c1bc195fd2bb8e46999b2dcb985ebd201b897f208532d75dc5b0b1f4ced7e0f5d87e95c76be8f64236b5669464536c1178a3ec19aa1f547530bba76aa19f402a8e00eb6611002efb3899b35d0e622b309e3bcbabf4368acbdc8d0c3ff8a89eddc799ffe64909bd26e6ca01d4e3db37519f7a90d7335e10c0903485deb752238ed536fbda6792a3c44469361434f60844ac1cb368b56594c5a0c7816d64bd856bc982cbba3134dddf32e26842f8e13df026aa34ae6b6c4d8e1fe814c13b354d0344718fb811155edf6decc09f8cb894f0687dc4f328bf59c8575724ddbf02d4de6f3b5855ed56ef01439e4ea699878deca549db4d43ba205e569cb32d13040657f4cb2467c35d9e6dfde64e0a2333110b4e8d9a66fd2f100f9be955edb72f378611399b6721cafb2544c33aa2191f6ede242f90a1cd0919709eeef25242ed20da878b993b4378966506a5fa92d27bcdfc938b71f9fb393652e79e4527e4d11eb9209cd8f48feaf9bb65d538f2d297e8f9a22a969da69fba1ee57dfe9451f214b6827d314a4f34231e1d22a29a54ee2577d4909152da137ba52453f7e1f6e73137a7de357e03968b1091067664fefe726fe9573964c0611ffd97c1e0d9612205f4bc4c154cbd2961e4d6f71d979f61138f779c2edbe391b89eb276223bcff5291be55efb9fd6336620c2886d3c0a30c9de8860e0f8960174c31d09e15d23929d7579f4fe7815a9219044395c3adb34f871a8963b60114bbee9f46324ede02496e59bd48f2658de18356c610e22753e13a2d4df0515f78882f4475bd24125dd8668fd70fabd6eb051bf5a6ba6c89b1f1de998c38d9a9897cc4657998ba5d5bbe82a5b62685d2657d0635c3543cb12a99a160bd249b915da0708a09d623e3afc5aab4547a5db90aecfd0b85d6412335c284fbe919006ac2a7d7f3318bf4a0800a8d3bedf638698e90e6365abdf30f7602f5166554e3a2367cb698125b4eaa55466352223dcb9dcd6ca1ecac430856dc03307d9747184dc0352c28c0e246157054026889dd50361e9360fa28252c3528003524b963e8a97f5451bf9e91176b58b7e1ed99dc1b993d6d7eaaf1cc41fc7a360643556e7929ef4ddb718be8efad9bf1b3598b2de1df65d79a5641daad5227cc2f462d914b20ef8290f92cb4383fdbb42480f3eac6b363519fb71c7f5dffdb2ece0f4f834daff358002b7204d01db2af2e46a057522cb04f5d1451870fc1b762a42aced3403c86a00493b7f04ecc631d014fde5cb8620c22c3073df8b499e87d4e95c260c55734afa654d34d44749d7b263abb1bc3668d305293532923e4bdd61d76976bc24e4a31abaa71b688cea06f440a7ef7cd950fbf4003f689c5fcf9b608041de458e08e3ee3a2f8640b8bbd1b8abe0d1c35e65d0d4c53f85868fa2b026d1463823ef864ab9f22da9c47517a1213520d3306c1a0494a0054c65429a6ad57482e61ed8cb3177f4cbbf7f81e411b66c73325524ceb2af43189ebb02a53ba9b38f3d549fd17bd716e3d571720696da5a215c6db39dc2dffddf6546d16cef83ada691be9d01db6ebe5047455ccf3fcfff119b8d8948c61444ebdaf701fe74d227bf545b9258233c1c70278d19e5a898e8a32f1b042ca144125bd6834ba88a291e62bab4254de09b22db319545def3801e28956a2ab180898b4d384592db209c87ada3cb9982fb45c7a8a638eb5f8a7eada44a07af572951f4eb0d96e7209a8c91de706f226b4d684e94d1da55f6ef6f25953e14f10f528def3f4b901f9168dc9a2491b5a600f9d4c3d5c42080725023933b37b13259432c43b7450521a259dcd15bd463deed1b9e5d36391031208b1e67ee263c3d9a005d8bda3648aacb392b57c211ae79f0a0519a617662f46ee37ef6cbd897c9926eb3a42c8c184ce3260296c4dcd4ac572bb9aab4f77cec3034552f780503ce33a7e6af71b8f4d0d48c7f820a65b9aaa406b808a4ef4b609555102e0cc5946241059d68a6e87240f5050393ea5db9d63abcee1dcec6d6ac33158eec1ea0cd9b2a1b5a004062a7c2651c6d73de45a24fa7562dcc4d42921bd6a38312fee12d8c391779a711891cf633c542ea112bc4b63fb9df40abb9f4e5c8374aaa74fa6193c841c4121f88a81ddfd024b741d704caf564f59a6e34f793c2f134850c5b00313f394f0af5357b94f2eb8677378c77a004267e46861bc662cfb7fdca67ebc99a1319566953190cd10b0fdd4d01b26032dbdd1b168aed64e5c2db89d56a5d72af4030ab59fee583783881407dcbd71f8371af2a34de8bc1bdca2457d4e7beb07ee0031600aad358ae67be0c20b13c619ae6a1104f30f5e3cbc0683dab5075b890cbeec4c0f49d33a4c662b6359e09d6ba09599a8d2eb4c19ec18cca04ed0ab07d5a5b3fba4b8b3eba8a663bdecf2bdb13b0a0b277334006799ddd016d78a35360abe5dcd0448f938d29e234eba9e608da867ac6b979d18f568d2d2ff3d8e890913f018965e63770a38cd0a8c6104028b0d3c93c2f01af8253e88d5d9786dfd246319b5d64f251e5d6857497dce657e5398b149976683ffb98e0edc55861ce84d3526e8509933eee0adfec839c19e5fa6c8fdbf3fe178029cceb8345444eff86004b997db6f67e13170207122fa5afe277c6dd1d723366c7d8a38e2bf3cbcab52bc761770dd79e26066c13ed0d32c67ec5858e988e71ccc65dd9d697169bccd8d1a9a1b848d8655d4a1526ffda0cac46cde089faa88484d6d75dbc4c3750b373987a9ae3d552361cd27d04c717daa88c94f5631b3efc90afd141689a6c949936dab0407b154f08d978964bed4c4edf522b0eda133320737587ebdf68169a9186b7658c83aedc76aa6b297ba606eaf633fe0adacd94e935fc7f99e87f57ee2e560d9eee1b7a84a875704e79ee39f1d6473b0645de94f080d703df743693c963042968c439c33d0b5715225a27709949099c6bc08edf7357a3b697ed76fd513bf6474e44e26de4e00d9ded24a1a0f6d7b5457b59d7a5d97ff0bc013580841e1594e0b368689ffe11d38d6f8d4332364bc53a275378a78e0ac9a1034eeea78c622e05e575638c55e8088488a6840626ed3a6fdfe4b05e263547b9e237702f34abaeae9764be0f7fb1f02c0d79dc01e7919bf8965ee797ef57f43ff0e42d9e19ec565bba43352f0a0886add367eb6014e11de334c312b2fbac19eb69f02f9b5ebeff528e4cab65a48155b6c59bc5bcf84c62c4c69dfaa28fbc9601617336e060da7e0f6375fad22ff40ff6bc20f4019fbeb0711cd0adac0bdedcf2c62e240f461b9ee32fd581fe1251507e2506ea9a0feafca16754676219ce94a9cd0a3c361c46fd5b6153499ffaa67e1b1ef219c55555acb539669b857bda89c0e48a5fccf911dc8ebfb01a1bdb881344c6347352df9d21da01c78ff91287cc12addf41477f0976d1378b3630622eaaf389a9706e0ef0ada5acf85e0570026226d1163772728329de4982a963375d0412ca0b65e3da55902049b20c4ef3f3708948abd09fe99d3c2b393f26764762d2da5a6a8a53160636f4eb5d6902fcc5fa168482c08d1753b96e6904534f962743cfd2c09bfc0e53ad212f4a5226ea6f2a2be2a712d8c56d3f28662257c0d77e1244a9f9edf78de76d08231f8ee17b338003f6c4210572088e94225c230a8ab083e4bfa12db48000a915e8d72d0233a8bde3bc55915713f0ab75cf9131184d09b8398b230d9586c47f8b61891e214643f5a85c315ba90a36bbbe4a0991c8cdd8d95de5b147458afb47c1eaf065667f23b00696e0a33c2e33b0de5a51fff279d980d177e3bb3809bb90b56895098859543a2a7bc48828ad3d2792df33c48daaa1ddda644c2183922eeee45358361f77ffa7cbde1e9247caaf1fcaa279d66ea19a920d766cbb9072dbd0c817f55159c3c50384270cbf40bbd3d0f6623c92a2303aca593236f6419de3a2c5fa755c9a4d4826d2fe876bef3d16a4bc76a64c1e045b749240468242aa3fd528d8063884f4132e38f3d84386be4a418e2e2ae6e00a1c8c1abda52883c9423a88e88be3b32b809471148933db9d19deb5a7d8fe51ace0ac7bb47db0a1c9770661324c10b65e99b383b749e528ddd2b44c9237c4104b38eed81c94faa3f9a5bf8e489d1c955d01954cedd9d6f89390f204e6dffe80c39490edfee0c49b4fcf8fe9c1e80c8df1ef020c4ae9af728cb1042787c45be1f8f7b50b698cf1dfc7cd36e448af94df9ea6bffd00d4fdedb0b36f1ca10248afcbf96b475e867b1b09cf98643643b3675a32ece52d657f84c9772a6d38e33bd1280084bc6adf4ae671583fa8de6259acc2e1369713dd6f41b75804f41cd6d15724a319cdede0ed5884863a1157459671ca7797a48a2ca3c527febfa8441a8c3195f6ad0c5a6dd16b6d9e4077f1147c383fa3814d049571847f3dde9dd2856b20147897a9d329e91f15157798859c5408c54d7e9f8e257e5cf126800073c8953cf4b2147e8662ffd1a5103c1fd9d810c561c004c50b91408909ca3b0b65bcc0d9f41536f4eb428557235f88c3fd8c4749a9b2a022a9166c5b90d30527bcc301789ed45394c127689f47417502c0bbb5ff1f24abd4f1e0ea0f6cef0d30122ab16683889aaf40d5dbd5faec0b83e964ecb0a8672ce0fcc4cbfd90a6189650a0a970d4d315993360c6bede38e757404ed272627e02306e17db3208c18851303c6aaa2f38cd0670b0a041add59ee8a2b718cde08b7917e05b7624f3ac592f8487a0b85bfb62bba169aff8c8d514e18cd81d48f9a0b9503a317048281179a2ad56d7367b2bd02532b56d651d14fbc2b8fde47b4d8a87f9295af58ec4bade6907587b4047cffbe27f6f13fe8a2781a51c518bd5ea64efa49109ee3377d85a96b829068f52dcdb20dfda384d55c32ba8c893c712ccd8ac1c5e48db49cc3bbda6198a8376b2b6c194e4c23f7e0cdc81dec893c712ccd8ac1c5f48db49405f3e422eef95e570447ecaccfafe6cc3786ea9d3c893c712ccd8ac1c5c48db49e0f6e441d1808350a47905ed038cc23fc30eef6fd3c893c712ccd8ac1c5d48db49d3a208ed57bd137bd678b20e8a4deda59143e36736334eccae029918c893c712ccd8ac1c5a48db4986f9bb302e7d61315b0638b06ea88372e38d1fc893c712ccd8ac1c5b48db4975b2c1d04510f889ee64f70e7c2e3ac3cfccf2f8701fe0deb0e44230c893c712ccd8ac1c5848db4982025416e9c0472e28287e0261f8b936c3442c64d3c893c712ccd8ac1c5948db49935afc023a8e8d9bfe96ef960c9ceb0731c893c712ccd8ac1c5648db49506b366e093e0e50da0bd169be91ad0843863d7f5e7893a124c529e1c22298abc893c712ccd8ac1c5748db494d2b7a6d09c766e64ed30ad9fcd84f7eec8896dec893c712ccd8ac1c5448db49dece14d4975fa09dd7916d1da55e0406b8b60f23c5c893c712ccd8ac1c5548db49c49686ed7c3df8522f1bbd7417449e31b88e985ac5c893c712ccd8ac1c5248db493dd99c290daa8f054e917a694ec44f7e7e6d96dec893c712ccd8ac1c5348db49ea4e2a75609e956a1ee2a1ae075015c82ac893c712ccd8ac1c5048db498c03b9da039b5dc8e485616a01a38038ae14752e775fc851b6edb968fe8e2a34c893c712ccd8ac1c5148db49bfeb83c4a85751f37dedb9938dd01534de143ed06fc893c712ccd8ac1c4e48db497f79ef978e62f13575389c7f09a06efeb8c8c893c712ccd8ac1c4f48db49e93ae55ef35dbffe39fffdef09ce563dc324a96cd3c893c712ccd8ac1c4c48db4919d38e64206f75929e286dbb0c56aa3631c893c712ccd8ac1c4d48db49b9e089c8d78f0a93f0f01526c056a9e9c893c712ccd8ac1c4a48db493f7ec79842705e31231ad8d9bf72da3ec30a8b6ed3c893c712ccd8ac1c4b48db495db0b6ea4bbe18361e17d7fb056c4d1456003d62420dcedbd206542cc893c712ccd8ac1c4848db491fe771658d257e7a91ae12ba0c64f13431c893c712ccd8ac1c4948db493bb873717ec145f8ceb908f0b6581434726906b6a48733ba50c643201a9ff4d6c893c712ccd8ac1c4648db4985d9a999d0678471a77ce042f7282869a221d15e67d4ba09b688dd03dece4fb2c893c712ccd8ac1c4748db4957e6ccc5833a82b069708d2857ca7cc893c712ccd8ac1c4448db496e6ddb57ad455809762b39b20ef5828ad7e390a10aabe6d3b8b13d22c893c712ccd8ac1c4548db49a0348f177a21ddef79fa06b40c563b2d31c893c712ccd8ac1c4248db49632b597a27471f9f81d6b2ee642f5cd00db056afe937232130bc57769d9972c99e242a9996453f07a8d980e46cf120ad0f130967e654ee623ab77d6fb674b6c0429da0ee7c1d83f17837cbb292db98e73313776796c5f194b99afd1af6464b547bc893c712ccd8ac1c4348db496cf9f55f822165d007235e2ae29831747417b3df28bec4a9d390cf5c26c203336731d7ac20b1968970120f339a0f368f45e2bc1c56108731adf3e3e66f3f882130cee79a75f3efc9d6408970cc730c3e66a8031681e612c490915b9fd76526559ece4e2594d474ddf92bc2463b72c893c712ccd8ac1c4048db49a273066a28f0784f6f98332c0e00cd0e248c55d0b3e9b226877cdb7fd3d0eed2e1f3e0a60f2b745751b28727e1e7c081968993fdd9c9149e34bc66d85431e4f4d36ced196f1d23e90e4aaf9066b7b11f589119e6899ef3007dc843e6e57b07efe24f65d19f743976e49959b01d112d45569b7073b743ad8b4ec93300ca3f9a6fa13db2adfa91af18c285f9d9abcd681bd164797dc278744a78a0c13c3fc97afa57a21663f3bd2ae7f89c5ca064dddbec559d570a16d9b84792fc42f17f387f8d2bba81f3fdb89a269531fcbe8a9e65da1ce5511526e818f1ee7da64d7654640d02aa27ee9e5a11e32320ea922f58abd70a31fcaae5898fe369a16e742166e95b5f7b9ad2e6e663663d8c04b7235ba197fce234aad361b7bac30744d0fc8fb72093548c8f5abe4f3a67e36daafb5b02fe362753a135be6e23054848e6e6e2342ae271a6660f239edb07ce7672441ffe358fbac002e99c865b537817d5aef86211bdf9256ba8dab2b05d92540b547aaeaf929fabb4771e877acfd204e16560a0b1ff5e5665aa476c287e4a7226e8f3900a6826818f52867534de5687ceb6c75edb1fa201ad40af06b51e2a00e83b4474567c5d3bc68a25af173391bebdf74d5e2c58e045f1c65358385067064c9caa536480bf6135184672c11b95d77ea0b948f932de16143dc87f265d5d03adc0852d5589d8a975cecce6cb3cd72f1db6e7f76e3f8d50c7d6597ee6722e2f8cc2bec263df33f708938767f9068c5c8b5462eae6a93c4dd816dae41b074fc778dd6230b943f45d01f7d7b90fd2b99e6fbc3cc77a2dab00bcd7d68a01ff2a40f24a1147be8d7583108e40e69b0b85d8ced09b2097db4f52537d957dae1f8832066759019e4e176cf2289cfa3a58c33760dff0ffcb7a3bbabe5a095637e47cf2f8e531773d44a7750180d30ade86cd2a8fbb09eadf253ca54624fc6ff3b4b984dbba1a21d043471d3512ecd0ea073f0bf548a43cda3e1c443d1ccd0a397a1a4d29d6f6ffaded512764a52e8aa695bb71bc681ac6fc6f0218f288863d3092de0b646055bfa3f2f0fc9e8a9d9db1ef482628ef91a3f11ecd4a8dab8cc4e45f625bea96265f792a3deeb4581a116e0b92d1f2a484db55b646d6c595b94c29c6037d435c79f99c37d1aaef45cbe77770f5d6dd2210cf81a596d412d812b1fa66215feb69a49b80c873048253199a7bcb67fe0720ba775d8e6b7842d007ed002523912b4068b334502ebb796cf4a905e42fc04e419544ad41f5c15041c0d615c217eb7189f7ef5c6e77db486f5030ca64ebc47740c0acf932d3c5a03f6df6d716da63633e08a0b1ba11c1f122cde1fee963d9bad8a20be3e16ff99249a75628c44823c87029176a830214f073440ed2e31ccf7aec80ac1455d07c710a640b7bc8ad6440f585acf1340c7fd8c06c629c80733adfea2f7a2f40017054623be2c36a8f1c2870ff567c3d8790b668f84a4afdb0a5275ae327e4665b6fe1007018b7bb4006806e9b5920daf7ffb9ddac532744857af517b3d6fa70e36d911087e2fa84ae1a81d1b1eb12f974d8cd9a1dbe732c140bdb0060a2c16ec3a9134538fb21343f3cd20c6286e3db922ed8362f101288d4cf574a9eb717acf5003f67c88b7591dc282e0b741ae57e175ed46d672c45fbcd0540b8c585835e36c9004769901df62bdb262a217c72663a0681926b528d8b4da8f828b20cb33b070bbf121810858e972fe8347cce7ecb2aa23dae6ca05a2474a9eb070bde23d0343713f3ef9ce910744e35e15f1e61776db1c73fa697780495d33b41b7e8120a4dc19798d152cdc6807f0b784ded10034991c7ef0547c039bbebb2b9376e48418ff36440c162f4aa6a1dd9f8f30766651ce171eaeb94e7d3cbab3c7deb50c92fd23c287f8d1ac0588ead1d90bd1ba812ebcc2758a5b49562ec717804e5af8be559d8dab0b599780acaa58ed985f6c92513a72387b4d89a84ad350ac4a67cf4c74e23a5e722b75e7c25bf91af2e457cdf1a933c2afaf1b0c8c92b872c88013958358f84d8c0ff7b4c1b4200892ae34122723dcb7501e1127b0cca1b8a5e831fce6253ceb2090732fcec0b16469cb7afbbf11498abfb8d00f5c508943e20f349818f8b87698d4b2e976b52cc5aea8d6aba7befdae75d94f73723780d0ada480a839162fdc91dcc565a5c939ac66e7c35f16d4bad164dda442fa5c74a4d8867c984009a0e1bd0a5795effb8cf27c0b05646dec555f4144ed36af0d797b7ff6058a2e8996c8509b03e587537caeafa7cfc8c35e8206e4e93d0839afd1af6464b547bc893c712ccd8ac1c4148db493e77971b30e1c977491bd9ce85ae3d64c3ce3b9ed3c893c712ccd8ac1c7e48db4992f90b8c016d0efbf113b7fd726a016ac30c93a5d3c893c712ccd8ac1c7f48db499e5d84af4838f9d4cdfd7503e52ec667c352c3a2d3c893c712ccd8ac1c7c48db49452af3d4e9b87db08a3fa6b00ba0bac9bbc8c893c712ccd8ac1c7d48db498b6b568c24454e43d97e2d463cf353d32c3ebf7d24e2a7425a1a6d540aa1dd7f10d406b042e0a337c893c712ccd8ac1c7a48db499265817b94b2684f9b9dfa58f0ea856bc35282a7d3c893c712ccd8ac1c7b48db49a04923d4e51f0357986e9210340efccdc893c712ccd8ac1c7848db49396a81a5291324acb6bfddb2722cecfbbed062d305acef455ea9e820ae98c8d7c893c712ccd8ac1c7948db49fcc72f0f0a6f875cb1b4e31c6802423fc3d00a6fd3c893c712ccd8ac1c7648db49e16079439d7f81581be67f38a8584923c3a2304bd3c893c712ccd8ac1c7748db49d8f2c6e5ed897f5f7fba115937a41a59c386f38fd3c893c712ccd8ac1c7448db492ef725deb0433c448a04b79d0c3a8f1031c893c712ccd8ac1c7548db492e256e01aeb695ad038fba2b5c56136a7b5341076ed5e4d896567955df1a9fbf1a25d4bdac134c82c893c712ccd8ac1c7248db49039c1ce6babb1339fbf9fe4df09f36a798c8c893c712ccd8ac1c7348db4986ede794960f2666f9bae64c434bc893c712ccd8ac1c7048db49f1371c36ede1df9222f027ef07a8331b2bc893c712ccd8ac1c7148db49a97027e60c28ea17fe1b13268ab3a5e9c893c712ccd8ac1c6e48db4978997d342cb894a3ddde0a4253c893c712ccd8ac1c6f48db49f44ffb724912fbd601638d482cb97cc893c712ccd8ac1c6c48db491e46f48c4389f07ca256ce0d08a00e2eb7c8c893c712ccd8ac1c6d48db49e4ff8426e98fd2031fbb7e09734bc893c712ccd8ac1c6a48db49cb823176b479569ce3ba4e4e274bc893c712ccd8ac1c6b48db49caf601c004f71a2eead87344899c09eeb7a44d04c5c893c712ccd8ac1c6848db498c8f29493fabfe60c136d7d11ae6ad6543c893c712ccd8ac1c6948db49c1d04bde5640719cf23356bd58c92404eb591c54e4465aa7c482f9697e8ec635c893c712ccd8ac1c6648db49326a07f97bb6ebccb606d3f5358e03c76ec39f8e223b260f7fb86277594a30751cb37de0e149a66be239076e06b9db40420d0e6554bdb550c8e4107f9ae737318754f430ca4f1ee44790d33271460f25ed74befecbd70093f2d63e7281b9da7f498254f20bdee1d86366c0a9074f01b7c7f44258562526707f06edc40140033e7bd35740c125f9293c0e5b20eafa563e751c898761d0e640653292677814560919d233380633dc9b39935bb096fc290649b7ebe590a25763448b76f10edb62d6ebb3a36cfac6ef08b29d4c0b3131bcf0e3c658d89c57476869f0dc138388e4c031c128e0e577b94f787fe331047e24ac6acc9bbd0ca497d33c38201e00ea0b653c6ad60ccaea85118af6bd7089fccc17392659f0a27b52ae9ce0991781c2ddc9cd0760a006e846ed46c1bb8dcb3325aac035a8c84f8e7b65579e981d9dbb9f28c67d8fd17dba6d0a8e9a769a5c63b58345ec7ebf5a887f9f9388730318297675f87cf03d3618e86cdf5a8af4aaa092a715c987004b814ba7c19c4f8780c2f3446766de523f193d70fc6d7e9e12f318fe7ad0693c23302c281ce97513c880d0e79119ec3d6d3c38836aad22506183151e59c43e96eb953103879b2ade999bf6b05c87e3fe80beb8effd34edd82eb80b177c45bdf94bf83fb6e8bfcc9b452262dc3f51532188dd0aa1a3af6bdfba2b7b7824c2bf103fe1769d8aa6ef5de5f76f6933e2ede1763d9721279386e06547b9fd856890cef39015abb4d72112c600b4aad4603fd9d26843065d5a98bcb79afd1af6464b547bc893c712ccd8ac1c6748db49e60f032bdd00d66518e7aabbaac04f2ab80e4f51c5c893c712ccd8ac1c6448db4985babf6e8926545e9fe0a29b2b442f3ac3903268d3f570958856393d2bb1ba3d07e46e29fe61be1054af65e2f20bf2c9ff4ac0195c919ad530c92055222039952639303e765b810f0e6ad01249a689eeaee2e6a00ea42b08282492941f82dfa6b28806683a54f49575f421c1a483764f2dc893c712cdd8ac1c6548db49a47b322986b42223ff590b119676fd5ec31e8b97d3c893c712cdd8ac1c6248db495e67d2b43713822aaa060e250afb50e8c893c712cdd8ac1c6348db491c1276559377f618376a87b10c685825f03c76adb653ebf6b69f4ffdb15f7380225ea7e01e1e77afc893c712cdd8ac1c6048db49347fcee207c5d4045cc400e45ca383f8e2861fc893c712cdd8ac1c6148db492797b19e7fb4ab1a4ba44cb93f046234c3de1f61d3c893c712cdd8ac1c1e48db4991a3a3a5d3063f7a2218e911b037b1cfc893c712cdd8ac1c1f48db49141724108fd28564147b906a090b77e874d3e4b68bf49decbc9b530f887fa9e6c893c712cdd8ac1c1c48db4938aa3ebb0d5d0136c934d3fb0c06a58931c893c712cdd8ac1c1d48db491373237cfa7aaaace039121512a0120cc4c8c893c712cdd8ac1c1a48db490986b0c059a3e2a523e06abb0cd6b63631c893c712cdd8ac1c1b48db4903befd895d52f411839543e2af9783d65f781fc893c712cdd8ac1c1848db49ecd4a9ed45bc44e6ed7382d2c87eef38c3f0ed66d3c893c712cdd8ac1c1948db494a6ae99d3517301f1fa9462114540d30c36a825bd3c893c712cdd8ac1c1648db498190100aba80b2729b18f70a47b42f55a120dbfc306d869068538320b2d146d7c893c712cdd8ac1c1748db49f4d7efaa53ad609be35db1bb5a3e7432c3fa965ed3c893c712cdd8ac1c1448db499c4ac1fac6d228145a1753582d5c285526f0c5cf526bb0c60e7d2e11c893c712cdd8ac1c1548db49c20eb36f73cdcff4a89182315ba63d00c3f62c1ed3c893c712cdd8ac1c1248db49fd732751bd2eefd596fadeff23eacc45b88a8774c5c893c712cdd8ac1c1348db494216788b8c0fd2d6a775c1b13b3a7a803ec19558e83b38b062c6166af225ec35c893c712cdd8ac1c1048db491f152af22590e3f7ada2ed4aff4c6e6ac32643a6d3c893c712cdd8ac1c1148db49bd0305f30136ee87c7cf12ca1e12dd08c3203029d3c893c712cdd8ac1c0e48db49cd610ea9ec939c56062f0a06773869bc639a1ed2a1c893c712cdd8ac1c0f48db490f16670d096d4268b69a22126a47fbcfc893c712cdd8ac1c0c48db4921da4177a9b3de90c29a4cde8fdc0246a72f737a54309bc525a1b618ab6fe140146c9719bebcd7d2c893c712cdd8ac1c0d48db499701bfc25300520c0d502436b1482774c336b5b2d3c893c712cdd8ac1c0a48db49025b550c24d720d711bc4ab30ca63e2c31c893c712cdd8ac1c0b48db49a57a7a14679e8b4ffef5e7de7adbb6731bbb20ed769a23c34af74ed2d8f09f59c893c712cdd8ac1c0848db49efefc3c5d55f8be172f68f970c6cb10831c893c712cdd8ac1c0948db4905c04fd23b0961db5d31482bba155a7e1cb5a3dec893c712cdd8ac1c0648db490026b00f8745d0eb694fff5e27eb8904080469511a856dad88b49d7e816cfaac01513b7b3997c9f1a92b7a23437143e18d7b0df89018f0fd46375750cdeac9df9e4b0717dcc0d253e660b1649fbc11a91ce18ceb8c14070a910581d9d0a78b33a5e4130cf233cbb57c5eab2f6a85ea4e5957db74dfcf5aaa4466788da9ac74f59d852d1606ccdb797158ead6d0705bbe27aa96296378ef92aac35107810a4bbeba7573b57e6a60cef65c3e8c3257941c90ccda091237eb56cb4c28b371d6e39d0a0b01ccaada7395d160bffe8fa5f4dd8f61ecc111109806a700e78a6ed2de1feead34c47228f37784c69c329dd1cfef8330d9dc9a39f4d27280c30433e4a526142a0a33d91423a0156b9287418564bc4cf845df19286de4c28db10ba2197fc0c9fe6ed0564345274d02345d6a604a7d4c07a61f0db40bd064d96233d255b1b7d24ea9734fe792ac77f65a27f2b64eeecc669ea4f2ccf449d6610af2ac4f857ac655372f3f38bd14d2ebb02d9fa181edc6572eabaf3affff837b1a112d23bc33212ab86cfc0d33f99c97947af5c9b4997b1a71e76903fcead6ce35f149385335d225bba8ea244018696cb3a686ea054ab6e826d6baed3912dab1d55423a5f22af32ea6dd50f3a7c411a7c513e24f941a9008b24b4a22db2539b3dba7a64eea31cc43ad2898254cbff81246513b18d57c0c42601e8cb696a9ad7be865d2257bd9f10dbbc9e4ab77a0c7829d209d3dc5c4141821f08bae3f07e6c8f8daa610b967c6ef1a922a4ca08d6ad6bef814e4f0f4337ded303d3f1a08b72c3b8e3eacb7943de913fd15a27c3e6a358a05125f679d1a08c01950fc8205a4208ad941a7711404c13dbe9190d8f366d66c6a9aa74209c57ba9dfc0b41ae0470ae85a8447cf90b9d96ba220cb328e49a9f0552651eb5fab6ae311e3836dffe7ee6af3b69afd1af6464b547bc893c712cdd8ac1c0748db49f0313567fb0e8b77dd7a0c0a53c893c712cdd8ac1c0448db498eab6eaaa1cf2c4e24bb1a6e7a4bc893c712cdd8ac1c0548db4986d8d198b9ec0375dd32d00653c893c712cdd8ac1c0248db49b40bff6efee59c50eeba3e0d354bc893c712cdd8ac1c0348db4963784bf9d2f348ffe7ba84ea2c4bc893c712cdd8ac1c0048db49a8fcaea56aa52a9ae99a8d68ff007dc893c712cdd8ac1c0148db49b86114b1fa2292b4f523d90f5654a9fcb7bcee16c5c893c712cdd8ac1c3e48db4930a6b9e6dc84fec3af8ec4a10c3cb01531c893c712cdd8ac1c3f48db49b94bae207f275982f280dacad4c09b8aac8d4fec9274f40510ef0e6a7ae6e135c893c712cdd8ac1c3c48db49475c1b5e8d759f56f2ce92af712ea7f2b08714c097055c33eeaea9acc8c25004d4bdecf6bfb184a5a87b882db1de47681b4a0255da0d268b32651b865a38ca63321cfcdaa1493eaa9b2f89942de2cf1198652fd8bb015ec9463a89f78a54e5e6245c6c2dd5c9530cab2b74fe1952f2076ada7ee61533420ad196bddcab93558d0ad448bd08f61aeb2c3b328dba389b4694001ebb9d448a9ed66c82a65e2596afdc697736958a394dae6422de657fc2f2f3f1c25d7811342b90b79e869144b7564d5858dfce63a0d90275dd366eb7cd84a1d8f11bd5f8a9d3c87308d815cddd129873ed74b1c71a8d3f311425ea97344596100ca6cfeb6e9c03d305679a868711ca73d2e634c8dafb0e84715818128118b5a146755f4b9939ba034309630f06110e5b235b414fee551484b4c37296588fddd6c82072fb623ab09d56decf90f6647c3c541e862b39e58b1c742078791fc8855cd28f9f34153fee3eda3a8f9afd1af6464b547bc893c712cdd8ac1c3d48db4954648b8cb64a18135f3c50559cd6cb2dc3eaa958d3c893c712cdd8ac1c3a48db49218e75eb182c1ee2661eeb11d8cdb3cfc893c712cdd8ac1c3b48db49f50a40660f616f18eaf2328ea536009743491c9b1a60875eea6a64d288dcbb59c893c712cdd8ac1c3848db49365c94c16efa50dd12f19e3143446469c3ee1ba5d3c893c712cdd8ac1c3948db49077990429d992b96a51ceb9e0c380c1231c893c712cdd8ac1c3648db497eaa6a9026e381dab70c8d51d715e1c2d0007246cc18f7b6e6a26d6b7a0d7b81c893c712cdd8ac1c3748db49a6d065343f462114da94dce28eb81d4765206c3106f99a4c588b7bcb8f14174b2ab89d827a3f7f08719a6c29874447b5bd5002dcff8401accafb87ce8e79d3d3cb4986bdca782dc12a421b59b55a769573503e5c26dcfb143b4f815ef9affad8a38d7e6d2e6e838645b9cb00623d8a8a8a22440daecab6c464f90c967ee7d26ba6e0293ebd18050405fa73c012a9056b4c3285bc4e4f079ab248a5459116cc44e3b02fe7944f1b366870395849c9de772e3ee041038db13ea764806474dece94faece34e4205bc2625cbf9c734a9120609a320d4e70d3ed9ec87b1f6ec9c1d0ee05732cd8a2bd0f1ec8da07a2d99b7562d47e806ac012dc4dacd1cc2bd2e96e0b45eb1e396d3016a1228cdb70776a9962ce978af5ef7830beacf98ac30b042348ebe22a9e13e6aed9a2fa3bafe92485b40304f6d2e8d4a17c43a5953bf582af9e3cf64a6dedc6465e1f46f548f870276171fec130f12c6c01b7ebee79c7551217cfa93ee1bb082b37e4c42c27c5265607e871b953eb15366bb1f127711a81fff9fb6366b8a6885c95222fd4ab75dfd92fda9f100615b42c9d7ade71994c0a3e8bef157958d9b0b2b2329ae471fed4e2c0b9afd1af6464b547bc893c712cdd8ac1c3448db49ce8b078f5a3496a7ddbc314753c893c712cdd8ac1c3548db49f74142c523a0f8ef0186f21d94426b7e2acdb9dec893c712cdd8ac1c3248db49a4d67fecda24169712f680d27668d146c386e178d3c893c712cdd8ac1c3348db49b71d2a5984876915a575bc5ffad825cc8a57ff4106ee03c67a355010c893c712cdd8ac1c3048db49389a84d164c792cf07cc68b465a8839bfbe0422ec383a399dd8ac78ce65d2125116829fc3b2e16634f0af2b4bb7eff55a344411af826d51d38e1513ec2002c68c11f73897cae9c4e7837b6cf5600adc88a0fb3a90fd89c340dd53f9349224eaac73591b9fa9100ad939d5d41085d507936132b76edda71e8e03b45d250ce2dd7dd20628a54ea7b0d73b598da10026aabb196561afe2465a1578dbee5111a73595bb0c9454be54ea793570dd9c832270c274f550a769d911d8e6eb21fdbc181db13df11d3432e3e14b14900bedb1ec9f8e4081e6d64545c0a24414d018bdb8dcf5fa73e689c4a039b5fac1b4e39d6bcf9ea43f941356d095cdd46fa6ede074a033af804537b199e787cc85b3382954a7f4d2aeef240eb3ae6a597315cfae4cb65191b5d3e0321ef777f5aea046b3a0fa4eb3489ced34d15b8610859012dd1b0e87daad90bd52a65c619800aa980e0e245718ed6e62f31922cf96bc204a49b5384be81fb5d4595759fc18d069614c0875c920aafe350fb52cf4eaf7f2869b0de8daf390128579ff44e58737b2464d78c0866eec9a446e0be5bf079caae5cee7a6dafe09abbd522f1c847f13b80856923b808a4435e9430f7fc335ddd612af26546dcf1a6de0fe75c11cd330c4a17c86b1f7638665733227d60314a06de7a39a7da531f9d0936e5ee5d23a512abb5a56d6e806a8e2d06b2c2d9f4adc29fd5213e423e105ece856be80b74711b77402f1810825a274670ce8a9f1d8e59de1ad1b966a66e47785aab29fa7886a22a92b52b5d6bbc874251063f82ff7fd70a54b0547806b205fbf9a0bc21623bde28b0594818292f95faeac44569b0146e38d49e017569925286e1ca4c3ee5d705431aca5e5a60997a858552579b6f845e11f6ac2b52c22f2323007d7808867c7dd2143445b2048b6047f32db1324138466cc5fbb921faeb0615275ffdec27c3e758a4d177e1207b022b06f2675a1754075829991a7fb12480e724c93fda27d281bcd12e60ce8395dec25fc9223921675bdd9355099b185ec50824d49133b300c203356cff9ebe617346a20cff6ec332dac2c4ed7a49c7542cd5fe93e0539e661457eb1d40a5eb656ffdcadd0db7f4128eb5a40edf3d212810ac54b423616073aee27c6855f2c33e58024e42812ca4deeb9bc7caf82e028d8c444d421e5cd8ab7a95fde01b452a2a0727be743aa8f6460075bc7249145311ab79e21439028d600f876ce5350814d5adb86c39d0da03634e89f6abc641330b5d719c89a3be0ae314c2f143c831876cb82c6ef350f0e413410cfe8307cf15b2216a07f4fbe5c64becb22b2bb5d36ba33d30f278ea47736db243d953ccbfef6409340b357cd805f657ece0bfef4b74d6c4e29f0cf6f3651730a8aad0ea362db5ba3aada97b535ead3edc030060aea5d31e6819a15027997224481d6aa10aa88f8764156b58820775890687f8079a0d7cd4a27f32554380b02142796c5aed259ddda6b352064e499aeb4ee70d8be3d3dc6da1ec81f9e85978b35659f3a766640ff5b0965a4869b2e753cf13619cc2df99fb094c33eab230bc4d526028b60259e606ad29bb0928462d905d8122fbcae4fc9cea9b74443efc0e292a92032745f45875cff74fbbb337d0f44289bbf44c26b49dc42a3bf7f9e8b2b566438fe5f969d46cf03bc761c99087da9bff25c8dc47b19c4b1ff1e8229cc2b3e32f989a912676cfa42b18660784b77bf34107eba39f9b2933ad99e64d999e91d0ce6c9adeedeaee65afcb1f778c54a8c14490593012f19a64fa610e6895cb14a931f8900ebf38fcae5df07379f16ca5bebdd41b8f9573e1632304b8e89b4bddaaaebbadbb5e726db3478d5fee8596b8337de98da2ae512c9757b85c93765bf37a8eb4e1210865796ba2a79e37cc1782f9159f1c397ca18d534f6c910c56f7d87adbf8bf3ae0164bf30bfdc7c4b012e219365a8c70ad20b4623452ccc37e595a51536d5aa7c209705332e63330e03c7987ff6c56cfb16e4881425a461feafb01b534e1c5b6142d6adfc38a1286c454099ed519b05308bd87fd938f6dac19310891fb835da044b0037e5b9e75cde27ae3d101681855ed371fe126a9f226c13c2359059f286536d3cf2781066bf0c3c19bf5ad6bbe3233b8b447500ef1ba8eca472b1b6dbb2fe168ee51136b0c325d68b52c762ad1d60eb1ea0b3fdf83c7fc322ee63ead7fc665da80f8626bcdd3aed0f87ec676415995bc8bd075d6c8b8825fbe09c467512a0ed0a0e22425101f7c1a01dc3248d6a0a35cec918666f5b09ba25695ff29fd7cfabf063775b9611e1f88d2a57166458926bf73cce9f888da239d9b00f3ef3ec314ed254686a7d0d6232bbf308013809219a3553ccb393ba3acf1d001385351e8b7185b2d6d53cb01edda474652d3ff7433bfa2f2a7cf1891bbf777bf385697e9fcd2b6c59a417a92a2f4369d53ac2b1142dfa00bea3740eb56c064f1784bd5d84eacd6e10538aac2c7ea44ad67d7691b5e15223aba78c02de87c5caa4478ce113229f878942c82709729a5061f5ce156e98418d9b01a3c9e52b169917bf3b3e8d9ab337aacd00643ecece4ee12a3beab998e6d6389b6519b0b5862841c8b2c9f0f1be535572443e4e33f6cf1bb931b7ad2b9163273e086a2f61dee6d51e7f3ab28d0ed4feb098dd420e00c7c25b728d5c4037d947df7dcb83dbf2d488c55b9d32c83c7b485a7d749e9584a845117b4a3d37cacdbdd986bb7ee8e36c6df88004bfcf012f95677d7605c897097380228d33a6a0b69524605244907e21abca55ca9db43886c476d3c6e94d6e29276a3dd169fe6b25dd6480fbd3c803fa0e2ca28bbb9637ffd26c0804bc777feaa4ed3061ed8a050a08b2e48aec3cb196b6bfcc7e0f5e9edb353d61079863ecf5891ae5e5a8cc8b4719884fa1add0a37de6a5fcc2a1fdf066185e402681b45e5577f4cd03525816d6adbbce382d81e9a389258542d04f60e2cb3e1b2f9e3683b6c91ca66047a6587ca3c685969ae25625ca862be2ece883bf933574fbc531aa39a577190c98c060eb8c933953f9a0375065b5b811ecc231ff404b62268b22a43b23c0ff310236780dc334ed6fd8f401d57e0b67bd3b46d9268a19ec9654daded9ded6d3eb1b336fbaed26e28d1116fc54efa3f57be44b9165f9c5d21b2235e01d6968345091b66b0d369e30607c95d8469cbe7394dbb1835dc8de5cad9d9036c889a4cc09530738c3ee42676ee3743a347ec20649518d36d1bb2a1ac952274059762b9a2e9f02c6ec6a7b0941ceed25dc365ff8bfc1906e74d774c29e034dc03ab0240470fc09aebcb3e4c11e7ae1701cb6fc697b516d2eb3fce0b4ac8fd5da17ece28a07212e84a016e0f38fb212d8a90c7c676c436493f39823a03a9c91eaf4d83a0e0ce69cb3531150841a27c494c4d56cf0ed6c65450ba7af6533bbc860b4a126bad79e0e51f8fced5d2d1b3cf0baeec63f486bbf585073287a3594f88ed1e955a403af1cf8dbc9ce5f169bd14fb4e61edefaec6d9db0a61b8b5b78ba42b9a015d39107a44b59ada17fb0aecba8b95a5e7200b516ab7225417d4ec16caecc0c80a9accfafb3691bdda3f933a6b87f20f66da90128618ddb5f2c9ca0d4ed4d4ce04eddba69afd1af6464b547bc893c712cdd8ac1c3148db49324cb2c66630a172dd92b50353c893c712cdd8ac1c2e48db49a6fe9c624d65d91254f097beefd0c47ec942507adbc893c712cdd8ac1c2f48db4926a40a7ab000fb3c10ae40d5a2204a1cc3262f42d3c893c712cdd8ac1c2c48db49c8356aa505e190e2eea2eaaaa39b8360f77c1fc893c712cdd8ac1c2d48db49f591d914abbaceb34cc316113ee695ee01a4b0e2c6c6ed01502bad67b410dc720871f461c893c712cdd8ac1c2a48db494fdb1d6fc09f5411573df9fc847eb823c384d54bd3c893c712cdd8ac1c2b48db49a410dec5f87d79c8635671de1f1802d4494e9ae57d5dac018a0c42b226e42a2038ece6e79977602ae004cfc4c998c26a3b1d85f45b2992f16f1d04c4082a9562795999b1e002a1df07325968ced46fa1f6250e1ab9b81de5a9ad83d8bf08a3746d8b26a78503b51f9205134f30c893c712ced8ac1c2848db49d070d5160931f1e2c9a6940f01c685d27b99f756841e08733867740dac93f6bec893c712ced8ac1c2948db49e3081dba57f76f42a96bee2323268a04b84a2121c5c893c712ced8ac1c2648db4933f431b41e20305e61778d0a50d37cc893c712ced8ac1c2748db49b7b5573e5de358f2ab8bf30e9f91cc00f3a35c4caccbf43c12ab0211dec534c3c893c712ced8ac1c2448db494cb36e73ed1a3964895601cf621642c6636ea9dea1c893c712ced8ac1c2548db498e71d8d7d0596657d37661050d0ae59531c893c712ced8ac1c2248db490ad5384183dc2b52e5c8e004d3ede1ea7eaf08fefe83e16c8c280421b223ead7c893c712ced8ac1c2348db49a5a693f46f15bc8a4afdf370874e980ddd5a78a1f4c893c712ced8ac1c2048db49b9764f95404f8adbf6db4dd75558ba07c30abb27d3c893c712ced8ac1c2148db4986824eb9d4a9370410291b71f9bcaa44c3d42076d3c893c712ced8ac1cde48db49cf555b02b11acfe1798f1625a6c8cb89587a718e93c893c712ced8ac1cdf48db49581b94bbc569155bb44e89d21fccddc449c893c712ced8ac1cdc48db49c34fdfd956408da5058285c79e91b73d8963f2290c0735a70f821d289dd52bf9a1c67ce0ee235affee793ea8c893c712ced8ac1cdd48db49acf293b1e8da87d7e365b627d640fac263187fdaa1c893c712ced8ac1cda48db49fd03f488e9279951bec847238c4a0ce6c893c712ced8ac1cdb48db495234288b4189f72bf3f9a4b86d7c63570f1eb3d27a508d00d4e7f400422db3aec893c712ced8ac1cd848db49eefd8e5aaf41d0fa99d7644db3d0468f5838a79593c893c712ced8ac1cd948db49431eb15ebc30b4439aa3711056dcd1cdc893c712ced8ac1cd648db495b4f4ff4217b6f6e9567d228fb687232437490adb5b5ff740eebd688d49845b1c893c712ced8ac1cd748db492ea58fb1cf31692745ed827e0f16ad30c3b85e5cd3c893c712ced8ac1cd448db490f8771d6b2a9c7437a6c0b2560a94de8c893c712ced8ac1cd548db493424f97dacb1faf02ae0f914089372ba0fb0a0dd8fd3cff098b20789e61384b1c893c712ced8ac1cd248db49584eeedc4f73d16cd0bc58d39b9a9cbe63e0e7d4a1c893c712ced8ac1cd348db494ebb13a1a0ca477846cbf7bb0c4fead027c30898fe1fb2e7221ca23bc893c712ced8ac1cd048db4948f58068e14aeea94ac74bee8564758e58fe989493c893c712ced8ac1cd148db491e7f5a75d1e4128842ca9001ec5ec893c712ced8ac1cce48db49209a4cd794735613d2765d383705a724e6cfd74f9810cab9122dc7e256fc0c88c893c712ced8ac1ccf48db49d3989716dc536f25942c1e7a22b6d38c58e85e9293c893c712ced8ac1ccc48db49ad40e3791cabac22160243d21f1c82c449c893c712ced8ac1ccd48db49138199f60fd92b5ded044fd8ec9fca00a4c4a790efcc446a4eae72872eeb0468c893c712ced8ac1cca48db49ab7235417cb4a8d5a58122d8ca2a12fdd6a0a2ab66c893c712ced8ac1ccb48db49afacb41f5277e547477343ca8a5e9690d8e0dfb168c893c712ced8ac1cc848db49eba1d73cc4ff139decd473bcf2b8297a94cd6ec893c712ced8ac1cc948db491c27de2d572de9780eb4bd92118f622b4071f55032acc2481ff0698b0480261c1c87cc65c893c712ced8ac1cc648db4990c677f7e57f6c722ffc3d1e328cb8d7e33cc50f77c893c712ced8ac1cc748db49ed2e4f5913de246899f7ee46024ec893c712ced8ac1cc448db49f457ae333226578a354cee796382e3d56daa8abca5a5b58382757bde72f9cf2bc893c712ced8ac1cc548db490c49b62e4f4e56f4459ed8e7715eacbee39c9eef76c893c712ced8ac1cc248db499c125aa9c5fb31d55f82df79c53fff60e2dfa9cf92be8e2e0e7024e7c893c712ced8ac1cc348db495994605b59417004743bb8f7ecc86357bae231cd41c893c712ced8ac1cc048db49788f21cbbbde8fa01deac99e42587fc893c712ced8ac1cc148db4962ac3bcd0d0b55648aca6580cf83c0aa9432ffdea43721f6de8e29591e57cb2cc893c712ced8ac1cfe48db49cfefb41a7d970d18e63d7bda01d4df17baf00b7b41c893c712ced8ac1cff48db49de560c427d278a4513bb6c566e483856f31ac893c712ced8ac1cfc48db4978d1e07abaa298b6a1cf7736edf919cf6a0ff0f454defb61fae83c6d921ab4bdc893c712ced8ac1cfd48db49423095d0ba9ee426242f5af865700a8aaeae9ac232c893c712ced8ac1cfa48db496e1de61629c80225536d0aa4ef4432b0ae46f5f232c893c712ced8ac1cfb48db491dd2d92f087e6d40ebc6d69e76bcb88ad8564caa68c893c712ced8ac1cf848db497d221156e49469e4e1f61c1e59e005e9b9d4813e41c893c712ced8ac1cf948db49c4d9dd100d29712c0601b249f879249dc893c712ced8ac1cf648db4925b2be02c7b318352faed4c3b86e3d8873abf2b61dc16d6c679aa86626527ea6da840d8bae884beb6a3ee638c893c712ced8ac1cf748db499f9ce58e772bb1040957c530de0d729c8cf8107fc893c712ced8ac1cf448db4973e3046c122013113bf298e4edc893c712ced8ac1cf548db491e46e7b9c2906c0b3e5a4cb7f1c893c712ced8ac1cf248db490c14934f187cd858472a840ec47117f2506557c893c712ced8ac1cf348db497669c3dcf642ae5414f6f6b7d8a9e355a509cea28646c282c9c1af29c54fe6c44917ccb9550ea1ef8c3c1789a4c66c9fcdafc725d2bd3c69f4c76ff37e383bbdc900bde498edc347aa76e4ef589cf5124676c20684c8da73278469902e482c936529aa273c4f167f9ea3f376de304016e6af0c1959c7142a175ddd8b5219d9f52ce6732abb76927580917cb702b12b6bb005ed6e311b11b79386881b3ee9f7e3147a1ace8a3759f43166ef75bc2363f362deb7f2ae8ac88acad80609398f7b0afb760729282788b6bab56bf54f627d50dc79da4ab442c3048ef1dc8070218d6b2b889b525521246034e3f3b42129fe528bf9693c5cd139bf3100111c8961811293f54e94c821e3691c6bfc94679fcc763b7c6a2526fcb43a6c2a39442c35bd2857fcdffb51727f235840db152625569005e8bc90a72ab38ec02281ce7814e35a09c7f1b7f171843918c346df963f8611b749babf29fd20efd97a57f448dfd5b3c3a65c116731d7f1eb742ded2f06e9f2d7211a83036ab5433e6b30bc78b3d02caa955dc4b5f2c1f4d0a6219655b6695c881ab06d4e9d8f1f4f8235b1353ecd85f247c62c23a101b34a457cc3d51a36ce47606c23f5885bfa323edff5b2a202d2ef01136a5396b5da32c0c042d33a7c7d34a6d14f84132909436aad6b31b2b2604ec2f45691158eeaf773d991d5626634cffd8088eba8796525efeb6c398c6eef7f6e3a25193a56dec956bb9a1deb36b5829dcdc4588a4d5cf5bc5acfee86266762fdf8f8b023e00a53508d741884028e8292708aafd6e75a54edd363bcd78504a8219bfdd463a00dbe262fdcc02c811a170266e32bf462a70b6eb3e45d858ba7f31590459ba22bac25eda1472b91b97b08a414abc1096209f0810d0eb680d4846c4f5ac6df22b6f434a10943cc9afd1af6464b547bc893c712ced8ac1cf048db49d5229ca5945dfef5a189b9f8ac9a194c3b285ac893c712ced8ac1cf148db49dab489f03a2b923fba69823b7e8853e6b9e6123b41c893c712ced8ac1cee48db49c66a92ad7529a10e1fa72944269ee1dbb9caca2d419bfc570b43a9b29d853714b5cc0f072d7bae4df7ef5c9009ec2ae180293855afec7c5e21759aeb7191637efa853702ee222c50f60c6b5f4269870ecc94573cb6e1ae1229c2a4b7ef7c3c313e1e295aa359fa76a2ae9255503f513c24c893c712cfd8ac1cef48db49eb9e81f4882df19392cbfa837548086afc1ac893c712cfd8ac1cec48db490b4d3a1b010da190eba488c735e0ba43c9ec529e1f6b0b7317f06226881daf19c0a79f62c893c712cfd8ac1ced48db49e7636279b80fef2bf9f00bb812020fd6e31ae70d77c893c712cfd8ac1cea48db49f200e30b8a230c616ad474e0435c2a80d8eee29c68c893c712cfd8ac1ceb48db490b31fa8e947abc929a71b5f6d1de29ca91fd6ec893c712cfd8ac1ce848db49721d18a320dab531349242dc678b97bf8e78a6f18f2eb62c372f3c2802b0d0eca49d8129c893c712cfd8ac1ce948db49e37c55a64f6bc0e90d47b8d32ee2f49cee0ab77fc893c712cfd8ac1ce648db4940b1f882942c774326f24091aaa6c9c0bd5935002955e2f5f19025f186d4ec645a36e44f24b396c970a0fc641b09eb46d694a93a1b4dfa4acc50617249c49e9b8fa5f7a8ee1504dfcb8dc6fcb5a1cf812c0d6280f8d3c5d2fea304a26f2fd8450da10e881c3db8a441ace1f30a9b7d874bb58ac95717562e911562f98b124a6e33569d49077d84b3b95e41722f56b7d9e41f14e27581ef8123d50a65f00f44b0120d2ca6a2e096cf2da6ec26f930035c8fd366d5100540b7cb277b5796f00e01c8ba386d8ba92ded73f229540ece6fd58bbbfa7e194a234e48b15ff2033b65fee0a8e8b18a5a890869c2258e046517fea2f05b5af504237a879a38ffd90218f0da63aca67cbfb3402281e093623198aace45b2c1d924ed4dc278e0821de935575a3944b2bacbdcd886a4150bfb6ed07e2908646542306699623be7f9e2cf9280b21afc46f93710b79aefa9ea50fc2b246d79060b1aed27935b80624d22d6905836dd20bf4bd9ca3cfba7c905ca32b3c34eaaa05fa42aae61b3c47a9c0ae571cfc9c527e32e47bfda4ef1246f155f67343dbe06db4697744715cde165688a3a495433e9179893f46892f9bfe1a77a282e829391f340e8bc243510db0e003077fa0f3353763a96714d0510b8b38705377210cdf535962981b28e5f65cee3e39408deaf36b53c0a219e60d4452bea6a4ba036be2512a07e42890c7452695670c10855b3b747778d7880320662f03751daf65b98f25e1d8f1d70f536f1ae19dbddf118efd0f1319afd1af6464b547bc893c712cfd8ac1ce748db49f89eb85cf0f95480279278a218eaed736b749fc8b09b711ea19af45c090b36338dc3bbda0227d0e4791e99aefd3e2b94290fd623f5f931812fdfd195a7a7e5167c1fcb82f51e953f651583ac402c1f3026efb769248126f21fc417e46e5573ffd825f56a29c8a9236f36de7e58f9f4a78510ae8b5639ff1aa983a5b77e9c4af42880ee4c3a5fef475bb7dedad7b468d2cd977aff5cb3ad6e9f7c04d94848640317f099f95ec0cb9e8e78cea232c2b7cb6cb20f845ffd8e78b0b552f050c4ce56ad81a1531b49b15d36b97a28594af35272db96b3914f4b199a64c694bc4c4d04bdd43cd0553930f2b9732c11de40fe7fc025bf27184044e9b0f87af0e1c192e4328c33316af9eac41edb44600706c2edcb6cefb0576c28295aa5bb3b6b650c41d22a5bbc2e8d73692f1dbe0fcc16e6f2a0771f805967b0bed8f7373d1094625eaae337431be10c7cbb1bed6e252b877571773a7a3c55ce1913bd0d711a28c25bb62c2b2c46345593fbf9636b56a826d6440accd512a005c3c73a2d05595ae3fdf62f3540e3195b69360d52bb94b0d54fe7c3467a94d5c1604f006ae3ec154bcd006447f784584d5184b08a9df936bd059e5fc8ea9c15f625e03127e8a40a8180894635edcc9aea6a778c55485a80c4e90acd7df6a2139df093d4cf4ee73fdf04025d440a4cee26034bf6a56752e281c7d524ff88716a2baf9b17f4c68a4bb325125049d7c71a58579c0f37e0a42cf6924ad88f012afe507aa549c6a74b593913ba6ea4fd4fabdb015bc327279408424f6b9dc9b1509cdc4a3dc920674a8598586013f6872935f49983715b5e8149201358212ee7e0b1ea858e6c0f24ff8f3c3d35756ca6b2cda8e8b31604212fd30403c76c102292a6743589db3c65440de956f85f4d6bcc0bc346554ab1d60e77e03c609747e80c6ddbc9069e1a09b042685d7205c0918c74d90f093b756548a9ce3b05630b02f877c0ced19234aa6b6ce49e18385b7876071af4460be4f9f20eb367964e248fc13d17461c92a3eb3c7c9beba0bb1f75f38aa1cf41f28885940e07166590fe46a1f29e63581632f54fc0c3a1d9d9da6f4bbf26ad921d81b1597098852f446ab100d6cd3a3a3d4e14302eb4ad5d90cede0f8f3c3b26278b2537ee76bd4fd015f0d56b1c01668b4660cb9536f222fb3dd2eceb0548e2bd82304002ea3ff54c2dffacfd743fb7e078d2d3c999ac8cb16fed963033213b8128f4e24cdec56b05b2c72f95f90ffadcaaade08237498a5c3c86c8ec378a9195f61a5f91bc2fbf3bb34fff0da7eda93410fcf13097b9bfba33e3b9352158f48a1f010f88eace117569e68423a626a8dfdd7f73f0f78454ea2635089667fa51d693fb310de8c274bd42f9cf6ebd6f71fd4529ca1bf85cd5dc3824214d542ecb9e183f903c01d96d0e5fa3e2fbf4cc2629d2f11f6e93e73734486161cdbc9ba7303dd9b05061e45d029ef70c27153ef6e25b629e174f060a54ec382260075eb91ee6a776c546ef3fcc107f97cb4992858f0e73ec7fc5e706a243297e0255aeb3130c34df8e72764695063a38105265d4d383a77f7c08d2eccdd952f0ef3530339afd1af6464b547bc893c712cfd8ac1ce448db49dce46c4f32378aee6ef758f5cb4dc893c712cfd8ac1ce548db49039e114d741aac3ba3f7fce30e4ec893c712cfd8ac1ce248db497fe2aff163e9725a9bf72ac5044ec893c712cfd8ac1ce348db49425220d4969318e186f6679acfc0f1d7e396111077c893c712cfd8ac1ce048db499fef361c3915200394959fa44988d486d84e5da568c893c712cfd8ac1ce148db49602df7ad447321df8cf52665e074d4dee340dd1877c893c712cfd8ac1c9e48db4945c4fdc589c0aa573401f997f89052dce3389b1577c893c712cfd8ac1c9f48db4906647b4a1e432bd69b1a6dece46677bce304caec76c893c712cfd8ac1c9c48db495a7dacb813ac2a4b5fbbc8917a36a335e220eaf674c893c712cfd8ac1c9d48db49b6dbd3381c4256076ff70a16cc4dc893c712cfd8ac1c9a48db4924957cf65fccb7a941aab26c40b9b19729d25172761d7917080562eb8c1ca54888010145dcdcd8108838d6020463d2cbbac73c42c893c712cfd8ac1c9b48db497baf1948ce1c04e8b021ce0627e6e37fd8c2829c68c893c712cfd8ac1c9848db49b90819b49b31529db68c0d5b439a82fcd672fcaa66c893c712cfd8ac1c9948db492b17f80837d90b5202d7faf38d38ef27e2625ae574c893c712cfd8ac1c9648db493a37a34f09c90c07fd58b843d7b0e724ba60b08b41c893c712cfd8ac1c9748db4914c01bf5bdf711ae06c3be6a449a1f2ee25a55ed74c893c712cfd8ac1c9448db49ab72a9dea94d0ac4635facf776b66f3ae2081afd74c893c712cfd8ac1c9548db498eb5eced10151a08808e529a1a3a042fd4c3eef7a9d36ee0a626f855bad06f7b3794a1523242846f1214eb290624d9adc893c712cfd8ac1c9248db49a81fee7b30ea9490a611ca6eea8a7fc893c712cfd8ac1c9348db490c633d7fb3f2b3e03a3606a7edc893c712cfd8ac1c9048db49c8f28d5d5dd45c905c56a55a5b667318b7da6f6b2704b5d8cd556dfc79cbdcb77a23ed7036c5f3dfe13e8d5adb784f4d17b832450ba912af9125289cd8ed4859d628d88369436bee9152251bd77d331e8d9ff9fa38cb288142a532a6dfe3e76ba2f0c89c35b93111ffead545baac0c542d1fe7e00274ece4fa57b037d0c793f1839f65fc890d3579f5341b2de9e7c70c51810f7975e3ecb223be47c594428477992ac5d6651e605b477b1f7504e5baffd145e258534e9498da096910dff91e56bf7d36de1d571432030a8928429ef59bf292696b06a518c62751ec90ac0827ec29a7eb1f2171faa027dd50d856c31461858d801ae6ce9aa45553f8230ae87d63469d4cfe26a8b4d5657c5b2e02a5d616edb5281bfdd7a430d3ad379464fbf21ddcfd62413c247585498e6061c3378440df69cbd266eaf71554394a3d7b5ef5593eb8cb2a88446388098aab247dd8d2a8896efc80e05d1961d171c94ad3c5cec89f58728916da4e9323811c5b342d324985e523021afc8e2f3a11c2f2bde0dfc6ce54719f995a781c4d27e05600d7018f8448ae1f12dfcf11cdafed43e4de9133d0b05cd02a6682a2227e7c56bd16741f396f8eb2c75be741ecfc9e8beaa2fdff026450997dec981e2a7ecdfd57fec0a967ec7e920a4f163ff8bad102b025f456e73be61373a7e787c081a225699e09a138b647ad483ce954cf5d97938bb0ec3ad5823345ef1a3d52476cf5ceef2debf7aa1354d38436494a4e4171be3638cd861a5b2010cdb9042079095f7e5aedeb12dcd780bd50c286198f62701add3599705e567a7f478a9e1f62ce53fdee72dcb804d9e4a865f2f8f1eb59f31821aa433516dc30d14e26abe3af5af3f77fbfb3d005c6bb5be9f48186afafcd1d2aeadb11b5d8add60373608914655da80efdee5ece13ef7a7fb4d923ee53ab805f337252762f45a983bd0cb0009cec64af07e24f1307d1e601b9c6b7f78e097a3422b27dadaee8e0830a175b1df76ff3e0a6f6caa3a772a73f38d46d578b492eb448ecdfc6dd74893a4713cfa37e4bbb16c1c86d0ecf59cb2ac5261148c7495647b4021b68d1f0e6c3cefaba9e319b37dc096140c000ff7f615829cc0e0d3048acf66e0f68dcbef0af5a6e13c7ebd067e860b1548cbe24a711d8daae8de2dcf9923e5dfd7438054579cc7c2d44347784a995071a6ee56c211aa37decd3338befff3f518b0c294ff9418d235b02ab9e81a64313b6d1758e09ada15b6d607dd7c4cbd49efa24631c0ec13d0d60f7e3da03cd9d3bc5a80c9be5811504df6686c34c6ce27d2da99bdf56cde846e372c193b176926285ef0408c0683f7303b5bffad90611b4e871a82b20582d8ecb07aa28921e9afd1af6464b547bc893c712cfd8ac1c9148db49194549a156ae72ff72f7b209d14dc893c712cfd8ac1c8e48db49b702b5520d9e03f93a5879c6edc893c712cfd8ac1c8f48db49542ebc809962ed742169cca83a8c82c893c712cfd8ac1c8c48db4945b151cb4fd72288c52d77bc1d28283be22cfdfd74c893c712cfd8ac1c8d48db498b0b318c77b1d3555c06bb4f41626b97fac893c712cfd8ac1c8a48db49d5b25b9cbf662e608b9e5bd0f046ee5a5f10bf2375f25a295caf76538c50a89cc893c712cfd8ac1c8b48db49bba340b69aae83de1b4f441ea214bf2d42117c18d7c004f65672df91df36f0c33829254da403f249c80e86a9a8458b5c3afd3bb7f8999a73b06b23030a9939b5580207531555672d3ef8cf944f7d9c00adc40d865e320110e43201db349460e6237fab67a0deb196221e317621bd0c48844c71110934a5717350ed43911cb2fbd87e5bac3967b9b996b799b47b3210303d15bd398f4fd82c321dc5e057b9a82e824d0c60f15e7a96048e91c40b672c1ad9cd216cea13135ca40596ecbb97954ac8940c3368dbea017a701d67f3271ad12fea01202eb54a9d256e9379b69018fef1436cee7614530fa4246dd8f882980877153402a845044b057f388e956c0c7aa16af1eeffc9e2fecde316ef6b54ffaf548bf60ee65293403ad6a873ed938a098e9cadd62fe394dedbc4295f24fdae6493590f7a46e9dd24d46e14cae39e076b4e89ab0bdac11b0394d6460518eb6d90f292f4edff9905f5eb68f801839281fa5f5c08f32b45edc37d7b688ee95d1d452418a754621c362e672809d586f3f0de2e500268a256fd87b1d44cfe222cb179152a4647390756a26d71d6315ea21bba4fb8257ba633d9930be82cbc8124012d334849c2a7f1978efe8c620592b6192078b60b6beaa2000be2629b14dc5cf9b3cefe25584e37f01e18a6d5df841ebded2ad092e2970e0a60e17bc3c2464a89a85d1479adc9a2f3bb47680c2a0258c300bf52772c551838536f38ce158afef5c715ed55c226b4a484796ac4754d46b8731de17a9f0ed1bb7b3e9f088bca103c3adc6ecb9d2f663a98369686b2646e140941575fb66287018c78e214e138404f959eb77d0a16b082b376a4b3ae824165e25098a7023010b88df8f9e0963bcc943e2625837ec72cf1c473700bbb88e8fd282a963d4e7f51cd16adc72b6dd88668fef009f68a6270ee2d5c96a27e6b349e4b52c95e8f65c819fccddfb0ddb9dcbb295ebb8a0eef15376e23dcc55087ee697ce381c12c0627caf4e3752b9ddecacb72df20d7127321f5aec6dc418eaaccb363c29a685a5c59c527ca326f059f4c922369b513d155364e0db28127720c157333b0c6d9be64e35e913f4e553b026d298f3149a709f867aecf8b88cd88f7dc0f9e9c404fecad0cd58f60a62c7dd488b1343be845f750af85d918e73e184c5b85024baef0167eb23697edeee7e895739065e0ce712a910e083d71a145389a54c724ed4c5f672a1eb43548791e1206742dbbd6a5a394ad3fe41baf7b756ec7c8b04f2975f62878158165a0073e27c5b99a9d32696d5427569d27904e4792bb4c72dca637877f4ab52a3e4b942f5075bfd10cc09f2224df161e86071dccce5277f17c3788cc943ab8cbc3690910f302440daf5c0fd1284c1bdde499a77f2c2326e549ad059346762761321f20a0ae6089b82dc8b8565c73efc1b6b120a8c9feafea3178877e0d25759c15aa76ea65d80ee57e2402739f83caf049d5d9ec6b238f173216eb4bdf0e47739b0d9afd1af6464b547bc893c712cfd8ac1c8848db49831dd652eb5c91b73d10a54cf1c893c712cfd8ac1c8948db495a046526128c69b63d541f4bf1c893c712cfd8ac1c8648db496636d7c80a17e25f68f7105ec34dc893c712cfd8ac1c8748db49604540aebf2a4be2f892c92e67ea7ec893c712cfd8ac1c8448db4964971906232244180df94c8ede4fc893c712cfd8ac1c8548db4957b308813bf2e2ea18f932baed4fc893c712cfd8ac1c8248db49344430a6f44f5bc82ea41add5628998ae244296475c893c712cfd8ac1c8348db493435957b6013aa9ab79b7db54ae67883b9ec64bc40c893c712cfd8ac1c8048db499f8e0f1d56ce4224d0ca15da80852d02892618c668bac464ba7475dbc298dc27c893c712cfd8ac1c8148db49039baab64392b63baa836d919f64254be27e851275c893c712cfd8ac1cbe48db4915c2615e79943273710afa894825df742ea1444cc893c712cfd8ac1cbf48db49ecb09f5fda8eb5f636d73f413430cc07e33e60b1fb6d316e5a897c5a36066d2ec893c712cfd8ac1cbc48db491b368455ee53da9ddb5f7d9bd66abb79b9f6f9af40c893c712cfd8ac1cbd48db49007819d99f781e25b6bec18145e0ceeaffc893c712cfd8ac1cba48db497862846f46538e837b1e7a629d1d3571918cfd5128d9c5ea2c82e95ea8a50c34c893c712cfd8ac1cbb48db49d1987259990483cf3a401f91edc893c712cfd8ac1cb848db498b12a4e09a0968fcce7cb87000da1dae84809d211c287bad41496c94a3beeda25f0c61c04245383b881ec62634c42a523fc66c603b2bd179ced748de4ebddac886ae028f40feb176f3200f07aa53a6d79a09c40cc9baeb1252415623787faa4d2cb815902ef72fc87af7686e6f65392154209e0c8e3c9259dc26342fc84e0d6908fbeb28423c2d78b3913c73437de3fd0f2c4b1ef96c056a799d28b0ea74ce161eb2c9a908ca6b49bfc7e6cc30065da40024032878bfc2449d8ea8853c236b0a6908ecc66ba43d7b6f7907f312827c90ef1f65d49a846667e93defab4e2248312ad510ee9d767df72245dc7f4a9b97e02304d74d2b66c341139d42fee06a693511d20ea9052708e5276ded8a6f59b07b66d2a7911892a26ae4708cefb648900708384ba93617828b23d31791968b7864b643a20156f7a66497b9eba556292b7d74df3729f27c8da1270588ab4275e1a480e68d6db4c2e17cb8f87ef9fedef0389d3e8564a51502eee4898c1fdf2520bb3d439f5211d5c2373f4e0a034ce144fbdb3960f55a62a57dc2073f8f23faae60bc3496653191774a412c54998e93ab5ecd9afd1af6464b547bc893c712cfd8ac1cb948db49fa17db0ad116630d9e164dd67dfa6fdfd62aa78566c893c712cfd8ac1cb648db49eff8aefd369aa9f08a26a14ae2db529ec893c712cfd8ac1cb748db49274e729b8c2e96640d73acb8f3484d7e8fef7abe2431815e8c0af7389853ac7ac893c712cfd8ac1cb448db496029d07a0141171a39920f9b7c048c93b952fcd040c893c712cfd8ac1cb548db4929d82447edfcb0f650a4c24a88d97d9e8501095b48074bc222aeb3996e104970348e95cd3f6161fbcba4fef21c5ea99fc893c712c8d8ac1cb248db49641bf283458804e42dce6fb3ab0025d6c61780db8e7a7a2be8bb84359240c175c893c712c8d8ac1cb348db4977c99a316f58c5ff6710c05a3f391b306b09f12840f4009aaf3bb3bac7539aeeb2fa4e21e01e4f0bea58f84c693e12db160197c008ac428267ef888787cff9869f58838e548d0c872d304642c830798e0141201cb1806e441e49a5e040cd551238753d434b87f95c4ae7340094306ebb0e67734a57837e4a4dc72d633d0d02db08836eb58f9754dfbf3c70bc715422da2c82578984ac372b4ad9b36a0e645c19399b1bed39e1891261b41cbe3d32e38e6bb8b187b99a36b7c6df88fe5bc493cb105045e6e52a9163b8cc48e9ac75c292cc5abdb005524cb7bf71542ff65cabb9960cdb8a7d6713177d33da7974e0f9694374b6f64051e23db8336d8ea8e68d5f4fb43a33f8811fa20d9fb5ccb4a4cb42424d4a3ad5a6e8b2c29f5f3d12a04728be531dc7298af4302ef54493240a46baf077227eb85b954c0acbafd3c5dbee15956dc4c718286c41580e28e22189642477eeb2f8ab7d8bb8fbb20efe2da033185dee671b4e357f480a954ee4149f7331df1c73c9bd6a5dc4f3a1d8411de0555801058346e5e596a8a711327499438d7bf37f95e31bc4736c03c2a66ba405009c878f50d88dbd148b483b4f79a6df17bf5da2fb1279248c4506b41f7a486700bed773d0e190c260ba426d33bf355d8a040bffe5e06f69e1562decfdd5aef6c11644d8e96f3964d41548aac0f3f59768c8378feae20ceac3f404262daefeeb5280591387887cd28b07479a4ed68fafe5ba9f14bba2690315dcbda87442857a1d64527c8482f5e903f195d1f1458a851a64c42825680b9fc65930d2cd28a5614376b2d8638b9ae1e5f2d3f950784046a607ac3866fad7a7125a0ac980245b57adc6273714ace522cfc3bf07be82fdf985551089f404dd81adf6746c120e6e47b177e885ec3fcec5358f377810432f9d5d780417c72307c566e921ece4f886721a2b1892e00d92cd4b4601947d86b4a0735c82a496a69f51d793e52fdb1c6920a423fc8c262b7a6f36bf0e20d1806a692a6a76b73209a633d24a466d02bb5ded4d3c14ced6510985f69bc7a13807aa99928d637cc1bb08c430c11493d6faa81232d05850e481bfc1af35a608cb2774da3fda7f854884f532bdc2b989c6288506318c57342443dcbdd36ed465d7bfbb57428a73c2684b6141e8cfc26a42f92dd04bc80ebb24c18c5e7f5f633078556a7f67244dd9f6e1a36279041f8059e24fa1ce5022661ee889f0a72236db13f2e6ff6917d7bb8cbd116e96ae2901836b06c7172210b90ac30d47d248e8810beb8cc5216a37762f65574152547a3655516be02a9d9ea2be45feecd1bfacacb994ad21d86efd5233934b494687bf37df07013ed5c337d5f74a94dee492b6345ddb3e48ca91436c6cc0063c2c8c9cf4b7139bc133e9f7fa8014f17484b729a563fe003cb73e1ccc4bc13d69478c892b03d10a6a96c52e30d61bf2ebfa86aed2bc9f79facf037f1e7b08b9270cc04c0e1c1e75af72756bcc8312f510657733a9235ed03a2ba2cb2f0ec48910abdca92db3938a8acd959dbb4db78f9600a2a46e8d158685483bae0aea8855f5ceba0c0adc43ea49b123b727d1cd47d34ba0b75351260691c0a111b2f8eaab4a538174eb259bed2f0a7d18fb33e6cf29e0936f2fa51bf924b83d0ed0eceef7f74f588ae76fd2978d198dd43e0a27b10f6419c6397e3a29defce4fd16f818474e4f66db5a22c5e08d4a70bce23d42bf95e9f5072e59cd5d6760f53bf31ac28084e1ee3581f76c36d228e8d95df2eeb11b8c3e1cc002fe7773cac72ed4c07a03dd637d547cce75362bdde7c27ae2d978eb8197ee5bbfce4432dbde331be2924bd2c0fb08845e8b1424020c5551fae60e40456e6b4ccd51c926c863036cc5862f68878534f102ce6f1a6f541a5e35f0eccdbeac4c5a48fcbc04f7e930368dada474f2dfd7a766ffaf45bf9a1ee81146d38ed57d7dd7890a50f2675d148609db63870a5c7a0c1c13a946065da7851dac8723266d465040a163583b87c42750ff206e85bee1c679b387cc6122a6bbb740c126ff5a29a90b38bf9fa9e9dfcb32968f954e9e122834644ac039bac54efff016b17938705e7866e29bb19c5ae7254066a7b734dcb4eaf34bf7b95647844c7327f8240f9b5281bd49619f389165ad778b06524b8aa09913592720e8bc15408f5bbe7a4a9521a8cec72c915c969a2b03219f4a5b2f00630b99d8d5de73cbdb39f52b1d714894ab318f2c4dde3ea7067f519afd1af6464b547bc893c712c8d8ac1cb048db49adfd24b46548d4c69916d7d8fe80186492c258c893c712c8d8ac1cb148db49fe12b6b2f1080214580560f6986f8d747a64db4bc893c712c8d8ac1cae48db494938dbb94a1d018ecea3ddbd6e3a4addd6d4ee8266c893c712c8d8ac1caf48db491b78d21486a11cd372f7e0c3d04dc893c712c8d8ac1cac48db49d4de96cecb67d7bcf91e9a4748935cb046b0a69814dc7505801d5158f28b9a2bc893c712c8d8ac1cad48db4978f9c5f8d5ce200eaee5c9bc8d527fc893c712c8d8ac1caa48db495df3a936d73e3e6956a00d9622cc2be69f7471c893c712c8d8ac1cab48db49d0483bf6022ee7e32759acc022e11a9bc24b587dc893c712c8d8ac1ca848db4922f18bf97d3a04bb316ed9884552c2f3ffc893c712c8d8ac1ca948db49bd47df4f7ceee97e5ec50249fa58419cc893c712c8d8ac1ca648db49512b495f1ea106f91c96c2493e0a3a9dc893c712c8d8ac1ca748db49d83fbfccc260b50f7a6b590e777e18722abf58c893c712c8d8ac1ca448db49cb5b05bd4a938d08269cabe96f8c1a14d71e40c966c893c712c8d8ac1ca548db49c353534473efc7527d7dceec36436c7e4e14c893c712c8d8ac1ca248db49a1d0965a9fe39af364767cef9d375a3e5dc38cfb8efdef6c8ad7e1252e54c861c893c712c8d8ac1ca348db4966eefba40b08fc06a3f782a10e4ec893c712c8d8ac1ca048db4985c8fe94f3fb98d04e8be0fce7b0193ed8465ac893c712c8d8ac1ca148db4961c341e9960dd2e07c980b4ac264919dc893c712c8d8ac1c5e49db49cae5c777abdb838ece24546bd8a3777e9e4cc9dec893c712c8d8ac1c5f49db495f7993da80a02516676c42863bb983de65a31fc893c712c8d8ac1c5c49db49c50e2df90c7a1ed3a316170d1c94312ab8826e51c5c893c712c8d8ac1c5d49db4975781c66196cdaa372910efc0ba096debcc8c893c712c8d8ac1c5a49db4946619f562abc59b3bcc350c7c043b8d8b0608e588c216c46bee103f2a811c59bc893c712c8d8ac1c5b49db4990e466ee4810304d06791125b86d55e8c893c712c8d8ac1c5849db49edc8fad7c114d38f85612ca67d5a616dc3d609aad3c893c712c8d8ac1c5949db49775cbb327374b922bf9b8d6e0d027dc893c712c8d8ac1c5649db491dd342a4db194ebe21a439a29704e1f327d48fe188c2efd7b6db77f46e1efdc3c893c712c8d8ac1c5749db49e8e813506913642dc8707210b0efd2cdc893c712c8d8ac1c5449db4986ac5d1927d27f584be5bff03f3c9652acf36299e9de4dde5b1eba3344a8031910726ba66182bb960a1a664de8981a5cb411b34fb07c111e9d1a087881323e817cb04cd79cff9df466b60e1e42831a7deb3d317316f544f613fc730f49b22d09dd66ad34a5cfab78d123f537131a1baa0ab1193c1a0b7eaeae8f99f5856e2c4b90706d8a4e86fcf846c8a4ef2b5347f47e7e707d3edb27c22f310ea3ff9afd1af6464b547bc893c712c8d8ac1c5549db49e2d4700b64fcd669dd476a8062c65b106bb710517a534121278b985078e746d0203162b2129b829b41134874cc30a816b3c2a4d0ea8e966760a68c411739982781f3c134845596aa1b1d066f3f88fc15bf8355e379c17b7b4b6b34cd810a1f47c76cd3e02f746622c6affdd9933356c01333a667681c542bc2eea5e62c16c3fb1f896631e798c6346e2462cc69971fb0f11032c008ff0f7c38799547419afd1af6464b547bc893c712c8d8ac1c5249db499bdf527898e7f565788904beb0fe634c7f836f8c70311fe9e9315352dd84b26b87090094d1a3a0a9276bf16081fc1d3d3491862b1a74425bf16d243ffdc540119c3c292e2f46abe6be0f0c3e79607d329d6b979bc07b7529c8e54dbda91a80349893fb950047b8569b4d532c62450367f677802cdb6f9fc6c5d52dde33b2affd9460748094f5f3630b156a445077875b2f45953c9c48e79c71551a46ad165d1a477ba7f911bf0124b86722379eb58affc82aab5fd5201ea6137e63ab32546b13ce2001e5d08bba66e183830b6d119c0b0c7774a108eb41e8fbeb15dffeca4f471ce1707856b5e84514ed3187531d0ef69ab5025d41d779299d085f98b034f98c70dd9c48c5d7f734db0fffa5f32b47c0562695f2734f6573525882f8fc2ac593ee5aa58ab6983425f4a4a6dc25fcef243cfbfea3fa5682b5181f5ab54c347b6ade42d976eae08790489a16f0d92d35e5e0251ee90e491e21b3f9b9626b373e66e4556ab2a6e9ad52d762c72518f0af2f1b90324db3599b7010481fc6e475eb7c2dfcada37c151de8729d78c877aeabb95103661cdaa81e5ab04b13ccdd14c74d1c5f52ade5ae8d80a7fddcac5c55ff628b70de27fedf247afdeb8102f791e0b8db14a49fae5942008b35888733a7177477853e5744acb6a58976707eb66872557b75e0fe821214ec5f252b847d556f96601b1c74a7c14d53dc1bc0033bfca64ffb6b4b7bf2b097ea614d1f3d9c90658c236290c2963269eef5e9db0ead3e6b8d6063e74e8951fa19e820f00edd14479a4da09eccbcf75cad256e23a4d446c180dfc7a3c58bf36f5b597db560afa327f268fbf7590794a26d60a1b45e5b9c568f285f33d05eb582d778ee23b4e49aba241cc09a53bd10826dd01be24621dbb0e7454037d69370b56f68a3bc641ac14530b35cb3e882b1832eaf9afd1af6464b547bc893c712c8d8ac1c5349db494cc04c9d8c6432bb7363631e1afa211b428db27ee5d85371dcacb905dbe3cefe52592aeab31c034863faaab7ece5d7d9b1402c765ab572b548a37c67fbd2615b67950815c7cf15e13336748f3f371b00ce2f8484ffb3d5629a4b690a76e79c340fc0f47b1171e47dcbacbf75699c76de0e2410c28a584fa451534a70a683f99eacd0ab4a84364e761c08c630a619b18a49ed8b201045de1ddb89b06a287d9dc467c0ab0865e1658f647cfce3126bdf2d846b5fc865b147685e15080c72e44e0463142e8981a96f31e8f6cfb50e59075b62804132dee5e71fc4ed086ffd4c680f369189bcc5164488ba2ba1e0831df1c85c878bbd2bb9c3a2c1dfc47f2a1033882ad450430a14509619f0b87b04ce19ea750e5f33953eeead0015b91f47ffc99cdcaa68d4b715b8ce639af3305b425fc89cabc0df53c46189bebf56c1297ebca4fdef77aa9e75700711a3c404ba669e9fc68e1202889ddb6a6d6b242abb6a6c3472eb9a037a5a33e8976890183b1f4fa9cb000042fc526de4c350ee54f3f95010b70c8e2eb128ceaf18d642b10f994724cf6eff12c469c3a26e0ef582f786953c9bfd2d10e6ebfca4003d4401baf8f846201a16d9116897301b4736a40d113ac4efeefef76734065336be365d94686b4c374ba90ee530861512ba3c9b48c137da7100c573ce94382b870cd2026f9c0ffa4c2ccb696b22a6963a570244437874a1ec0774c3ba0322a6808eb34dc9ee01c0676a076523ac5751cf240bb610077811580bd2f5f5d066ac56b8e9187abaab0fad46e7959ff696105efdb5244d4412363ab73a814a8b2c2c0d95fe9c74da34c2c17c4658333459fa591e52f8a2b19b575a1a66fec6cb15931f704ae0e13400cf32c9ff05beda3105edb7a9f481d0e5a4e7829162b0b7c8f11c17eedef014875819097ec588159ec42e9a0bd262f64887ed57398bcb03ebe05b4ac2d69b472531cb9cd070bb68818a7329b4f4245bca62dcf8eea68cdda1b7aca529aff7965acbffd4854132abea3823c0493841d3d1db9f36ce2a49581b2767fb48e999a9eddba3eb6ed0251b3a68e43e770c33448ecd7d11d1dff6d48a75cf8f3f76e69afd1af6464b547bc893c712c8d8ac1c5049db49556e378477346958cd069e070d42c19831c893c712c8d8ac1c5149db4988209430bbf0e5a6f81a3a12c27519d0c893c712c8d8ac1c4e49db4907575492119c2f5c56b42412eef3fdcfc893c712c8d8ac1c4f49db498aebf97b9e0932d65c934e1db480f55ac39a6592d3c893c712c8d8ac1c4c49db493b8bb7b1e91f07ee1b7f7961c7105436081b76d5c0d92ed406039a22c893c712c8d8ac1c4d49db490390ecbdc4fa70932f1435644688e00f01c893c712c8d8ac1c4a49db498aa9036844f04fd4b9d1855bb21b3d7ec27b7edec893c712c8d8ac1c4b49db4923eb9f27b85fb49c1650adab019f1a400ccdc9d139dfbe011fe3ad03b9d5b59b50ef944873e6c9ea58ad2e945963a49dbdc798156e4ba1ec4ffb65ce202c05d06c9e288fac8fb943fba47681814b27d4f98ff28bba74df0f89962afcad029bdeebd8f060024597426c90fc429987aa8414b6462cdb2b85a65801cd83bf79ed0006d94e0ccf1e1aeb3aa0139f0692c124d582c23c5c18a84b2701f4d644d7c20b94e2e8bc4697ab9639d796da9dc2928bb4b7d2e2d17b4cd60110ef587fc49e4dbe8c4a1d1287f07a30e4b3c5f39acff6ef0e1d58332b589b998224056ddcfebb0d9c55f2d55d19d32cad9181cc737ad82e92d108dbb11a402864fc9d71b9eafbf78b1217f10efc584d7521644a325bc51970ca48c1a028c9b382d35f14dd7dfa7e5f4864be62725944d2184f377bce51f98267da9a5ffb74feb7d0a41ed0b2cfff2de6c41e548be3026b4f2f98ea20715861029edc1b740addb3e43612f73a5eaaa33198bae12cab47ed2e7123485a634bba3398e7b307ed674a9918843042f8e6d593d4a87f93ed9462c1f6400c8d471fc5c51f40dc029bc2f0b529d425fbf7d30048fa5e1dbd506e906c294db6abbc37d2b2a230c71a71f111104beacd004a21c4bdf3b729cd0b5c789e6c86dcddcf951c281dfe0c24e5a6d316b884c240e99416c15cef86a76bebc52a9bd1407c7aefb1a60a66715fbd2e909d8b05f3130bb0d8f8e24cdc9ef30605f947b435dd053a8ac05f4920450f642ae73556ff4805e86df9a25f077d277e631fa655b95a324d2f924883d68ecfffcceffb877f651f1f765ace1280b4ad7ad27a73a31b92ad99d3b0659fa9a9aa2c2e85ba3309e3559c56a313f231089ea8a7102145c8dfedc223b4b2e489cd9cb47e2108309afd1af6464b547bc893c712c8d8ac1c4849db496427f538cf267c73ddf6d20453c893c712c8d8ac1c4949db4980f81556dc61561427bb42657d4bc893c712c8d8ac1c4649db499988c3615a3dd244f52254a4a048a832ddaef6d0f4c893c712c8d8ac1c4749db49d130a20bee288227abd0c9f20c381d7e31c893c712c8d8ac1c4449db495910c50f5355ea5f40ea91391e29df3da43ad5b39aed27273c67454670232908c893c712c8d8ac1c4549db491e63404ef289b055faba1278444bc893c712c8d8ac1c4249db49d5869fa1509c2775dd96fd0653c893c712c8d8ac1c4349db497b647c16d5857a202bbb1494824bc893c712c8d8ac1c4049db497883696cd7eeb6b629bb26c3804bc893c712c8d8ac1c4149db4986ec01cf719cafe723cd0d529e2550b03580bfe07ee418f14fe4e81adff998210a5fa188dd270afc4deac46b4d960126b41a2469a109c9bb16e77a5af8f3e1748e32800316b16c40b10a72ab3adfedbf0a00699f8a17956a9fac448284d3dee103d05a4ac70f42bdfe2f0d383295fcee8c0ab5925c2e88199146fe36977bf97c0453c438a3eca4bf268e1317ee07e1ec43e827433c4645d20fd6072ccf98838dfe590ff78c1f24351a96cce70ee9dd0e932b7814448487af76ea1d95245c0193b019f06c76c16a909acc3fa2f8cf3bfd24a42017776b8023b91fcf220901fe22161ba5d3951d5d76667b1b5356c460110f1464c081a7acad83d62b5b390dc17c113d916af1df36659af699403d94244d2842e467e0a1773b65863ded4f62f359af1c8a29f73b254dd051be39f4dce5d0b9af9bc11a3c232efacfff112983daf16e0a15f977b801a50f2077bd87194b5df649da0d3192c80d4333a6b35a9afd1af6464b547bc893c712c8d8ac1c7e49db49981ee652c06b1ce260f2d2b5a01adb6cc39449a9d3c893c712c8d8ac1c7f49db490ddf32a92b008aafe42ed111bc7692cfc893c712c8d8ac1c7c49db49db3910ad126fe4a49fd219e0729d9e7378660b529ee4ecbc90743d0d826dadbec893c712c8d8ac1c7d49db49db0cede3ac1ef945064aaf98ab863168c3ca95a3d3c893c712c8d8ac1c7a49db49fba26b55690958248a97e811009bb0cfc893c712c8d8ac1c7b49db492fea1050407d10bc007cf92f59217357fd1ee6e5b7bbbefb5c22de69b0a3787f')
function eh()
 if ik~=true
   or hl.w==0
   or hl.w~=
    bit32.bxor(hl.p,nc[2])
   or (hl.u and hl.s~=true) then
  bqs(); fni("VM integrity prerequisite failed",0)
 end
 hl.v=bit32.bxor(
   hl.w,
   nc[3],
   hl.p
 )
 if hl.v==0 then bqs(); fni("VM integrity continuation failed",0) end
end
function ni(kg)
 if type(__VM2_AUTH_MARK)==cre[13] then __VM2_AUTH_MARK("entry") end
 local yc=string.sub(kg,1,4)
 fg=yc
 local t=string.sub(kg,5)
 local nh=xl(lz,uz)
 if type(__VM2_AUTH_MARK)==cre[13] then __VM2_AUTH_MARK("stream") end
 if type(__VM2_AUTH_KEY)==cre[13] then __VM2_AUTH_KEY(type(o),#o,o) end
 local x=ke(o,"a-54dc0d27e9477deba96e3bd3\0"..yc..t)
 if type(__VM2_AUTH_MARK)==cre[13] then __VM2_AUTH_MARK("tag") end
 if type(__VM2_DUMP_AUTH)==cre[13] then __VM2_DUMP_AUTH(yc,#t,z,x,'a-54dc0d27e9477deba96e3bd3') end

 local ed=0
 for jxn=1,#z do
  ed=bit32.bor(ed,bit32.bxor(string.byte(x,jxn),string.byte(z,jxn)))
 end
 if ed~=0 then
  fni(); bwb("vm",0)
  return
 end
 wt()
 hl.p=qu(yc)
 hl.w=bit32.bxor(hl.p,nc[2])
 if type(__VM2_AUTH_MARK)==cre[13] then __VM2_AUTH_MARK("verified") end
 ik=true
 return t,nh
end
if type(__VM2_AUTH_MARK)==cre[13] then __VM2_AUTH_MARK("caller") end
local t,nh=ni(ch)
eh()
function iy(cdy,etx)
 local ax=0
 local xw=1
 for lks=1,4 do
  local lkt=math.floor((cdy%4294967296)/xw)%256
  local ih=math.floor((etx%4294967296)/xw)%256
  local jn=0
  local ns=1
  for inr=1,8 do
   if lkt%2~=ih%2 then jn=jn+ns end
   lkt=math.floor(lkt/2)
   ih=math.floor(ih/2)
   ns=ns*2
  end
  ax=ax+jn*xw
  xw=xw*256
 end
 return ax
end
function pk(jxn)
 if hl.v==0 then gix(); bqs("VM stream continuation failed",0) end
 local ixf={q[1],q[2],q[3]}
 ixf[3]=iy(ixf[3],jxn-1)
 local quo=uyx(y,string.char(33)..ba(jxn-1))
 return xl(aq(quo),ixf)
end
oq(5,nc[5],vu[1],vu[2])
local pqa=1
local rp=0
function mv()
 if hl.v==0 then fni(); bwb("VM header continuation failed",0) end
 if rp~=0 and pqa>=rp then fni(); bwb("vm",0) end
 local yhs=bit32.bxor(string.byte(t,pqa),nh())
 pqa=pqa+1
 return yhs
end
function mfb(ixf)
 local yhs=0
 for jxn=1,ixf do yhs=yhs+mv()*2^((jxn-1)*8) end
 return yhs
end
function zp(sg,buz)
 local bxc={}
 for jxn=1,#sg do
  bxc[jxn]=string.char(bit32.bxor(sg[jxn],buz[(jxn-1)%#buz+1]))
 end
 return table.concat(bxc)
end
local em
local kv=true
local ue=0
function uw(jn)
 local ae=cre[14]
 local bxc={}
 for jxn=1,#jn do
  local lks=string.byte(jn,jxn)
  bxc[#bxc+1]=string.sub(ae,math.floor(lks/16)+1,math.floor(lks/16)+1)
  bxc[#bxc+1]=string.sub(ae,(lks%16)+1,(lks%16)+1)
 end
 return table.concat(bxc)
end
local fq=false
function de(fc)
 local gnq={324508639,610839777,3285377520,523124044,2309737967,271136839,1432778632,2712847316}
 for jxn=1,#fc do
  local vor=((jxn-1)%8)+1
  local gj=(((vor-1)*3+5)%8)+1
  local jn=string.byte(fc,jxn)
  gnq[vor]=bit32.band(gnq[vor]+jn+(jxn-1)*73244475,4294967295)
  gnq[gj]=bit32.band(bit32.bxor(gnq[gj],gnq[vor]),4294967295)
 end
 for ua=0,7 do
  for jxn=1,8 do
   local gj=((jxn-1+ua+1)%8)+1
   gnq[jxn]=bit32.band(
    gnq[jxn]+gnq[gj]+bit32.bxor(2654435769, ua*73244475),
    4294967295
   )
  end
 end
 local bxc={}
 for jxn=1,8 do
  local jn=gnq[jxn]
  bxc[#bxc+1]=string.char(
   bit32.band(jn,255),
   bit32.band(bit32.rshift(jn,8),255),
   bit32.band(bit32.rshift(jn,16),255),
   bit32.band(bit32.rshift(jn,24),255)
  )
 end
 return table.concat(bxc)
end
function uu(quo,fc)
 local go=quo..string.rep(string.char(0),64-#quo)
 local eu={} local zh={}
 for jxn=1,64 do
  local jn=string.byte(go,jxn)
  eu[jxn]=string.char(bit32.bxor(jn,54))
  zh[jxn]=string.char(bit32.bxor(jn,92))
 end
 return de(table.concat(zh)..de(table.concat(eu)..fc))
end
function ys(qt,quo,nb)
 if kv and type(print)==cre[13] then print("TRACE_CASE_STEGO ENTER "..tostring(#qt)) end
 local qy={}
 for jxn=1,#qt do
  local yhs=string.byte(qt,jxn)
  if (yhs>=65 and yhs<=90) or (yhs>=97 and yhs<=122) then qy[#qy+1]=jxn end
 end
 if #qy<256 then gix(); bqs("vm",0) end
 local function szu(jn)
  return string.byte(jn,1)*16777216+string.byte(jn,2)*65536+string.byte(jn,3)*256+string.byte(jn,4)
 end
 local function xu(ix,ai,yn,et)
  local gnq=nb(quo,ai..yn)
  for jxn=1,et do
   local pc=de(gnq..cre[1]..string.char(
    bit32.band(bit32.rshift(jxn-1,24),255),bit32.band(bit32.rshift(jxn-1,16),255),
    bit32.band(bit32.rshift(jxn-1,8),255),bit32.band(jxn-1,255)))
   local hsc=jxn+(szu(string.sub(pc,1,4))%(#ix-jxn+1))
   ix[jxn],ix[hsc]=ix[hsc],ix[jxn]
  end
 end
 local function amm(ix)
  local bxc={}
  for jxn=1,#ix do bxc[jxn]=string.char(ix[jxn]) end
  return table.concat(bxc)
 end
 local jf={}
 for jxn=1,256 do
  local ep=qy[jxn]
  jf[jxn]=string.byte(qt,ep)>=97 and 0 or 1
 end
 local vo={}
 for jxn=1,32 do
  local jn=0
  for isc=1,8 do jn=jn*2+jf[(jxn-1)*8+isc] end
  vo[jxn]=string.char(jn)
 end
 local rv=table.concat(vo)
 if string.sub(rv,1,4)~=string.char(86,50,67,83) or string.byte(rv,5)~=1 or string.byte(rv,6)~=1 then fni(); bwb("vm",0) end
 if kv and type(print)==cre[13] then print("TRACE_CASE_STEGO HEADER_OK") end
 local yn=string.sub(rv,7,22)
 if string.byte(rv,27)~=0 or string.byte(rv,28)~=0 or string.byte(rv,29)~=0 or string.byte(rv,30)~=0 or string.byte(rv,31)~=0 or string.byte(rv,32)~=0 then fni(); bwb("vm",0) end
 local rm=szu(string.sub(rv,23,26))
 if rm<1 or rm>16777216 then fni(); bwb("vm",0) end
 local toy={}
 for jxn=257,#qy do toy[#toy+1]=qy[jxn] end
 local pm=(32+rm+32)*8
 xu(toy,cre[2],yn,pm-256)
 if #toy<pm-256 then fni(); bwb("incomplete case stego carrier",0) end
 local zq={}
 for jxn=1,256 do zq[jxn]=jf[jxn] end
 for jxn=1,pm-256 do
  local ep=toy[jxn]
  zq[256+jxn]=string.byte(qt,ep)>=97 and 0 or 1
 end
 local pbx={}
 for jxn=1,pm/8 do
  local jn=0
  for isc=1,8 do jn=jn*2+zq[(jxn-1)*8+isc] end
  pbx[jxn]=string.char(jn)
 end
 local dq=table.concat(pbx)
 local fv=string.sub(dq,33,32+rm)
 local z=string.sub(dq,33+rm,64+rm)
 local vv=nb(quo,cre[3]..rv..fv)
 local tr=0
 for jxn=1,32 do tr=bit32.bor(tr,bit32.bxor(string.byte(z,jxn),string.byte(vv,jxn))) end
 if tr~=0 then fni(); bwb("case stego integrity failure",0) end
 if kv and type(print)==cre[13] then print("TRACE_CASE_STEGO TAG_OK "..tostring(rm)) end
 local xl={}
 local zl=0
 while #xl<rm do
  local ve=nb(quo,cre[4]..yn..string.char(
   bit32.band(bit32.rshift(zl,24),255),bit32.band(bit32.rshift(zl,16),255),
   bit32.band(bit32.rshift(zl,8),255),bit32.band(zl,255)))
  for jxn=1,#ve do if #xl>=rm then break end xl[#xl+1]=string.char(bit32.bxor(string.byte(fv,#xl+1),string.byte(ve,jxn))) end
  zl=zl+1
 end
 if kv and type(print)==cre[13] then print("TRACE_CASE_STEGO PAYLOAD_OK "..tostring(#xl)) end
 return table.concat(xl)
end
function sw(thd,et)
 local ir={}
 local rd=1
 for jxn=1,et do
  local yj=string.find(thd,string.char(2),rd,true)
  if jxn<et then
   if not yj then bqs(); fni("vm",0) end
   ir[jxn]=string.sub(thd,rd,yj-1)
   rd=yj+1
  else
   ir[jxn]=string.sub(thd,rd)
  end
 end
 return ir
end
local function nb(_a,_b) local _i={} local _o={} for _n=1,64 do local _v=string.byte(_a,_n) or 0 _i[_n]=string.char(bit32.bxor(_v,54)) _o[_n]=string.char(bit32.bxor(_v,92)) end return es(table.concat(_o)..es(table.concat(_i).._b)) end
function zw(ir,jc,kk,gm,lh)
 if not em then
  if false then
   em=uu(uu(uu(ab(on),string.char(17)..string.char(91,184,30,80)..'a-5614373962bb2af661301ced'),string.char(18)..'a-5614373962bb2af661301ced'..string.char(91,184,30,80)),string.char(19)..string.char(91,184,30,80))
  else
   local hy=nb(ab(o),string.char(17)..fg..'a-54dc0d27e9477deba96e3bd3'..tostring(gy))
   local dh=nb(nb(ab(o),string.char(17)..fg..'a-54dc0d27e9477deba96e3bd3'..tostring(gy)),string.char(18)..'a-54dc0d27e9477deba96e3bd3'..fg)
   em=nb(dh,string.char(118,109,50,58,115,116,114,101,97,109,58,102,105,110,97,108,58)..uw(fg))
  end
  if kv and type(print)==cre[13] then
  end
 end
 local om={}
 local iae={}
 if gm==1 then
  if fq then gix(); bqs("embedded digest replay",0) end
  fq=true
 end
 local mj=nb(
  em,
  cre[5]..tostring(lh)..":"..jc..":"..kk
 )
 local qd=string.char(0,86,77,50,95,69,77,66,69,68,68,69,68,95,70,82,65,71,77,69,78,84,0)
 for jxn=1,#ir do
  local nx=ir[jxn]
  if type(nx)~=cre[9] or string.sub(nx,1,#qd)~=qd then gix(); bqs("vm",0) end
  local pp=#qd+1
  local gs=string.find(nx,string.char(0),pp,true)
  if not gs then gix(); bqs("vm",0) end
  local rv=string.sub(nx,pp,gs-1)
  local xqz,vpn,et=string.match(rv,"^(%-?%d+):(%-?%d+):(%-?%d+)$")
  xqz=tonumber(xqz) vpn=tonumber(vpn) et=tonumber(et)
  if xqz~=jc or et~=kk or vpn<0 or vpn>=kk or iae[vpn] then gix(); bqs("vm",0) end
  local zq=string.sub(nx,gs+1)
  local yxb={}
  local ae=cre[15]
  local amm=0 local og=0
  for pqa=1,#zq do
   local jn=string.find(ae,string.sub(zq,pqa,pqa),1,true)
   if not jn then break end
   jn=jn-1 amm=amm*64+jn og=og+6
   while og>=8 do
    og=og-8
    yxb[#yxb+1]=string.char(math.floor(amm/2^og)%256)
    amm=amm%2^og
   end
  end
  local bxc={} local zl=0 local ilv=1
  if gm==2 then
   bxc=yxb
  else
   while ilv<=#yxb do
    local jm=nb(
     em,
     cre[6]..jc..":"..vpn
    )
    local fc=cre[7]..jc..":"..vpn..":"..zl
    local buz=nb(jm,fc)
    for isc=1,#buz do
     if ilv>#yxb then break end
     bxc[#bxc+1]=string.char(bit32.bxor(string.byte(yxb[ilv]),string.byte(buz,isc))) ilv=ilv+1
    end
    zl=zl+1
   end
  end
  if gm==1 then
   mj=nb(
    em,
    mj..table.concat(bxc)
   )
  end
  if gm~=1 then om[vpn+1]=table.concat(bxc) end
  iae[vpn]=true
 end
 for vpn=0,kk-1 do if not iae[vpn] then gix(); bqs("incomplete embedded stream",0) end end
 ue=ue+1
 if gm==1 then
  local xc=uw(nb(
   em,
   cre[8]..tostring(lh)..":"..jc..":"..kk..":"..kk
   ..mj
  ))
  return xc
 end
 local ax=table.concat(om)
 if gm==2 then
  if kv and type(print)==cre[13] then print("TRACE_CASE_STEGO STREAM_OK "..tostring(#ax)) end
  local hz=ys(ax,em,uu)
  ik=true
  return hz
 end
 return ax
end
local wq=mfb(4)
if wq~=934574926 then gix(); bqs("unsupported VM payload version",0) end
local bh=mfb(4)
local bk=mfb(4)
local vx=mfb(4)
if bh<1 or bh>4096 or bk<1 or bk>65536 or vx>65536 then gix(); bqs("vm",0) end
function fo()
local th={}
local la={}
local pr={}
local kp={}
local ma=0
local hx={}
local up={}
local ji={}
local ob={}
local yi={}
local hp={}
local gz={}
local mg=0
local zb=0
local zo={}
local wm=0
local rq=0
local tg={}
local xm={}
local ag={}
local ac={}
local sn={}
local pa={}
local wc={}
local aj={}
local pf={}
function of(wqx)
 local iae={}
 for jxn=1,#{wqx} do
  if wqx[jxn]<1 or wqx[jxn]>70 or iae[wqx[jxn]] then bqs(); fni(nil,0) end
  iae[wqx[jxn]]=true
 end
end
function nl(sr,tj,et,zk,ya,hp,gz)
 for xqz=1,et do
  local iae={} local ot=0
  for jxn=1,4 do
   if sr[xqz][jxn]<1 or sr[xqz][jxn]>4 or iae[sr[xqz][jxn]] then bqs(); fni(nil,0) end
   iae[sr[xqz][jxn]]=true
   if tj[xqz][jxn]<1 or tj[xqz][jxn]>31 then bqs(); fni(nil,0) end
   ot=ot+tj[xqz][jxn]
  end
  if ot~=32 then bqs(); fni(nil,0) end
 end
 for jxn=1,ya do
  if zk[jxn]>=et then bqs(); fni(nil,0) end
  if hp[jxn][1]%2==0 then bqs(); fni(nil,0) end
  for isc=1,3 do if gz[jxn][isc][1]%2==0 then bqs(); fni(nil,0) end end
 end
end
function fx(rx,epu,lnx,et,ya)
 local uf=0
 for jxn=1,et do
  if rx[jxn]>=epu[jxn] then fni(); bwb(nil,0) end
  uf=uf+epu[jxn]-rx[jxn]
  for isc=1,jxn-1 do if not (epu[jxn]<=rx[isc] or epu[isc]<=rx[jxn]) then fni(); bwb(nil,0) end end
  if lnx[jxn] < -1 or lnx[jxn]>=et then fni(); bwb(nil,0) end
 end
 if uf<0 then fni(); bwb(nil,0) end
end
function gc(re,dd,fp,mq)
 local zt=0
 for jxn=1,fp do zt=zt+re[jxn] end
 if zt~=mq then bwb(); gix(nil,0) end
end
function ah(dd,et)
 local qj={}
 for jxn=1,et do qj[jxn]=bit32.band(dd[jxn],134217728)~=0 end
 return qj
end
function mh(gnq)
 local aux={} local gn=gnq
 local ut={1,2,3,4,5}
 for jxn=1,5 do
  gn=bit32.bxor(gn,jxn*374761393)
  gn=bit32.band(gn*1664525+1013904223,4294967295)
  local jn=1+gn%251
  while aux[jn] do jn=jn%251+1 end
  aux[jn]=ut[jxn]
 end
 return aux
end
local gp=mh(r[1])
for hf=1,5 do
 rp=0
 local oz=mfb(1)
 local nu=mfb(4)
 local br=pqa
 rp=br+nu
 if rp>#t+1 then gix(); bqs(nil,0) end
 if pf[oz] then gix(); bqs(nil,0) end
 pf[oz]=true
 if gp[oz]==1 then
  local mp=mfb(4)
  for jxn=1,70 do th[jxn]=mfb(1) end
  local ow=mp local cp=bit32.band(mp,1) for jxn=1,#th do if cp==0 then ow=bit32.band(bit32.bxor(ow,th[jxn]*374761393)*1664525+1013904223,4294967295) else ow=bit32.band(bit32.bxor(ow,th[jxn]*668265263)*69069+362437,4294967295) end end
  for jxn=1,9 do if cp==0 then ow=bit32.band(bit32.bxor(ow,jxn*668265263)*1664525+1013904223,4294967295) else ow=bit32.band(bit32.bxor(ow,jxn*2246822519)*69069+362437,4294967295) end if ow~=mfb(4) then gix(); bqs(nil,0) end end
  of(th)
 if pqa~=rp then gix(); bqs(nil,0) end
 end
 if gp[oz]==2 then
  for jxn=1,bk do la[jxn]=mfb(4) end
  for jxn=1,bk do if la[jxn]<1 then gix(); bqs(nil,0) end end
  for jxn=1,bk do pr[jxn]=mfb(4) end
  for jxn=1,bk do kp[jxn]=mfb(4)+1 end
 if pqa~=rp then gix(); bqs(nil,0) end
 end
 if gp[oz]==4 then
  rq=mfb(1)
  for jxn=1,rq do
   tg[jxn]=mfb(4) xm[jxn]=mfb(4)
  end
  for jxn=1,rq do ag[jxn]=mfb(1)-1 end
  fx(tg,xm,ag,rq,wm)
  for jxn=1,rq do
   local gb=bit32.bxor(r[1],bit32.bxor(0x5C91E2B3,jxn*374761393))
   gb=bit32.band(bit32.bxor(gb,374761393)*1664525+1013904223,4294967295)
   ac[jxn]=(mfb(1)-bit32.band(gb,255))%70
  end
 if pqa~=rp then gix(); bqs(nil,0) end
 end
 if gp[oz]==3 then
  wm=mfb(4)
  if wm>1048576 then gix(); bqs(nil,0) end
  ma=mfb(1)
  for xqz=1,ma do
   hx[xqz]={} up[xqz]={}
   for jxn=1,4 do hx[xqz][jxn]=mfb(1) end
   for jxn=1,4 do up[xqz][jxn]=mfb(1) end
  end
  for jxn=1,wm do yi[jxn]=mfb(1) end
  hp={}
  for jxn=1,wm do hp[jxn]={mfb(4),mfb(4)} end
  gz={}
  for jxn=1,wm do gz[jxn]={{mfb(4),mfb(4)},{mfb(4),mfb(4)},{mfb(4),mfb(4)}} end
  mg=mfb(1)
  zb=mfb(4)
  if mg~=0 and mg~=1 then gix(); bqs(nil,0) end
  for jxn=1,4 do zo[jxn]=mfb(1)-1 end
  nl(hx,up,ma,yi,wm,hp,gz)
  local ok={} for jxn=1,4 do if zo[jxn]<0 or zo[jxn]>3 or ok[zo[jxn]] then gix(); bqs(nil,0) end ok[zo[jxn]]=true end
  for xqz=1,ma do
   ji[xqz]={}
   ob[xqz]={}
   local qx=0
   for jxn=1,4 do ji[xqz][hx[xqz][jxn]]=up[xqz][jxn] end
   for jxn=1,4 do
    ob[xqz][jxn]=qx
    qx=qx+up[xqz][jxn]
   end
  end
 if pqa~=rp then gix(); bqs(nil,0) end
 end
 if gp[oz]==5 then
  for jxn=1,bk do sn[jxn]=mfb(1) end
  for jxn=1,vx do pa[jxn]=mfb(4) end
  for jxn=1,vx do wc[jxn]=mfb(4)+1 end
  gc(sn,pa,bk,vx)
 if pqa~=rp then gix(); bqs(nil,0) end
 end
end
if not (pf[175] and pf[146] and pf[131] and pf[198] and pf[158]) then gix(); bqs(nil,0) end
for jxn=1,rq do
 if xm[jxn]>wm then gix(); bqs(nil,0) end
 for isc=1,jxn-1 do
  if not (xm[jxn]<=tg[isc] or xm[isc]<=tg[jxn]) then gix(); bqs(nil,0) end
 end
end
local uf=0
for jxn=1,rq do uf=uf+xm[jxn]-tg[jxn] end
if uf~=wm then gix(); bqs(nil,0) end
local jq=(function() local wqx={} local gn=940239482 for jxn=1,70 do wqx[jxn]=jxn end for jxn=70,2,-1 do gn=bit32.band(gn*1664525+1013904223,4294967295) local isc=gn%jxn+1 wqx[jxn],wqx[isc]=wqx[isc],wqx[jxn] end local bxc={} for jxn=1,70 do bxc[wqx[jxn]]=jxn end return bxc end)()
aj=ah(pa,vx)
return {th,la,pr,kp,ma,hx,up,ji,ob,yi,hp,gz,mg,zb,zo,wm,rq,tg,xm,ag,ac,sn,pa,aj,wc,jq,wm}
end
local fr=fo()
local th=fr[1]
local la=fr[2]
local pr=fr[3]
local kp=fr[4]
local ma=fr[5]
local hx=fr[6]
local up=fr[7]
local ji=fr[8]
local ob=fr[9]
local yi=fr[10]
local hp=fr[11]
local gz=fr[12]
local mg=fr[13]
local zb=fr[14]
local zo=fr[15]
local wm=fr[16]
local rq=fr[17]
local tg=fr[18]
local xm=fr[19]
local ag=fr[20]
local ac=fr[21]
local sn=fr[22]
local pa=fr[23]
local aj=fr[24]
local wc=fr[25]
local jq=fr[26]
local te=fr[27]
oq(2,nc[2],vu[2],vu[3])
local fp={}
local sa={}
local bl=1
for jxn=1,bk do
 local rm=pr[jxn]*4
 fp[jxn]=string.sub(t,pqa,pqa+rm-1)
 pqa=pqa+rm
 for isc=1,sn[jxn] do
  local df=bit32.band(pa[bl],4160749567)
  if df<21 then gix(); bqs("vm",0) end
  aj[bl]=bit32.band(pa[bl],134217728)~=0
  sa[bl]=string.sub(t,pqa,pqa+df-1)
  pqa=pqa+df
  bl=bl+1
 end
end
if pqa~=#t+1 then gix(); bqs("vm",0) end
function di(ci)
local hw={}
local gq=1
for jxn=1,bk do
 for isc=1,sn[jxn] do
  hw[gq]=jxn
  gq=gq+1
 end
end
function vw(xg,ct,qk)
 local ixf=aq(qk)
 local ki=r
 local md="c-761bd02bcca5740f5883"
 if aj[ct] then
  ki=aq(uyx(r,"k-816936b245c15bee3904"))
  md="d-77a41a8bd402f05f54a1"
 end
 local quo=uyx(ki,md..ba(xg-1)..ba(ct-1))
 return xl(aq(quo),ixf)
end
function kc(ct)
 if hl.v==0 then fni(); bwb("VM constant continuation failed",0) end
 local rz=wc[ct]
 local thd=sa[rz]
 if #thd<25 then fni(); bwb("vm",0) end
 local qk=string.sub(thd,1,12)
 local ra=string.sub(thd,#thd-7)
 local aa=string.sub(thd,13,#thd-8)
 if #aa<5 then fni(); bwb("vm",0) end
 local lnx=vw(hw[rz],rz,qk)
 local bxc={}
 for jxn=1,#aa do bxc[jxn]=bit32.bxor(string.byte(aa,jxn),lnx()) end
 local fy=aj[rz] and aq(uyx(r,"k-816936b245c15bee3904")) or r
 local myq=bxc[1]
 local hs=bxc[2]+bxc[3]*256+bxc[4]*65536+bxc[5]*16777216
 if hs~=#bxc-5 then fni(); bwb("vm",0) end
 if aj[rz] then
  if myq~=15 then fni(); bwb("vm",0) end
 elseif myq>4 and myq~=6 then
  fni(); bwb("vm",0)
 end
 local xk=ke(fy,string.char(38)..ba(hw[rz]-1)..ba(rz-1)..string.char(myq)..ba(hs)..qk..aa)
 for jxn=1,8 do
  if string.byte(ra,jxn)~=string.byte(xk,jxn) then fni(); bwb("vm",0) end
 end
 sa[rz]=nil
 return bxc
end
function cy(nx,ct)
 local ixf=nx[2]+nx[3]*256+nx[4]*65536+nx[5]*16777216
 local bxc={}
for jxn=1,ixf do
 local lks=nx[jxn+5]
 if nx[1]==4 then
  local wgr=r[((ct+jxn-2)%8)+1]
  lks=bit32.band(bit32.bxor(lks,bit32.band(wgr+ct*31+jxn*17,255)),255)
 end
 bxc[jxn]=string.char(lks)
end
return table.concat(bxc)
end
local function zm(thd,ct)
 local pn=(ct-1)*4+1
 if pn+3>#thd then gix(); bqs("vm",0) end
 return string.byte(thd,pn)
  +string.byte(thd,pn+1)*256
  +string.byte(thd,pn+2)*65536
  +string.byte(thd,pn+3)*16777216
end
local lg={}
lg[0]=function(yhs) return nil end
lg[1]=function(yhs) return false end
lg[2]=function(yhs) return true end
lg[3]=function(yhs) return tonumber(yhs) end
lg[4]=function(yhs) return yhs end
lg[15]=function(yhs) return yhs end
lg[6]=function(yhs) return yhs end

local ftx={}
local xr={}
local rot={}
setmetatable(ftx,{
 __index=function(pjp,ct)
  eh()
  if ct<1 or ct>vx then gix(); bqs("vm",0) end
  if xr[ct] then return xr[ct][1] end
  local nx=kc(ct)
  local myq=nx[1]
  local yxb=cy(nx,ct)
  local jn
  if myq==6 and string.sub(yxb,1,9)==string.char(86,77,50,45,70,82,65,71,0) then
   local ep=12
   local bo=string.byte(yxb,10)+string.byte(yxb,11)*256
   local om={}
   for uo=1,bo do
    if ep+3>#yxb then gix(); bqs("vm",0) end
    local ss=string.byte(yxb,ep)+string.byte(yxb,ep+1)*256+string.byte(yxb,ep+2)*65536+string.byte(yxb,ep+3)*16777216
    if ss+1>vx then gix(); bqs("vm",0) end
    om[uo]=pjp[ss+1]
    ep=ep+4
   end
   if ep~=#yxb+1 then gix(); bqs("vm",0) end
   jn=table.concat(om)
  else
   jn=lg[myq](yxb)
  end
  if ci and ci[ct]~=nil then
   jn=ci[ct]
  end
  xr[ct]={jn}
  return jn
 end
})
  return {ftx,zm}
 end
  local tn=di(nil)
local ftx=tn[1]
local zm=tn[2]
if type(__VM2_TRACE_DECOY)==cre[13] then __VM2_TRACE_DECOY("before",0,"str") end
if type(__VM2_DUMP_DECOY)==cre[13] then __VM2_DUMP_DECOY("m0",{44,215,69,132,183,180},{232,33,43,132},1422660994) end
local fsv=oh({44,215,69,132,183,180},string.char(49),{232,33,43,132},1422660994)
if type(__VM2_DUMP_DECOY)==cre[13] then __VM2_DUMP_DECOY("m0:decoded",fsv,{},0) end
if type(__VM2_TRACE_DECOY)==cre[13] then __VM2_TRACE_DECOY("before",1,"str") end
if type(__VM2_DUMP_DECOY)==cre[13] then __VM2_DUMP_DECOY("m1",{130,118,60,50,156,113,212},{159,168,172,49},2374930778) end
local ihh=oh({130,118,60,50,156,113,212},string.char(50),{159,168,172,49},2374930778)
if type(__VM2_DUMP_DECOY)==cre[13] then __VM2_DUMP_DECOY("m1:decoded",ihh,{},0) end
if type(__VM2_TRACE_DECOY)==cre[13] then __VM2_TRACE_DECOY("before",2,"int") end
local ikn=bit32.bxor(1731184404,1731183870)

if type(__VM2_TRACE_DECOY)==cre[13] then __VM2_TRACE_DECOY("before",3,"str") end
if type(__VM2_DUMP_DECOY)==cre[13] then __VM2_DUMP_DECOY("m3",{114,249,231,149,139,2,22,44,22,122,174,21,128,251,240,235,213,225,163,152,158,24,244,15,87,219,163,209,186,60,17,87,87,60,180,71,170,61,148,200,60,192,116,212},{106,66,179,191},3926673312) end
local wzx=oh({114,249,231,149,139,2,22,44,22,122,174,21,128,251,240,235,213,225,163,152,158,24,244,15,87,219,163,209,186,60,17,87,87,60,180,71,170,61,148,200,60,192,116,212},string.char(52),{106,66,179,191},3926673312)
if type(__VM2_DUMP_DECOY)==cre[13] then __VM2_DUMP_DECOY("m3:decoded",wzx,{},0) end
local my={fsv,ihh,ikn,wzx}
bs=false
if type(__VM2_DUMP_DECOY)==cre[13] then __VM2_DUMP_DECOY("gate-before",{}, {}, 0) end
local ti=2166136261
for nn=1,#my do
 local tm=my[nn]
 local hi=type(tm)
if type(__VM2_DUMP_DECOY)==cre[13] then __VM2_DUMP_DECOY("state-"..nn,{}, {}, ti) end
 if hi==cre[9] then
  for mr=1,#tm do
   ti=bit32.band(bit32.bxor(ti,string.byte(tm,mr)+nn*374761393)*1000003+2654435761,4294967295)
  end
 elseif hi==cre[10] then
  ti=bit32.band(bit32.bxor(ti,math.floor(tm*1000)+nn*374761393)*1000003+2654435761,4294967295)
 elseif hi==cre[11] then
  ti=bit32.band(bit32.bxor(ti,(tm and 1 or 0)+nn*374761393)*1000003+2654435761,4294967295)
 end
if type(__VM2_DUMP_DECOY)==cre[13] then __VM2_DUMP_DECOY("state-"..nn,{}, {}, ti) end
end
if ti~=3711184393 then gix(); bqs("vm",0) end
if bit32.band(ti,1)~=bit32.band(3711184393,1) then gix(); bqs("vm",0) else bs=true end
if type(__VM2_DUMP_DECOY)==cre[13] then __VM2_DUMP_DECOY("gate-after",{}, {}, 0) end
if type(__VM2_DUMP_CONSTANTS)=='function' then local gr={} for nz=1,vx do gr[nz]=ftx[nz] end for nz=1,#my do gr[vx+nz]=my[nz] end __VM2_DUMP_CONSTANTS(gr) end
 local function po()
 local ig={}
 local function hj(ct,oj)
 local bj=ig[ct]
 if bj then
  return oj and bj[oj] or bj
 end
 local lnx=pk(ct)
 local thd=fp[ct]
 local bxc={}
 local ak=0
 local function gt(cdy,etx)
  local ax=0
  local xw=1
  for inr=1,8 do
   if cdy%2~=etx%2 then ax=ax+xw end
   cdy=math.floor(cdy/2)
   etx=math.floor(etx/2)
   xw=xw*2
  end
  return ax
 end
 local function fn(cdy,etx,udl)
  local ax=0
  local xw=1
  for lks=1,4 do
   local buf=math.floor((cdy%4294967296)/xw)%256
   local kqw=math.floor((etx%4294967296)/xw)%256
   local bzb=math.floor((udl%4294967296)/xw)%256
   ax=ax+gt(gt(buf,kqw),bzb)*xw
   xw=xw*256
  end
  return ax
 end
 for jxn=1,#thd,4 do
  local ox=string.byte(thd,jxn)
   +string.byte(thd,jxn+1)*256
   +string.byte(thd,jxn+2)*65536
   +string.byte(thd,jxn+3)*16777216
  local buz=lnx()
   +lnx()*256
   +lnx()*65536
   +lnx()*16777216
  local qg=fn(ox,buz,ak)
  local wgr=0
  for qtm=1,4 do
   local bp=(qtm==1 and 4) or (qtm==2 and 3) or (qtm==3 and 1) or 2
   wgr=wgr+math.floor((qg%4294967296)/2^((bp-1)*8))%256*2^((qtm-1)*8)
  end
  local xx=0
  for qtm=1,4 do
   local qx=(qtm==1 and 3) or (qtm==2 and 1) or (qtm==3 and 4) or 2
   xx=xx+math.floor((wgr%4294967296)/2^((qx-1)*8))%256*2^((qtm-1)*8)
  end
  wgr=xx
  bxc[math.floor((jxn-1)/4)+1]=wgr
  ak=ox
 end
 ig[ct]=bxc
 fp[ct]=nil
 return oj and bxc[oj] or bxc
 end
local function yu(ct)
 local xg=1
 while ct>la[xg] do
  ct=ct-la[xg]
  xg=xg+1
 end
 return hj(kp[xg],ct)
end
return yu
end
if bs~=true then fni(); bwb("VM decoy prerequisite failed",0) end
local yu=po()
local qm={}
for rtw=1,2 do qm[rtw]={} end
local lr={10,33,22,25,3,1,23,16,11,29,18,8,35,4,6,34,51,36,38,32,21,37,15,19,39,24,7,5,28,26,49,40,2,42,41,30,13,9,27,45,20,44,17,47,46,48,31,43,50,12,14}
local nes=qm[1]
    local bg=type(task)==cre[12] and task or nil
local ta=bg and type(bg.wait)==cre[13] and bg.wait or nil
local hr=function(dn) return coroutine.yield(dn or 0) end
if ta then
 local wg=coroutine.create(function() return ta(0) end)
 local kf=coroutine.resume(wg)
 if kf and coroutine.status(wg)==string.char(115,117,115,112,101,110,100,101,100) then hr=ta end
end
local pg={
 wait=function(dn) return hr(dn) end,
 [string.char(100,101,102,101,114)]=function(ul) end,
 [string.char(100,101,108,97,121)]=function(dn,ul) end
}
local he=function() return {} end
if type(newproxy)==cre[13] then
 local tz,kn=pcall(newproxy)
 if tz and (type(kn)=="userdata" or type(kn)==cre[12]) then
  he=newproxy
 else
  local gg,lp=pcall(newproxy,true)
  if gg and (type(lp)=="userdata" or type(lp)==cre[12]) then
   he=function() return newproxy(true) end
  end
 end
end
local task=pg
local newproxy=he
local ij={
     zp({209,222,208,231,72,79,107,131,14},{165,191,163,140,102,56,10,234,122}),
 zp({210,222,209,226},{165,191,163,140}),
 zp({213,205,202,226,18},{165,191,163,140,102}),
 zp({214,218,215,225,3,76,107,158,27,199,211,198},{165,191,163,140,102,56,10,234,122}),
 zp({209,208,208,248,20,81,100,141},{165,191,163,140,102,56,10,234}),
 zp({209,222,193,224,3,22,102,143,20,194,203,203},{165,191,163,140,102,56,10,234,122}),
 zp({200,222,215,228,72,94,102,133,21,215},{165,191,163,140,102,56,10,234,122}),
 zp({200,222,215,228,72,74,107,132,30,202,210},{165,191,163,140,102,56,10,234,122}),
 zp({198,208,209,227,19,76,99,132,31,139,200,209,237,22},{165,191,163,140,102,56,10,234,122}),
 zp({213,220,194,224,10},{165,191,163,140,102}),
 zp({192,205,209,227,20},{165,191,163,140,102}),
 zp({209,198,211,233},{165,191,163,140}),
 zp({203,218,212,239,5,84,101,153,15,215,218},{165,191,163,140,102,56,10,234,122}),
 zp({205,208,204,231,0,77,100,137,14,204,208,205},{165,191,163,140,102,56,10,234,122}),
 zp({205,208,204,231,11,93,126,139,23,192,203,203,227,2},{165,191,163,140,102,56,10,234,122}),
 zp({194,218,215,226,7,85,111,137,27,201,211,206,233,18,80,101,142},{165,191,163,140,102,56,10,234,122}),
 zp({209,208,205,249,11,90,111,152},{165,191,163,140,102,56,10,234}),
 zp({202,204,141,239,10,87,105,129},{165,191,163,140,102,56,10,234}),
 zp({202,204,141,248,15,85,111},{165,191,163,140,102,56,10})
    }
    local to=print
local bi=warn or to
local sz=function(dn) return coroutine.yield(dn or 0) end
local khh={}
local dj=loadstring
local bb=nil
if type(dj)==cre[13] then local ks=dj(string.char(114,101,116,117,114,110,32,103,101,116,103,101,110,118)) if type(ks)==cre[13] then bb=ks() end end
local si=nil
if type(dj)==cre[13] then local ha=dj(string.char(114,101,116,117,114,110,32,114,101,113,117,101,115,116)) if type(ha)==cre[13] then si=ha() end end
local vg=function() local nux=type(bb)==cre[13] and bb() or nil local cl=type(nux)==cre[12] and rawget(nux,string.char(103,101,116,110,97,109,101,99,97,108,108,109,101,116,104,111,100)) or nil if type(cl)==cre[13] then return cl() end return nil end
local fm=function(...) return bi(...) end
local sd=function(oj,za) local nux=type(bb)==cre[13] and bb() or nil local cl=type(nux)==cre[12] and rawget(nux,string.char(104,111,111,107,102,117,110,99,116,105,111,110)) or nil if type(cl)==cre[13] then return cl(oj,za) end return oj end
local wp=function(oj,lrb,za) local nux=type(bb)==cre[13] and bb() or nil local cl=type(nux)==cre[12] and rawget(nux,string.char(104,111,111,107,109,101,116,97,109,101,116,104,111,100)) or nil if type(cl)==cre[13] then local bx=cl(oj,lrb,za) if type(bx)==cre[13] then return function(...) return bx(...) end end end return oj end
local xy=function() return os.clock() end
local um=function() return os.time() end
local ww=function(jn) return math.floor(jn) end
local lo=function(jn,ngw) return tonumber(jn,ngw) end
local mb=function(...) return to(...) end
local cc=function(se,dm) return setmetatable(se,dm) end
local zs=function(bn,ou) local lrb=string.char(114,97,110,100,111,109) return math[lrb](bn,ou) end
local eo=function(...) return pcall(...) end
local ga=function(od,lrb) local nux=type(bb)==cre[13] and bb() or nil local cl=type(nux)==cre[12] and rawget(nux,string.char(110,101,119,99,99,108,111,115,117,114,101)) or nil if type(cl)==cre[13] then return cl(od,lrb) end return od end
local mi=function(...) return sz(...) end
local il=function(jn) return tostring(jn) end
local vl=function(se) return se.n or #se end
local wi=function(fc,qf) return nil end
local yy=function(od) return coroutine.wrap(od) end
local as=function(jn) return type(jn) end
function st(quo)
 if quo==19 then return um end
 if quo==16 then return vg end
 if quo==2 then return fm end
 if quo==1 then return mi end
 if quo==3 then return mb end
 if quo==18 then return xy end
 if quo==13 then return ga end
 if quo==12 then return as end
 if quo==15 then return wp end
 if quo==14 then return sd end
 if quo==9 then return yy end
 if quo==10 then return eo end
 if quo==17 then return lo end
 if quo==8 then return zs end
 if quo==5 then return il end
 if quo==4 then return cc end
 if quo==11 then return wi end
 if quo==6 then return vl end
 if quo==7 then return ww end
 bwb(); gix(nil,0)
end
local qia=setmetatable({},{
 __index=function(se,quo)
  if type(quo)~=cre[10] or quo<1 or quo>19 or quo%1~=0 then bwb(); gix(nil,0) end
  return st(quo)
 end,
 __newindex=function() bwb(); gix(nil,0) end,
 __len=function() return 19 end,
 __metatable=false
})

local cd=ol('4633030061b7a7ac0700a56f6a7240acf3dc0700a4577e755babf3c00300a374797107000af0eac0e808577809006fbdb5ae9066340ee06105008c4c415d6f980c007bbda5b49b7f2212fa55a7b4bd080077a6a7a78f632613fa0a00618e8d8da3433c08e47fa10a000afcc1c8f21941438f14ca070011c7cfd4f8225b770600c1091b1625c89d06009e48555c668dd503003aeaf7f5030059b7a3a307003ad7e0f8d239704308005786879aae5c0d38cf0a00c0021a1704c399ae4fc816070011f7c1ddf61e4c680e0029e4f9e5ce227457a23ee9e2e2ca2b0d003debe3f8d4137143a702eee7f0c50e008c4e565b4683dae103845941466e9e0c0066b0bcb187652a0df87da1b5a00a00c02f2c2c02e396a945de000b001df0d6cae1284065810edbc70a007ab8a9b6947d2e2ff56ea9040038eee2f7d208009e5840517e9ac7f71f06007caabab1836a3d030038efe2e80a00c1031b160ec896a042de170500b7626b7557bd040077b6a9a09a02007aa8a70b00ea22343d0ea2a0816ef4203807007fa8a5adbd782a100900579b8687af50013ed85e0c00a36e736f44a3eec72aad6f736e06001dcccdf4e2144b07008c4c5f4e7099d1e20b00a56e7f714aa0f1c03caa727f07007cb3b0b09e4e360f08007baca1ab87722d02f403007fbfb2ae0100598f04007ab8a4b49305006ba2bbbf827f04006b8cbbac9e110038fae2efda3f6d57b123f1ebf6d12a685db606000adcc1dbef0255070066b0ada498743b08070061a7b1ac83623a1f050038cfe8ccd13c030038f3e2ec0c00db1f091923d5cda350cf1a0b150300926664750400a463746351080057adb79db5550a25d605001dcec3d2e41e03007fb1a5a508008c4640016386dbe50d0400bf455f6e42070077bdbbfa8f7822180700b7606d654eb4fcc907003aefe4e0da33635409003dc7dde8d0296445b03407006ba9b1bca56237180400c0020c162e07009e48545e719dd5e704007b949797b90a00db13050c3f9385bd5ece0c0400924354417b0a006f8db5b8b06c2513ec76af0500b766677f5ebf0300c1331b000c0029f8f7e8c92a3f4fa63debe2e20b0011deddddf32748629704d5ca02006f83940c007cb1b7ab80453613e773bcb0ab0400db213b1634080059b4928ea56f0e20c70800ea25262608c8b394610e00ea2c3a3b09f9a6896ef561223b07fc0300bf4f72700500a45376504da005008c76434e678f')
local ja={165,191,163,140,102,56,10,234,122}
local hh=87
local wx={}
for wn=1,hh do wx[wn]=wn end
local zv=es(ab(o).."field-permutation")
local wu=string.byte(zv,1)+string.byte(zv,2)*256+string.byte(zv,3)*65536+string.byte(zv,4)*16777216
if type(__VM2_FIELD_DERIVATION)==cre[13] then __VM2_FIELD_DERIVATION(ab(o),wu,string.sub(es(ab(o).."field-permutation"),1,4)) end
for wn=hh,2,-1 do
 wu=bit32.band(wu*1664525+1013904223,4294967295)
 local ui=wu%wn+1
 wx[wn],wx[ui]=wx[ui],wx[wn]
end
local da={}
for wn=1,hh do da[wx[wn]]=wn end
wx=da
local tf={}
setmetatable(tf,{
 __index=function(se,ct)
  eh()
  if type(ct)~=cre[10] or ct<1 or ct>hh or ct%1~=0 then return nil end
  local rz=wx[ct]
  if type(rz)~=cre[10] then bwb(); gix("vm",0) end
  local ep=3
  if string.byte(cd,1)~=70 or string.byte(cd,2)~=51 then bwb(); gix("vm",0) end
  for wn=1,rz do
   if ep+1>#cd then bwb(); gix("vm",0) end
   local rm=string.byte(cd,ep)+string.byte(cd,ep+1)*256
   ep=ep+2
   if ep+rm-1>#cd then bwb(); gix("vm",0) end
   local gnq=string.byte(cd,ep)
   ep=ep+1
   if wn==rz then
    local zq={}
    for ps=1,rm do zq[ps]=string.byte(cd,ep+ps-1) end
    for ps=1,rm do zq[ps]=bit32.bxor(zq[ps],gnq) end
    local ur=zp(zq,ja)
    return ur
   end
   ep=ep+rm
  end
  return nil
 end
})
if type(__VM2_DUMP_FIELDS)=='function' then
 local nf={}
 for nz=1,87 do nf[nz]=tf[nz] end
 __VM2_DUMP_FIELDS(nf)
end

local ld=aca or {}
local ca=type(ld)==cre[12] and rawget(ld,"getgenv") or nil
local hg=game
if type(hg)~=cre[12] and type(hg)~="userdata" then
 hg=nil
end
if hg==nil then
 local kh=v2g
 if type(kh)==cre[12] or type(kh)=="userdata" then
  hg=kh
 end
end
if hg==nil then
 local oi=type(ca)==cre[13] and ca() or nil
 local cn=type(oi)==cre[12] and rawget(oi,"game") or nil
 if type(cn)==cre[12] or type(cn)=="userdata" then
  hg=cn
 end
end
local py=iv or v2q
local dx={
 ['HttpGet']=function(_, eex, vd) local gsy,ax=false,nil if type(py)=='function' then gsy,ax=pcall(py,eex,vd) end if type(print)==cre[13] then print("TRACE_HTTPGET_DIRECT "..tostring(gsy).." "..type(ax).." "..tostring(type(ax)==cre[9] and #ax or 0)) end if gsy and type(ax)==cre[9] then return ax end local yk,yw=pcall(function() return hg:HttpGet(eex,vd) end) if type(print)==cre[13] then print("TRACE_HTTPGET_HOST "..tostring(yk).." "..type(yw).." "..tostring(type(yw)==cre[9] and #yw or 0)) end if (not yk or yw==nil) and vd~=nil then yk,yw=pcall(function() return hg:HttpGet(eex) end) end if type(print)==cre[13] then print("TRACE_HTTPGET_RETRY "..tostring(yk).." "..type(yw).." "..tostring(type(yw)==cre[9] and #yw or 0)) end if yk and type(yw)==cre[9] then return yw end local ie=type(hg)~="nil" and hg[string.char(72,116,116,112,71,101,116,65,115,121,110,99)] or nil if type(ie)==cre[13] then local gk,mx=pcall(ie,hg,eex) if type(print)==cre[13] then print("TRACE_HTTPGET_ASYNC "..tostring(gk).." "..type(mx).." "..tostring(type(mx)==cre[9] and #mx or 0)) end if gk and type(mx)==cre[9] then return mx end end local ko,sv=pcall(function() return hg:GetService(string.char(72,116,116,112,83,101,114,118,105,99,101)) end) local be=ko and ((type(sv)==cre[12] or type(sv)=="userdata") and sv[string.char(71,101,116,65,115,121,110,99)] or nil) if type(be)==cre[13] then local rk,im=pcall(be,sv,eex,vd) if type(print)==cre[13] then print("TRACE_HTTPGET_SERVICE "..tostring(rk).." "..type(im).." "..tostring(type(im)==cre[9] and #im or 0).." "..tostring(rk and "" or im)) end if rk and type(im)==cre[9] then return im end if type(be)==cre[13] then local jk,xz=pcall(be,sv,eex) if type(print)==cre[13] then print("TRACE_HTTPGET_SERVICE_RETRY "..tostring(jk).." "..type(xz).." "..tostring(type(xz)==cre[9] and #xz or 0).." "..tostring(jk and "" or xz)) end if jk and type(xz)==cre[9] then return xz end end local me=ko and ((type(sv)==cre[12] or type(sv)=="userdata") and sv[string.char(82,101,113,117,101,115,116,65,115,121,110,99)] or nil) if type(me)==cre[13] then local yh,ly=pcall(me,sv,{[string.char(85,114,108)]=eex,[string.char(77,101,116,104,111,100)]=string.char(71,69,84)}) local ln=type(ly)==cre[12] and (ly[string.char(66,111,100,121)] or ly[string.char(98,111,100,121)]) or nil if type(print)==cre[13] then print("TRACE_HTTPGET_REQUESTASYNC "..tostring(yh).." "..type(ln).." "..tostring(type(ln)==cre[9] and #ln or 0).." "..tostring(yh and "" or ly)) end if yh and type(ln)==cre[9] then return ln end end end local yx=nil local dy=type(aca)==cre[12] and aca[string.char(114,101,113,117,101,115,116)] or nil local lu=type(aca)==cre[12] and aca[string.char(104,116,116,112,95,114,101,113,117,101,115,116)] or nil local jjv=type(aca)==cre[12] and aca[string.char(115,121,110)] or nil local av=type(aca)==cre[12] and aca[string.char(102,108,117,120,117,115)] or nil local kxj=type(aca)==cre[12] and aca[string.char(104,116,116,112)] or nil local gl=type(bb)==cre[13] and bb() or nil if type(gl)==cre[12] then if dy==nil then dy=gl[string.char(114,101,113,117,101,115,116)] end if lu==nil then lu=gl[string.char(104,116,116,112,95,114,101,113,117,101,115,116)] end if jjv==nil then jjv=gl[string.char(115,121,110)] end if av==nil then av=gl[string.char(102,108,117,120,117,115)] end if kxj==nil then kxj=gl[string.char(104,116,116,112)] end end if dy==nil and type(loadstring)==cre[13] then local ky,wo=pcall(function() local pq=loadstring(string.char(114,101,116,117,114,110,32,114,101,113,117,101,115,116)) return type(pq)==cre[13] and pq() or nil end) if ky and type(wo)==cre[13] then dy=wo end end local yf=si if type(dj)==cre[13] then local zc,li=pcall(function() local jx=dj(string.char(114,101,116,117,114,110,32,102,117,110,99,116,105,111,110,40,95,111,41,32,114,101,116,117,114,110,32,114,101,113,117,101,115,116,40,95,111,41,32,101,110,100)) return type(jx)==cre[13] and jx() or nil end) if zc and type(li)==cre[13] then yf=li end end if type(print)==cre[13] then print("TRACE_HTTPGET_API "..type(dy).." "..type(lu).." "..type(jjv).." "..type(av).." "..type(kxj)) end if type(dy)==cre[13] then yx=dy elseif type(lu)==cre[13] then yx=lu elseif type(jjv)==cre[12] and type(jjv[string.char(114,101,113,117,101,115,116)])==cre[13] then yx=jjv[string.char(114,101,113,117,101,115,116)] elseif type(av)==cre[12] and type(av[string.char(114,101,113,117,101,115,116)])==cre[13] then yx=av[string.char(114,101,113,117,101,115,116)] elseif type(kxj)==cre[12] and type(kxj[string.char(114,101,113,117,101,115,116)])==cre[13] then yx=kxj[string.char(114,101,113,117,101,115,116)] end local qh=yf or yx if type(qh)==cre[13] then local ao,ml,hq=pcall(qh,{[string.char(85,114,108)]=eex,[string.char(77,101,116,104,111,100)]=string.char(71,69,84)}) local dp=type(ml)==cre[9] and ml or (type(ml)==cre[12] and (ml[string.char(66,111,100,121)] or ml[string.char(98,111,100,121)]) or nil) if type(print)==cre[13] then print("TRACE_HTTPGET_REQUEST "..tostring(ao).." "..type(ml).." "..type(dp).." "..tostring(type(dp)==cre[9] and #dp or 0).." "..tostring(hq)) end if ao and type(dp)==cre[9] then return dp end end if type(qh)==cre[13] then local yq,xo,hb=pcall(qh,{[string.char(85,114,108)]=eex}) local zg=type(xo)==cre[9] and xo or (type(xo)==cre[12] and (xo[string.char(66,111,100,121)] or xo[string.char(98,111,100,121)]) or nil) if type(print)==cre[13] then print("TRACE_HTTPGET_REQUEST_RETRY "..tostring(yq).." "..type(xo).." "..type(zg).." "..tostring(type(zg)==cre[9] and #zg or 0).." "..tostring(hb)) end if yq and type(zg)==cre[9] then return zg end end return nil end,
 ['HttpGet']=function(_, eex, vd) local gsy,ax=false,nil if type(py)=='function' then gsy,ax=pcall(py,eex,vd) end if type(print)==cre[13] then print("TRACE_HTTPGET_DIRECT "..tostring(gsy).." "..type(ax).." "..tostring(type(ax)==cre[9] and #ax or 0)) end if gsy and type(ax)==cre[9] then return ax end local yk,yw=pcall(function() return hg:HttpGet(eex,vd) end) if type(print)==cre[13] then print("TRACE_HTTPGET_HOST "..tostring(yk).." "..type(yw).." "..tostring(type(yw)==cre[9] and #yw or 0)) end if (not yk or yw==nil) and vd~=nil then yk,yw=pcall(function() return hg:HttpGet(eex) end) end if type(print)==cre[13] then print("TRACE_HTTPGET_RETRY "..tostring(yk).." "..type(yw).." "..tostring(type(yw)==cre[9] and #yw or 0)) end if yk and type(yw)==cre[9] then return yw end local ie=type(hg)~="nil" and hg[string.char(72,116,116,112,71,101,116,65,115,121,110,99)] or nil if type(ie)==cre[13] then local gk,mx=pcall(ie,hg,eex) if type(print)==cre[13] then print("TRACE_HTTPGET_ASYNC "..tostring(gk).." "..type(mx).." "..tostring(type(mx)==cre[9] and #mx or 0)) end if gk and type(mx)==cre[9] then return mx end end local ko,sv=pcall(function() return hg:GetService(string.char(72,116,116,112,83,101,114,118,105,99,101)) end) local be=ko and ((type(sv)==cre[12] or type(sv)=="userdata") and sv[string.char(71,101,116,65,115,121,110,99)] or nil) if type(be)==cre[13] then local rk,im=pcall(be,sv,eex,vd) if type(print)==cre[13] then print("TRACE_HTTPGET_SERVICE "..tostring(rk).." "..type(im).." "..tostring(type(im)==cre[9] and #im or 0).." "..tostring(rk and "" or im)) end if rk and type(im)==cre[9] then return im end if type(be)==cre[13] then local jk,xz=pcall(be,sv,eex) if type(print)==cre[13] then print("TRACE_HTTPGET_SERVICE_RETRY "..tostring(jk).." "..type(xz).." "..tostring(type(xz)==cre[9] and #xz or 0).." "..tostring(jk and "" or xz)) end if jk and type(xz)==cre[9] then return xz end end local me=ko and ((type(sv)==cre[12] or type(sv)=="userdata") and sv[string.char(82,101,113,117,101,115,116,65,115,121,110,99)] or nil) if type(me)==cre[13] then local yh,ly=pcall(me,sv,{[string.char(85,114,108)]=eex,[string.char(77,101,116,104,111,100)]=string.char(71,69,84)}) local ln=type(ly)==cre[12] and (ly[string.char(66,111,100,121)] or ly[string.char(98,111,100,121)]) or nil if type(print)==cre[13] then print("TRACE_HTTPGET_REQUESTASYNC "..tostring(yh).." "..type(ln).." "..tostring(type(ln)==cre[9] and #ln or 0).." "..tostring(yh and "" or ly)) end if yh and type(ln)==cre[9] then return ln end end end local yx=nil local dy=type(aca)==cre[12] and aca[string.char(114,101,113,117,101,115,116)] or nil local lu=type(aca)==cre[12] and aca[string.char(104,116,116,112,95,114,101,113,117,101,115,116)] or nil local jjv=type(aca)==cre[12] and aca[string.char(115,121,110)] or nil local av=type(aca)==cre[12] and aca[string.char(102,108,117,120,117,115)] or nil local kxj=type(aca)==cre[12] and aca[string.char(104,116,116,112)] or nil local gl=type(bb)==cre[13] and bb() or nil if type(gl)==cre[12] then if dy==nil then dy=gl[string.char(114,101,113,117,101,115,116)] end if lu==nil then lu=gl[string.char(104,116,116,112,95,114,101,113,117,101,115,116)] end if jjv==nil then jjv=gl[string.char(115,121,110)] end if av==nil then av=gl[string.char(102,108,117,120,117,115)] end if kxj==nil then kxj=gl[string.char(104,116,116,112)] end end if dy==nil and type(loadstring)==cre[13] then local ky,wo=pcall(function() local pq=loadstring(string.char(114,101,116,117,114,110,32,114,101,113,117,101,115,116)) return type(pq)==cre[13] and pq() or nil end) if ky and type(wo)==cre[13] then dy=wo end end local yf=si if type(dj)==cre[13] then local zc,li=pcall(function() local jx=dj(string.char(114,101,116,117,114,110,32,102,117,110,99,116,105,111,110,40,95,111,41,32,114,101,116,117,114,110,32,114,101,113,117,101,115,116,40,95,111,41,32,101,110,100)) return type(jx)==cre[13] and jx() or nil end) if zc and type(li)==cre[13] then yf=li end end if type(print)==cre[13] then print("TRACE_HTTPGET_API "..type(dy).." "..type(lu).." "..type(jjv).." "..type(av).." "..type(kxj)) end if type(dy)==cre[13] then yx=dy elseif type(lu)==cre[13] then yx=lu elseif type(jjv)==cre[12] and type(jjv[string.char(114,101,113,117,101,115,116)])==cre[13] then yx=jjv[string.char(114,101,113,117,101,115,116)] elseif type(av)==cre[12] and type(av[string.char(114,101,113,117,101,115,116)])==cre[13] then yx=av[string.char(114,101,113,117,101,115,116)] elseif type(kxj)==cre[12] and type(kxj[string.char(114,101,113,117,101,115,116)])==cre[13] then yx=kxj[string.char(114,101,113,117,101,115,116)] end local qh=yf or yx if type(qh)==cre[13] then local ao,ml,hq=pcall(qh,{[string.char(85,114,108)]=eex,[string.char(77,101,116,104,111,100)]=string.char(71,69,84)}) local dp=type(ml)==cre[9] and ml or (type(ml)==cre[12] and (ml[string.char(66,111,100,121)] or ml[string.char(98,111,100,121)]) or nil) if type(print)==cre[13] then print("TRACE_HTTPGET_REQUEST "..tostring(ao).." "..type(ml).." "..type(dp).." "..tostring(type(dp)==cre[9] and #dp or 0).." "..tostring(hq)) end if ao and type(dp)==cre[9] then return dp end end if type(qh)==cre[13] then local yq,xo,hb=pcall(qh,{[string.char(85,114,108)]=eex}) local zg=type(xo)==cre[9] and xo or (type(xo)==cre[12] and (xo[string.char(66,111,100,121)] or xo[string.char(98,111,100,121)]) or nil) if type(print)==cre[13] then print("TRACE_HTTPGET_REQUEST_RETRY "..tostring(yq).." "..type(xo).." "..type(zg).." "..tostring(type(zg)==cre[9] and #zg or 0).." "..tostring(hb)) end if yq and type(zg)==cre[9] then return zg end end return nil end,
 ['Players']=(hg or game) and (hg or game).Players,
 ['Players']=(hg or game) and (hg or game).Players,
 ['GetService']=function(_, lrb) return hg:GetService(lrb) end,
 [tf[37]]=function(_, lrb) return hg:GetService(lrb) end,
 ['GameId']=(hg or game) and (hg or game).GameId,
 ['GameId']=(hg or game) and (hg or game).GameId,
}
setmetatable(dx,{
 __newindex=function() bwb(); gix(nil,0) end,
 __metatable=false
})
local ud={}
local am={
aca=ud,
 game=dx,
 ts=dx,
 cg=dx,
 [tf[4]]=ud,
 [tf[36]]=dx
, __VM2_DUMP_CONSTANTS=__VM2_DUMP_CONSTANTS
}
local oc={}
function tt(nux,quo)
 if type(nux)~=cre[12] then return nil end
 local vft=rawget(nux,quo)
 if type(vft)==cre[12] and vft[1]==oc then return vft[2] end
 return vft
end
function xh(nux,quo,jn)
 if type(nux)~=cre[12] then bwb(); gix("vm",0) end
 local vft=rawget(nux,quo)
 if type(vft)==cre[12] and vft[1]==oc then
  vft[2]=jn
 else
  rawset(nux,quo,{oc,jn})
 end
end
local ph={425970260,4012809261}
if false then
 local km=0
 for bm=1,#ph do km=km+ph[bm] end
end
local cu=xl(aq(o),aq(uz))
local mf={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19}
for jxn=19,2,-1 do
 local isc=(cu()+jxn)%jxn+1
 mf[jxn],mf[isc]=mf[isc],mf[jxn]
end
for jxn=1,19 do
 local vpn=mf[jxn]
 if vpn==1 then
  khh["nes"]=function(...) return to(...) end
 elseif vpn==2 then
  khh["rot"]=function(...) return bi(...) end
 elseif vpn==3 then
  khh["ftx"]=function(dn) return sz(dn) end
 elseif vpn==4 then
  khh["apu"]=newproxy
 elseif vpn==5 then
  khh["apu"]=newproxy
 elseif vpn==6 then
  khh["apu"]=newproxy
 elseif vpn==7 then
  khh["apu"]=newproxy
 elseif vpn==8 then
  khh["apu"]=newproxy
 elseif vpn==9 then
  khh["apu"]=newproxy
 elseif vpn==10 then
  khh["apu"]=newproxy
 elseif vpn==11 then
  khh["apu"]=newproxy
 elseif vpn==12 then
  khh["apu"]=newproxy
 elseif vpn==13 then
  khh["apu"]=newproxy
 elseif vpn==14 then
  khh["apu"]=newproxy
 elseif vpn==15 then
  khh["apu"]=newproxy
 elseif vpn==16 then
  khh["apu"]=newproxy
 elseif vpn==17 then
  khh["apu"]=newproxy
 elseif vpn==18 then
  khh["apu"]=newproxy
 elseif vpn==19 then
  khh["apu"]=newproxy
 end
end
function rl()
 if type(qia)~=cre[12] or #qia~=19 then bwb(); gix("vm",0) end
 for jxn=1,#qia do
  if type(qia[jxn])~=cre[13] then bwb(); gix("vm",0) end
 end
 if type(khh)~=cre[12] then bwb(); gix("vm",0) end
 
end
rl()
oq(4,nc[4],vu[3],vu[4])
function mt(vpn,qsi)
 eh()
 local jvc=qia[vpn]
 if type(jvc)~=cre[13] then bwb(); gix("vm",0) end
 local bt={} for jxn=1,#qsi do bt[jxn]=type(qsi[jxn])..":"..tostring(qsi[jxn]) end print("TRACE_HOST "..tostring(vpn).." "..tostring(ij[vpn]).." "..table.concat(bt," | "))
 local jn=jvc(tp(qsi))
 for jxn=1,#qsi do qsi[jxn]=nil end
 if type(print)==cre[13] then print("TRACE_HOST_RETURN "..tostring(vpn).." "..type(jn)..":"..tostring(jn)) end
 return jn
end
local cvn={a=1,b=0,c=0,d=0,e=0,f=true,g=0,h=0,i=false,j=false,k=0,l=0}
local gn=158
local mir=he()
local kjo={[mir]=true}
function ec()
 if kjo[mir]~=true then bwb(); gix("vm",0) end
end
local tb={54,15,25,40,55,29,35,46,49,26,59,41,32,11,24,22,34,50,10,17,8,52,37,47,36,20,7,44,12}
local yg={[54]=1,[15]=2,[25]=3,[40]=4,[55]=5,[29]=6,[35]=7,[46]=8,[49]=9,[26]=10,[59]=11,[41]=12,[32]=13,[11]=14,[24]=15,[22]=16,[34]=17,[50]=18,[10]=19,[17]=20,[8]=21,[52]=22,[37]=23,[47]=24,[36]=25,[20]=26,[7]=27,[44]=28,[12]=29}
local xs=tb[21]
function io(oj)
 ec()
 if oj<1 or oj>#tb then bqs(); fni("vm",0) end
 local uwm=(tb[oj]-xs*39)%61
 xs=(xs*39+uwm)%61
end
local des=0
local bjv=0
local cdy=0
local etx=0
local udl=0
local ax=nil
local kw={
 [158]=4,
 [176]=6,
 [169]=3,
 [163]=1,
 [184]=2,
 [151]=5
}
local al={}
al[jq[1]]=8
al[jq[2]]=21
al[jq[3]]=34
al[jq[4]]=47
al[jq[5]]=60
al[jq[6]]=3
al[jq[7]]=16
al[jq[8]]=29
al[jq[9]]=42
al[jq[10]]=55
al[jq[11]]=68
al[jq[12]]=11
al[jq[13]]=24
al[jq[14]]=37
al[jq[15]]=50
al[jq[16]]=63
al[jq[17]]=6
al[jq[18]]=19
al[jq[19]]=32
al[jq[20]]=45
al[jq[21]]=58
al[jq[22]]=1
al[jq[23]]=14
al[jq[24]]=27
al[jq[25]]=40
al[jq[26]]=53
al[jq[27]]=66
al[jq[28]]=9
al[jq[29]]=22
al[jq[30]]=35
al[jq[31]]=48
al[jq[32]]=61
al[jq[33]]=4
al[jq[34]]=17
al[jq[35]]=30
al[jq[36]]=43
al[jq[37]]=56
al[jq[38]]=69
al[jq[39]]=12
al[jq[40]]=25
al[jq[41]]=38
al[jq[42]]=51
al[jq[43]]=64
al[jq[44]]=7
al[jq[45]]=20
al[jq[46]]=33
al[jq[47]]=46
al[jq[48]]=59
al[jq[49]]=2
al[jq[50]]=15
al[jq[51]]=28
al[jq[52]]=41
al[jq[53]]=54
al[jq[54]]=67
al[jq[55]]=10
al[jq[56]]=23
al[jq[57]]=36
al[jq[58]]=49
al[jq[59]]=62
al[jq[60]]=5
al[jq[61]]=18
al[jq[62]]=31
al[jq[63]]=44
al[jq[64]]=57
al[jq[65]]=70
al[jq[66]]=13
al[jq[67]]=26
al[jq[68]]=39
al[jq[69]]=52
al[jq[70]]=65
function wz(jn,lx)
 return al[jn]==lx
end
function ey(uph,cdy,etx)
 uph[cdy+1]=ftx[etx+1]
end
function ej(uph,rxr,ppx,cdy,etx)
 uph[cdy+1]=tt(rxr,tf[ppx[etx+1]+1])
end
function je(uph,rxr,ppx,cdy,etx)
 xh(rxr,tf[ppx[cdy+1]+1],uph[etx+1])
end
function rh(uph,cdy,etx,udl)
 uph[cdy+1]=uph[etx+1][uph[udl+1]]
end
function vf(uph,cdy,etx,udl)
 uph[cdy+1][uph[etx+1]]=uph[udl+1]
end
function qo(uph,ppx,cdy,etx,udl)
 uph[cdy+1]=uph[udl+1][tf[ppx[etx+1]+1]]
end
function dt(uph,ppx,cdy,etx,udl)
 uph[cdy+1][tf[ppx[etx+1]+1]]=uph[udl+1]
end
function tx(kyc,mrr) return kyc+mrr end
function eq(kyc,mrr) return kyc*mrr end
function qc(kyc,mrr) return kyc==mrr end
function rn(kyc,mrr) return kyc/mrr end
function en(kyc,mrr) return kyc<mrr end
function ku(kyc,mrr) return kyc>mrr end
function nk(kyc,mrr) return kyc<=mrr end
function dk(kyc,mrr) return kyc-mrr end
function iz(kyc,mrr) return kyc~=mrr end
function hm(kyc,mrr) return kyc..mrr end
function by(kyc,mrr) return kyc>=mrr end
local fe={}
fe[1]=tx
fe[2]=eq
fe[3]=qc
fe[4]=rn
fe[5]=en
fe[6]=ku
fe[7]=nk
fe[8]=dk
fe[9]=iz
fe[10]=hm
fe[12]=by
local gx={}
local wj={}
gx[1]=function(hbx) hbx[4]=fe[hbx[3]] end
gx[2]=function(hbx) hbx[4]=hbx[4](hbx[1],hbx[2]) end
gx[3]=function(hbx) hbx[1]=hbx[1] end
gx[4]=function(hbx) hbx[2]=hbx[2] end
wj[1]={3,1,2}
wj[2]={4,1,2}
wj[3]={3,1,2}
wj[4]={4,1,2}
wj[5]={3,1,2}
wj[6]={4,1,2}
wj[7]={3,1,2}
wj[8]={4,1,2}
wj[9]={3,1,2}
wj[10]={4,1,2}
wj[12]={4,1,2}
function jh(kyc,mrr,sfk)
 local sp=wj[sfk]
 if sp==nil then bqs(); fni("vm",0) end
 local gn={kyc,mrr,sfk,nil}
 for jxn=1,#sp do
  local ar=gx[sp[jxn]]
  if ar==nil then bqs(); fni("vm",0) end
  ar(gn)
 end
 return gn[4]
end
function tk(uph,cdy,etx,udl,sfk)
 uph[cdy+1]=jh(uph[etx+1],uph[udl+1],sfk)
end
function ff(oj)
 return oj
end
function mk(jn,oj,wd)
 if not jn then return oj end
 return wd
end
function lc(uph,cdy)
 return uph[cdy+1]
end
function sf(zd,qsi)
 if type(zd)~=cre[13] then fni(); bwb("vm",0) end
 return zd(tp(qsi))
end
function ub(qw)
 local spx={}
 for quo,jn in pairs(qw) do spx[quo]=jn end
 return spx
end
function jj(thd,et,tl,lk,fc)
 local jw=math.floor(#thd/4)
 if #thd%4~=0 or lk>jw+1 then bwb(); gix(fc,0) end
 local hn={}
 for jxn=1,et do
  local pn=zm(thd,tl+jxn-1)
  if pn<lk or pn+4>jw then bwb(); gix(fc,0) end
  if jxn>1 and pn<=hn[jxn-1] then bwb(); gix(fc,0) end
  hn[jxn]=pn
 end
 return hn,jw
end
function ge(am,jl,oy,...)
 local dr=select('#',...)
 for jxn=1,math.min(dr,oy) do
  xh(am,tf[jl[jxn]+1],select(jxn,...))
 end
end
function bc(thd,fc)
 local vy=zm(thd,1) if vy==2 then bwb(); gix("vm",0) end if vy~=3 then bwb(); gix(fc,0) end
 local bh=zm(thd,2)
 local jz=zm(thd,3)
 local oy=zm(thd,4)
 local qq=70 local yr=0 if vy==3 then qq=zm(thd,5) yr=qq end
 if vy==3 and (qq<1 or qq>70) then bwb(); gix(fc,0) end
 local hd={} local is={}
 if vy==3 then for jxn=1,qq do local sb=zm(thd,5+jxn) if sb<1 or sb>70 or is[sb] then bwb(); gix(fc,0) end hd[sb]=true is[sb]=true end else for jxn=1,70 do hd[jxn]=true end end
 local jl={}
 local pu={}
 for jxn=1,oy do local kq=zm(thd,4+yr+jxn) if kq>=hh or pu[kq] then bwb(); gix(fc,0) end jl[jxn]=kq pu[kq]=true end
 local tl=5+yr+oy+bh
 local wk={}
 for jxn=1,bh do wk[jxn]=zm(thd,4+yr+oy+jxn) end
 local nm={}
 for jxn=1,bh do local aw=wk[jxn] if aw<1 or aw>bh or nm[aw] then bwb(); gix(fc,0) end nm[aw]=true end
 local lk=tl+jz
 local hn,jw=jj(thd,jz,tl,lk,fc)
 return bh,jz,oy,jl,wk,hn,jw,hd
end
function uh(jn,vor)
 return jn==jq[vor]
end
local qi={}
function fw(kyc,mrr) return kyc/mrr end
function rs(kyc,mrr) return kyc~=mrr end
function wl(kyc,mrr) return kyc>=mrr end
function jy(kyc,mrr) return kyc-mrr end
function cw(kyc,mrr) return kyc+mrr end
function wh(kyc,mrr) return kyc==mrr end
function ez(kyc,mrr) return kyc<mrr end
function cj(kyc,mrr) return kyc%mrr end
function lf(kyc,mrr) return kyc>mrr end
function td(kyc,mrr) return kyc<=mrr end
function vt(kyc,mrr) return kyc..mrr end
function oa(kyc,mrr) return kyc*mrr end
local rr={}
rr[1]=fw
rr[2]=rs
rr[3]=wl
rr[4]=jy
rr[5]=cw
rr[6]=wh
rr[7]=ez
rr[8]=cj
rr[9]=lf
rr[10]=td
rr[11]=vt
rr[12]=oa
function rc(kyc,mrr,wyx)
 local gv=rr[wyx]
 if gv==nil then fni(); bwb("vm",0) end
 return gv(kyc,mrr) end
local cv={}
cv[1]=function(uph,nux,cdy,etx)
 uph[cdy]=tt(nux,tf[etx])
end
cv[2]=function(uph,nux,cdy,etx)
 xh(nux,tf[cdy],uph[etx+1])
end
function ev(myq,uph,nux,cdy,etx)
 local gv=cv[myq]
 if gv==nil then gix(); bqs("vm",0) end
 return gv(uph,nux,cdy,etx)
end
local no={}
no[1]=function(rx,oj)
 return true,rx[oj]+1
end
no[2]=function(rx,oj,jn)
 if jn then return false,nil end
 return true,rx[oj]+1
end
function co(myq,rx,oj,jn)
 local gv=no[myq]
 if gv==nil then gix(); bqs("vm",0) end
 return gv(rx,oj,jn)
end
local qs={}
qs[1]=function(uph,cdy,etx,udl) local oj=uph[etx] local quo=uph[udl] if type(oj)==cre[12] then uph[cdy]=oj[quo] elseif quo==1 then uph[cdy]=oj else uph[cdy]=nil end end
qs[2]=function(uph,cdy,etx,udl) uph[cdy][uph[etx]]=uph[udl] end
qs[3]=function(uph,cdy,etx,udl) uph[cdy]=uph[udl][tf[etx]] end
qs[4]=function(uph,cdy,etx,udl) if type(print)==cre[13] then print("TRACE_FIELD_WRITE "..tostring(tf[etx]).." "..type(uph[udl])..":"..tostring(uph[udl])) end uph[cdy][tf[etx]]=uph[udl] end
function ad(myq,uph,cdy,etx,udl)
 local gv=qs[myq]
 if gv==nil then bqs(); fni("vm",0) end
 return gv(uph,cdy,etx,udl)
end
local lj={}
local cs=2647258461
for jxn=1,70 do lj[jxn]=jxn end
for jxn=70,2,-1 do cs=bit32.band(cs*1664525+1013904223,4294967295) local isc=cs%jxn+1 lj[jxn],lj[isc]=lj[isc],lj[jxn] end
local er={}
for jxn=1,70 do local hfs=(lj[jxn]-1)*1+57 er[jxn]=lj[hfs%70+1] end
lj=er
qi[(((8-1)*1+57)%70)+1]=function()
   local bd={}
   if cdy+1>bh or etx+1>hh or udl+1>bh then bqs(); fni("vm",0) end
   ad(4,nes,cdy,etx+1,udl+1)
end
qi[(((18-1)*1+57)%70)+1]=function()
   if etx+1>bh or udl+1>bh then bqs(); fni("vm",0) end
   nes[cdy]=rc(nes[etx+1],nes[udl+1],5)
end
qi[(((29-1)*1+57)%70)+1]=function()
   if etx+1>bh or udl+1>bh then bqs(); fni("vm",0) end
   nes[cdy]=rc(nes[etx+1],nes[udl+1],11)
end
qi[(((36-1)*1+57)%70)+1]=function()
   local bd={}
   if udl+1>bh or etx+1>vx then bqs(); fni("vm",0) end
   local jva=ftx[etx+1]
   local kvs=nes[udl+1]
   nes[cdy]=rc(jva,kvs,12)
end
qi[(((28-1)*1+57)%70)+1]=function()
   local bd={}
end
qi[(((24-1)*1+57)%70)+1]=function()
   local bd={}
   if etx+1>bh or udl+1>bh then bqs(); fni("vm",0) end
   nes[cdy]=rc(nes[etx+1],nes[udl+1],7)
end
qi[(((60-1)*1+57)%70)+1]=function()
   local bd={}
   if cdy>bh or etx+1>rq or udl+1>vx then bqs(); fni("vm",0) end
   local fk=not rc(ftx[udl+1],nes[cdy],7)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
qi[(((22-1)*1+57)%70)+1]=function()
   if etx+1>bh or udl+1>bh then bqs(); fni("vm",0) end
   nes[cdy]=rc(nes[etx+1],nes[udl+1],6)
end
qi[(((70-1)*1+57)%70)+1]=function()
   if etx<1 or etx>511 or udl<0 then bqs(); fni("vm",0) end
   local ir={}
   local cq=bit32.band(udl,1073741824)~=0 and (bit32.band(udl,2147483648)~=0 and 3 or 2) or (bit32.band(udl,2147483648)~=0 and 1 or 0)
   local sj=(cq==3) and 1 or etx
   for isc=1,sj do
    if cvn.a>te then bqs(); fni("vm",0) end
    local tu=yu(cvn.a)+1
    cvn.a=cvn.a+1
    if tu<1 or tu>vx then bqs(); fni("vm",0) end
    ir[isc]=ftx[tu]
   end
   udl=bit32.band(udl,1073741823)
   if cq==3 then ir=sw(ir[1],etx) cq=2 end
   nes[cdy]=zw(ir,udl,etx,cq,cdy)
   ir=nil
end
qi[(((16-1)*1+57)%70)+1]=function()
   local bd={}
   local fl={}
   for isc=1,etx do
    local ll=yu(cvn.a)+1
    fl[isc]=nes[ll]
    cvn.a=cvn.a+1
   end
   nes[cdy]=fl
fl=nil
end
qi[(((17-1)*1+57)%70)+1]=function()
   local zx=nes[etx]
   if type(zx)~=cre[13] then zx=nes[etx+1] end
   if type(zx)~=cre[13] then bqs(); fni("vm",0) end
   local quo,jn=zx()
   nes[cdy]={quo,jn}
end
qi[(((35-1)*1+57)%70)+1]=function()
   local bd=0
   if udl+1>bh or etx+1>vx then bqs(); fni("vm",0) end
   local jva=ftx[etx+1]
   local kvs=nes[udl+1]
   nes[cdy]=rc(jva,kvs,4)
end
qi[(((62-1)*1+57)%70)+1]=function()
   if cdy>bh or etx+1>rq or udl+1>vx then bqs(); fni("vm",0) end
   local fk=not rc(ftx[udl+1],nes[cdy],10)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
qi[(((67-1)*1+57)%70)+1]=function()
   local bd=0
   if cdy>bh or etx+1>rq or udl+1>vx then bqs(); fni("vm",0) end
   local fk=not rc(nes[cdy],ftx[udl+1],9)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
qi[(((3-1)*1+57)%70)+1]=function()
   local bd=0
   local ze={}
   for isc=1,etx do
    if cvn.a+1>te then bqs(); fni("vm",0) end
    local le=yu(cvn.a)+1
    cvn.a=cvn.a+1
    local ll=yu(cvn.a)+1
    cvn.a=cvn.a+1
    if le<1 or le>bh or ll<1 or ll>bh then bqs(); fni("vm",0) end
    ze[nes[le]]=nes[ll]
   end
   nes[cdy]=ze
   ze=nil
end
qi[(((47-1)*1+57)%70)+1]=function()
   local bd=0
   if udl+1>vx or etx+1>bh then bqs(); fni("vm",0) end
   local jva=nes[etx+1]
   local kvs=ftx[udl+1]
   nes[cdy]=rc(jva,kvs,4)
end
qi[(((39-1)*1+57)%70)+1]=function()
   local bd=0
   if udl+1>bh or etx+1>vx then bqs(); fni("vm",0) end
   local jva=ftx[etx+1]
   local kvs=nes[udl+1]
   nes[cdy]=rc(jva,kvs,6)
end
qi[(((49-1)*1+57)%70)+1]=function()
   if etx+1>bh or udl+1>vx then bqs(); fni("vm",0) end
   nes[cdy]=rc(nes[etx+1],ftx[udl+1],1)
end
qi[(((9-1)*1+57)%70)+1]=function()
   if etx+1>hh then bqs(); fni("vm",0) end
   ev(1,nes,am,cdy,etx+1)
end
qi[(((66-1)*1+57)%70)+1]=function()
   if cdy>bh or etx+1>rq or udl+1>vx then bqs(); fni("vm",0) end
   local fk=not rc(nes[cdy],ftx[udl+1],7)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
qi[(((54-1)*1+57)%70)+1]=function()
   if udl+1>vx or etx+1>bh then bqs(); fni("vm",0) end
   local jva=nes[etx+1]
   local kvs=ftx[udl+1]
   nes[cdy]=rc(jva,kvs,9)
end
qi[(((51-1)*1+57)%70)+1]=function()
   local bd=0
   if udl+1>vx or etx+1>bh then bqs(); fni("vm",0) end
   local jva=nes[etx+1]
   local kvs=ftx[udl+1]
   nes[cdy]=rc(jva,kvs,6)
end
qi[(((12-1)*1+57)%70)+1]=function()
   local bd={}
   if etx+1>bh then bqs(); fni("vm",0) end
   local od=nes[etx+1]
   local rb=nil if type(od)~=cre[13] then local dm=getmetatable(od) rb=dm and dm.__call if type(rb)~=cre[13] then bqs(); fni("vm",0) end end
   local qsi={}
   for isc=1,udl do
    if cvn.a>te then bqs(); fni("vm",0) end
    local kd=yu(cvn.a)+1
    if kd<1 or kd>bh then bqs(); fni("vm",0) end
    qsi[isc]=nes[kd]
    cvn.a=cvn.a+1
   end
   if rb then for isc=#qsi,1,-1 do qsi[isc+1]=qsi[isc] end qsi[1]=od od=rb end
   nes[cdy]=od(tp(qsi,1,udl))
   qsi=nil
end
qi[(((33-1)*1+57)%70)+1]=function()
 if udl+1>bh then bqs(); fni("vm",0) end
 if etx+1>rq then bqs(); fni("vm",0) end
 local ls,oj=co(2,tg,etx+1,nes[udl+1])
 if ls then
  cvn.a=oj
  cvn.j=true
  io(etx+1)
 end
end
qi[(((2-1)*1+57)%70)+1]=function()
   local jv=etx+1
   if jv>bh then bqs(); fni("vm",0) end
   local so=nes[jv]
   nes[cdy]=so
   so=nil
end
qi[(((11-1)*1+57)%70)+1]=function()
   local bd=0

   if etx+1>vx then bqs(); fni("vm",0) end
   local pj=ftx[etx+1]
   local nr=etx
   if type(pj)~=cre[9] then bqs(); fni("vm",0) end
   local gd=(function(thd) local jn=1 for jxn=1,#thd do jn=bit32.band(jn+string.byte(thd,jxn)*jxn,4294967295) end return jn end)(pj)
   if nr==28 and gd~=250469 then bqs(); fni("vm",0) end if nr==56 and gd~=10420755 then bqs(); fni("vm",0) end if nr==30 and gd~=116538298 then bqs(); fni("vm",0) end if nr==98 and gd~=4662409 then bqs(); fni("vm",0) end if nr==88 and gd~=20743555 then bqs(); fni("vm",0) end if nr==105 and gd~=7729503 then bqs(); fni("vm",0) end if nr==173 and gd~=17486253 then bqs(); fni("vm",0) end if nr==185 and gd~=46720114 then bqs(); fni("vm",0) end if nr==184 and gd~=11268715 then bqs(); fni("vm",0) end if nr==206 and gd~=39712801 then bqs(); fni("vm",0) end if nr==110 and gd~=285536777 then bqs(); fni("vm",0) end if nr==230 and gd~=6330632 then bqs(); fni("vm",0) end if nr==213 and gd~=52767621 then bqs(); fni("vm",0) end if nr==237 and gd~=107000444 then bqs(); fni("vm",0) end if nr==266 and gd~=900133 then bqs(); fni("vm",0) end if nr==267 and gd~=900055 then bqs(); fni("vm",0) end if nr==268 and gd~=22503237 then bqs(); fni("vm",0) end if nr==269 and gd~=23717907 then bqs(); fni("vm",0) end if nr==287 and gd~=4651436 then bqs(); fni("vm",0) end if nr==277 and gd~=18683124 then bqs(); fni("vm",0) end
   if string.byte(pj,1)~=3 then for pqa=1,math.min(#pj,32) do if string.byte(pj,pqa)==3 and string.byte(pj,pqa+1)==0 and string.byte(pj,pqa+2)==0 and string.byte(pj,pqa+3)==0 then pj=string.sub(pj,pqa) break end end end
   local yo=am
   local uc=zm(pj,1) if uc==2 then bqs(); fni("vm",0) end if uc~=3 then bqs(); fni("vm",0) end
   local dv=zm(pj,2)
   local yd=zm(pj,3)
   local zj=zm(pj,4)
   local wb=0 local af={} local fi={}
   if uc==3 then wb=zm(pj,5) if wb<1 or wb>70 then bqs(); fni("vm",0) end for jxn=1,wb do local fd=zm(pj,5+jxn) if fd<1 or fd>70 or fi[fd] then bqs(); fni("vm",0) end af[fd]=true fi[fd]=true end else for jxn=1,70 do af[jxn]=true end end
   local qa={}
   local mw={}
   for jxn=1,zj do local kq=zm(pj,4+(uc==3 and 1+wb or 0)+jxn) if kq>=hh or mw[kq] then bqs(); fni("vm",0) end qa[jxn]=kq mw[kq]=true end
   local pi={}
   for jxn=1,dv do pi[jxn]=zm(pj,4+(uc==3 and 1+wb or 0)+zj+jxn) end
   local at={}
   for jxn=1,dv do local aw=pi[jxn] if aw<1 or aw>dv or at[aw] then bqs(); fni("vm",0) end at[aw]=true end
   local su=5+zj+dv+(uc==3 and 1+wb or 0)
   local xf=su+yd
   local yz,fs=jj(pj,yd,su,xf,"1bd3ac6609b8ea3d7938ad8e")
   local function pd()
    local function jo(...)
     eh()
    local pw={}
    local iu=setmetatable({}, {__index=function(pjp,quo) return pw[pi[quo]] end,__newindex=function(pjp,quo,jn) pw[pi[quo]]=jn end})
    local nw=ub(yo)
    ge(nw,qa,zj,...)
    for jxn=1,zj do if qa[jxn]==57 then xh(nw,tf[qa[jxn]+1],(function(yhs,ixf) yhs.n=ixf return yhs end)({...},select("#",...))) break end end
    local gw=1
    while gw<=yd do
     local cf=gw+1
     local nx=yz[gw]
     local ho=zm(pj,nx)
     if not af[ho] then bwb(); gix("inactive child opcode",0) end
     local fh=zm(pj,nx+1)
     local jr=zm(pj,nx+2)
     local dc=zm(pj,nx+3)
     local lt=zm(pj,nx+4)
     if not af[ho] then bwb(); gix("inactive child opcode",0) end
     if type(print)==cre[13] then print("TRACE_RUNTIME_CHILD "..tostring(nr).." "..tostring(gw).." "..tostring(ho).." "..tostring(fh).." "..tostring(jr).." "..tostring(dc).." "..tostring(lt)) end
     local ry=fs+1
     if gw<yd then ry=yz[gw+1] end
     local zf=nx+5
     if ho==jq[3] then zf=nx+5+jr*2 end
     if ho==jq[4] then zf=nx+5+jr*2 end
     if ho==jq[14] then zf=nx+5+lt end
     if ho==jq[30] then zf=nx+5+lt end
     if ho==jq[12] then zf=nx+5+bit32.band(lt,2147483647) end
     if ho==jq[13] or ho==jq[15] then zf=nx+6+lt end
     if ho==jq[16] then zf=nx+5+lt end
     if ho==jq[70] then zf=nx+5+((lt==3) and 1 or jr) end
     if ho==jq[11] and dc+1<=dv then zf=nx+5+lt end
     if ho==jq[7] and lt~=4294967295 and bit32.band(lt,2147483648)~=0 then zf=nx+5+bit32.band(lt,2147483647) end
     if ry~=zf then bwb(); gix("vm",0) end
     if ho==jq[1] then
      ey(iu,fh,jr)
     elseif ho==jq[2] then
      iu[fh+1]=iu[jr+1]
     elseif ho==jq[9] then
      iu[fh+1]=tt(nw,tf[qa[jr+1]+1])
     elseif ho==jq[10] then
      xh(nw,tf[qa[fh+1]+1],iu[jr+1])
     elseif ho==jq[3] then
      local jg={}
      for isc=1,jr do
       local rg=nx+5+(isc-1)*2
       local le=zm(pj,rg)
       local ll=zm(pj,rg+1)
       if le+1>dv or ll+1>dv then bwb(); gix("vm",0) end
       jg[iu[le+1]]=iu[ll+1]
      end
      iu[fh+1]=jg
     elseif ho==jq[4] then
      local jg={}
      for isc=1,jr do local le=zm(pj,nx+5+(isc-1)*2) local ll=zm(pj,nx+6+(isc-1)*2) jg[iu[le+1]]=iu[ll+1] end
      local lv=iu[dc+1] if type(lv)~=cre[12] then lv={} end for isc=1,#lv do jg[isc]=lv[isc] end
      iu[fh+1]=jg
     elseif ho==jq[5] then
      rh(iu,fh,jr,dc)
     elseif ho==jq[6] then
      vf(iu,fh,jr,dc)
     elseif ho==jq[7] and (lt==4294967295 or bit32.band(lt,2147483648)==0) then
      iu[fh+1]=iu[dc+1][tf[qa[jr+1]+1]]
     elseif ho==jq[8] then
      if type(print)==cre[13] then print("TRACE_FIELD_WRITE "..tostring(tf[qa[jr+1]+1]).." "..type(iu[dc+1])..":"..tostring(iu[dc+1])) end
      iu[fh+1][tf[qa[jr+1]+1]]=iu[dc+1]
     elseif ho==jq[70] then
      if jr<1 or jr>511 or dc<0 then bwb(); gix("vm",0) end
      local jb={}
      for isc=1,((lt==3) and 1 or jr) do
       local tu=zm(pj,nx+4+isc)
       if tu+1>vx then bwb(); gix("vm",0) end
       jb[isc]=ftx[tu+1]
      end
      local bv=lt
      if bv==3 then jb=sw(jb[1],jr) bv=2 end
      iu[fh+1]=zw(jb,dc,jr,bv,fh)
      if bv==1 and (type(iu[fh+1])~=cre[9] or #iu[fh+1]~=64) then bwb(); gix("vm",0) end
      jb=nil
     elseif ho==jq[14] then
      local lq=iu[jr+1]
      local sc=lq[tf[qa[dc+1]+1]]
      if type(sc)~=cre[13] then bwb(); gix("vm",0) end
      local au={lq}
      for isc=1,lt do
       local kd=zm(pj,nx+4+isc)
       if kd+1>dv then bwb(); gix("vm",0) end
       au[isc+1]=iu[kd+1]
      end
      iu[fh+1]=sf(sc,au)
     elseif ho==jq[12] then
      local uv=iu[jr+1]
      if type(uv)~=cre[13] then bwb(); gix("vm",0) end
      local au={}
      for isc=1,lt do
       local kd=zm(pj,nx+4+isc)
       if kd+1>dv then bwb(); gix("vm",0) end
       au[isc]=iu[kd+1]
      end
      iu[fh+1]=uv(tp(au))
     elseif ho==jq[13] then
      local uv=iu[jr+1] local au={}
      for isc=1,lt do local kd=zm(pj,nx+4+isc) au[isc]=iu[kd+1] end
      local lv=iu[zm(pj,nx+5+lt)+1] for isc=1,#lv do au[#au+1]=lv[isc] end
      iu[fh+1]=uv(tp(au))
     elseif ho==jq[15] then
      local au={} for isc=1,lt do local kd=zm(pj,nx+4+isc) au[isc]=iu[kd+1] end
      local lv=iu[zm(pj,nx+5+lt)+1] for isc=1,#lv do au[#au+1]=lv[isc] end
      iu[fh+1]=mt(jr,au)
     elseif ho==jq[16] then
      local fl={} for isc=1,lt do fl[isc]=iu[zm(pj,nx+4+isc)+1] end iu[fh+1]=fl
     elseif ho==jq[17] then
      local zx=iu[jr+1] local quo,jn=zx() iu[fh+1]={quo,jn}
     elseif ho==jq[30] then
      if jr<1 or jr>#qia then bwb(); gix("vm",0) end
      local au={}
      for isc=1,lt do
       local kd=zm(pj,nx+4+isc)
       if kd+1>dv then bwb(); gix("vm",0) end
       au[isc]=iu[kd+1]
      end
      iu[fh+1]=mt(jr,au)
     elseif ho==jq[11] then
      local ro=ftx[jr+1]
      if type(ro)~=cre[9] then bwb(); gix("vm",0) end
      local ii=jr
      local vb=(function(thd) local jn=1 for jxn=1,#thd do jn=bit32.band(jn+string.byte(thd,jxn)*jxn,4294967295) end return jn end)(ro)
      if ii==28 and vb~=250469 then bwb(); gix("vm",0) end if ii==56 and vb~=10420755 then bwb(); gix("vm",0) end if ii==30 and vb~=116538298 then bwb(); gix("vm",0) end if ii==98 and vb~=4662409 then bwb(); gix("vm",0) end if ii==88 and vb~=20743555 then bwb(); gix("vm",0) end if ii==105 and vb~=7729503 then bwb(); gix("vm",0) end if ii==173 and vb~=17486253 then bwb(); gix("vm",0) end if ii==185 and vb~=46720114 then bwb(); gix("vm",0) end if ii==184 and vb~=11268715 then bwb(); gix("vm",0) end if ii==206 and vb~=39712801 then bwb(); gix("vm",0) end if ii==110 and vb~=285536777 then bwb(); gix("vm",0) end if ii==230 and vb~=6330632 then bwb(); gix("vm",0) end if ii==213 and vb~=52767621 then bwb(); gix("vm",0) end if ii==237 and vb~=107000444 then bwb(); gix("vm",0) end if ii==266 and vb~=900133 then bwb(); gix("vm",0) end if ii==267 and vb~=900055 then bwb(); gix("vm",0) end if ii==268 and vb~=22503237 then bwb(); gix("vm",0) end if ii==269 and vb~=23717907 then bwb(); gix("vm",0) end if ii==287 and vb~=4651436 then bwb(); gix("vm",0) end if ii==277 and vb~=18683124 then bwb(); gix("vm",0) end
      if string.byte(ro,1)~=3 then for pqa=1,math.min(#ro,32) do if string.byte(ro,pqa)==3 and string.byte(ro,pqa+1)==0 and string.byte(ro,pqa+2)==0 and string.byte(ro,pqa+3)==0 then ro=string.sub(ro,pqa) break end end end
      local ov=nw
      local function fb(...)
        eh()
       local ay=ub(ov)
       local ht={}
       local lb={}
       local hv=setmetatable({}, {__index=function(pjp,quo) return lb[ht[quo]] end,__newindex=function(pjp,quo,jn) lb[ht[quo]]=jn end})
       local qn=zm(ro,1) if qn==2 then gix(); bqs("vm",0) end if qn~=3 then gix(); bqs("vm",0) end
       local op=zm(ro,2)
       local cb=zm(ro,3)
       local zu=zm(ro,4)
       local ft=0 local va={} local uj={}
       if qn==3 then ft=zm(ro,5) if ft<1 or ft>70 then gix(); bqs("vm",0) end for jxn=1,ft do local fd=zm(ro,5+jxn) if fd<1 or fd>70 or uj[fd] then gix(); bqs("vm",0) end va[fd]=true uj[fd]=true end else for jxn=1,70 do va[jxn]=true end end
       local sh={}
       local vk={}
       for jxn=1,zu do local kq=zm(ro,4+(qn==3 and 1+ft or 0)+jxn) if kq>=hh or vk[kq] then gix(); bqs("vm",0) end sh[jxn]=kq vk[kq]=true end
       ge(ay,sh,zu,...)
       ht={}
       for jxn=1,op do ht[jxn]=zm(ro,4+(qn==3 and 1+ft or 0)+zu+jxn) end
       local ju=5+zu+op+(qn==3 and 1+ft or 0)
       local xp=ju+cb
       local tq,wa=jj(ro,cb,ju,xp,"1bd3ac6609b8ea3d7938ad8e")
       local tw=1
       while tw<=cb do
        local dz=tw+1
        local us=tq[tw]
        local vj=zm(ro,us)
       if not va[vj] then gix(); bqs("inactive nested opcode",0) end
        local sk=zm(ro,us+1)
        local qe=zm(ro,us+2)
        local pz=zm(ro,us+3)
        local ee=zm(ro,us+4)
        if not va[vj] then gix(); bqs("inactive nested opcode",0) end
        if type(print)==cre[13] then print("TRACE_RUNTIME_CHILD "..tostring(ii).." "..tostring(tw).." "..tostring(vj).." "..tostring(sk).." "..tostring(qe).." "..tostring(pz).." "..tostring(ee)) end
        local dg=wa+1
        if tw<cb then dg=tq[tw+1] end
        local cx=us+5
        if vj==jq[3] then cx=us+5+qe*2 end
        if vj==jq[4] then cx=us+5+qe*2 end
        if vj==jq[14] then cx=us+5+ee end
        if vj==jq[30] then cx=us+5+ee end
        if vj==jq[12] then cx=us+5+bit32.band(ee,2147483647) end
        if vj==jq[13] or vj==jq[15] then cx=us+6+ee end
        if vj==jq[16] then cx=us+5+ee end
        if vj==jq[70] then cx=us+5+((ee==3) and 1 or qe) end
        if vj==jq[11] and pz+1<=op then cx=us+5+ee end
        if vj==jq[7] and ee~=4294967295 and bit32.band(ee,2147483648)~=0 then cx=us+5+bit32.band(ee,2147483647) end
        if dg~=cx then gix(); bqs("vm",0) end
        if vj==jq[1] then
         hv[sk+1]=ftx[qe+1]
        elseif vj==jq[2] then
         hv[sk+1]=hv[qe+1]
        elseif vj==jq[9] then
         hv[sk+1]=tt(ay,tf[sh[qe+1]+1])
        elseif vj==jq[10] then
         xh(ay,tf[sh[sk+1]+1],hv[qe+1])
        elseif vj==jq[3] then
         local ug={}
         for isc=1,((ee==3) and 1 or qe) do
          local le=zm(ro,us+3+isc*2)
          local ll=zm(ro,us+4+isc*2)
          if le+1>op or ll+1>op then gix(); bqs("vm",0) end
          ug[hv[le+1]]=hv[ll+1]
         end
         if sk+1>op then gix(); bqs("vm",0) end
         hv[sk+1]=ug
        elseif vj==jq[4] then
         local ug={} for isc=1,qe do local le=zm(ro,us+5+(isc-1)*2) local ll=zm(ro,us+6+(isc-1)*2) ug[hv[le+1]]=hv[ll+1] end local lv=hv[pz+1] if type(lv)~=cre[12] then lv={} end for isc=1,#lv do ug[isc]=lv[isc] end hv[sk+1]=ug
        elseif vj==jq[5] then
         if sk+1>op or qe+1>op or pz+1>op then gix(); bqs("vm",0) end
         hv[sk+1]=hv[qe+1][hv[pz+1]]
        elseif vj==jq[6] then
         if sk+1>op or qe+1>op or pz+1>op then gix(); bqs("vm",0) end
         hv[sk+1][hv[qe+1]]=hv[pz+1]
        elseif vj==jq[7] and (ee==4294967295 or bit32.band(ee,2147483648)==0) then
         if sk+1>op or qe+1>hh or pz+1>op then gix(); bqs("vm",0) end
         hv[sk+1]=hv[pz+1][tf[sh[qe+1]+1]]
        elseif vj==jq[8] then
         if type(print)==cre[13] then print("TRACE_FIELD_WRITE "..tostring(tf[qe+1]).." "..type(hv[pz+1])..":"..tostring(hv[pz+1])) end
         if sk+1>op or qe+1>hh or pz+1>op then gix(); bqs("vm",0) end
         hv[sk+1][tf[sh[qe+1]+1]]=hv[pz+1]
        elseif vj==jq[70] then
         if qe<1 or qe>511 or pz<0 then gix(); bqs("vm",0) end
         local mm={}
         for isc=1,qe do
          local tu=zm(ro,us+4+isc)
          if tu+1>vx then gix(); bqs("vm",0) end
          mm[isc]=ftx[tu+1]
         end
         local dw=ee
         if dw==3 then mm=sw(mm[1],qe) dw=2 else dw=(dw~=0 and 1 or 0) end
         hv[sk+1]=zw(mm,pz,qe,dw,sk)
         if dw~=0 and (type(hv[sk+1])~=cre[9] or #hv[sk+1]~=64) then gix(); bqs("vm",0) end
         mm=nil
        elseif vj==jq[14] then
         if sk+1>op or qe+1>op or pz+1>hh then gix(); bqs("vm",0) end
         local jp=hv[qe+1]
         local vr=jp[tf[sh[pz+1]+1]]
         if type(vr)~=cre[13] then gix(); bqs("vm",0) end
         local sm={jp}
         for isc=1,ee do
          local kd=zm(ro,us+4+isc)
          if kd+1>op then gix(); bqs("vm",0) end
          sm[isc+1]=hv[kd+1]
         end
         hv[sk+1]=sf(vr,sm)
        elseif vj==jq[12] then
         local un=hv[qe+1]
         if type(un)~=cre[13] then gix(); bqs("vm",0) end
         local sm={}
         for isc=1,ee do
          local kd=zm(ro,us+4+isc)
          if kd+1>op then gix(); bqs("vm",0) end
          sm[isc]=hv[kd+1]
         end
         hv[sk+1]=un(tp(sm))
        elseif vj==jq[30] then
         if qe<1 or qe>#qia then gix(); bqs("vm",0) end
         local sm={}
         for isc=1,ee do
          local kd=zm(ro,us+4+isc)
          if kd+1>op then gix(); bqs("vm",0) end
          sm[isc]=hv[kd+1]
         end
         hv[sk+1]=mt(qe,sm)
        elseif vj==jq[18] then
         tk(hv,sk,pz,ee,1)
        elseif vj==jq[19] then
         tk(hv,sk,pz,ee,8)
        elseif vj==jq[20] then
         tk(hv,sk,pz,ee,2)
        elseif vj==jq[21] then
         tk(hv,sk,pz,ee,4)
        elseif vj==jq[28] then
         hv[sk+1]=hv[pz+1]%hv[ee+1]
        elseif vj==jq[22] then
         tk(hv,sk,pz,ee,3)
        elseif vj==jq[23] then
         tk(hv,sk,pz,ee,9)
        elseif vj==jq[24] then
         tk(hv,sk,pz,ee,5)
        elseif vj==jq[25] then
         tk(hv,sk,pz,ee,6)
        elseif vj==jq[26] then
         tk(hv,sk,pz,ee,7)
        elseif vj==jq[27] then
         tk(hv,sk,pz,ee,12)
        elseif vj==jq[29] then
         tk(hv,sk,pz,ee,10)
        elseif vj==jq[34] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],1)
        elseif vj==jq[46] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],1)
        elseif vj==jq[35] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],8)
        elseif vj==jq[47] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],8)
        elseif vj==jq[36] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],2)
        elseif vj==jq[48] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],2)
        elseif vj==jq[37] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],4)
        elseif vj==jq[49] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],4)
        elseif vj==jq[38] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],11)
        elseif vj==jq[50] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],11)
        elseif vj==jq[39] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],3)
        elseif vj==jq[51] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],3)
        elseif vj==jq[40] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],9)
        elseif vj==jq[52] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],9)
        elseif vj==jq[41] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],5)
        elseif vj==jq[53] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],5)
        elseif vj==jq[42] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],6)
        elseif vj==jq[54] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],6)
        elseif vj==jq[43] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],7)
        elseif vj==jq[55] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],7)
        elseif vj==jq[44] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],12)
        elseif vj==jq[56] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],12)
        elseif vj==jq[45] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],10)
        elseif vj==jq[57] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],10)
        elseif vj==jq[58] then
         if not jh(ftx[pz+1],hv[sk+1],3) then dz=ff(qe+1) end
        elseif vj==jq[64] then
         if not jh(hv[sk+1],ftx[pz+1],3) then dz=ff(qe+1) end
        elseif vj==jq[59] then
         if not jh(ftx[pz+1],hv[sk+1],9) then dz=ff(qe+1) end
        elseif vj==jq[65] then
         if not jh(hv[sk+1],ftx[pz+1],9) then dz=ff(qe+1) end
        elseif vj==jq[60] then
         if not jh(ftx[pz+1],hv[sk+1],5) then dz=ff(qe+1) end
        elseif vj==jq[66] then
         if not jh(hv[sk+1],ftx[pz+1],5) then dz=ff(qe+1) end
        elseif vj==jq[61] then
         if not jh(ftx[pz+1],hv[sk+1],6) then dz=ff(qe+1) end
        elseif vj==jq[67] then
         if not jh(hv[sk+1],ftx[pz+1],6) then dz=ff(qe+1) end
        elseif vj==jq[62] then
         if not jh(ftx[pz+1],hv[sk+1],7) then dz=ff(qe+1) end
        elseif vj==jq[68] then
         if not jh(hv[sk+1],ftx[pz+1],7) then dz=ff(qe+1) end
        elseif vj==jq[63] then
         if not jh(ftx[pz+1],hv[sk+1],12) then dz=ff(qe+1) end
        elseif vj==jq[69] then
         if not jh(hv[sk+1],ftx[pz+1],12) then dz=ff(qe+1) end
        elseif vj==jq[12] and bit32.band(ee,2147483648)~=0 then
         local un=hv[sk+1]
         if type(un)~=cre[13] then gix(); bqs("vm",0) end
         local sm={}
         for isc=1,bit32.band(ee,2147483647) do
          local kd=zm(ro,us+4+isc)
          if kd+1>op then gix(); bqs("vm",0) end
          sm[isc]=hv[kd+1]
         end
         return un(tp(sm))
        elseif vj==jq[7] and ee~=4294967295 and bit32.band(ee,2147483648)~=0 then
         local un=hv[pz+1][tf[sh[qe+1]+1]]
         if type(un)~=cre[13] then gix(); bqs("vm",0) end
         local sm={}
         for isc=1,bit32.band(ee,2147483647) do
          local kd=zm(ro,us+4+isc)
          if kd+1>op then gix(); bqs("vm",0) end
          sm[isc]=hv[kd+1]
         end
         hv[sk+1]=un(tp(sm))
        elseif vj==jq[13] then
         local un=hv[qe+1] local sm={}
         for isc=1,ee do local kd=zm(ro,us+4+isc) sm[isc]=hv[kd+1] end
         local lv=hv[zm(ro,us+5+ee)+1] for isc=1,#lv do sm[#sm+1]=lv[isc] end
         hv[sk+1]=un(tp(sm))
        elseif vj==jq[16] then
         local fl={} for isc=1,ee do fl[isc]=hv[zm(ro,us+4+isc)+1] end hv[sk+1]=fl
        elseif vj==jq[17] then
         local zx=hv[qe+1] local quo,jn=zx() hv[sk+1]={quo,jn}
        elseif vj==jq[32] then
         if qe+1<1 or qe+1>cb then gix(); bqs("vm",0) end
         dz=ff(qe+1)
        elseif vj==jq[33] then
         if qe+1<1 or qe+1>cb or pz+1>op then gix(); bqs("vm",0) end
         if not hv[pz+1] then dz=ff(qe+1) end
        elseif vj==jq[31] then
         return lc(hv,sk)
        else gix(); bqs("unsupported nested child opcode",0) end
        tw=dz
       end
       return nil
      end
      iu[fh+1]=fb
      if dc+1<=dv then
       local au={}
       for isc=1,lt do
        local kd=zm(pj,nx+4+isc)
        if kd+1>dv then gix(); bqs("vm",0) end
        au[isc]=iu[kd+1]
       end
       iu[dc+1]=fb(tp(au))
      end
     elseif ho==jq[18] then
      tk(iu,fh,dc,lt,1)
     elseif ho==jq[19] then
      tk(iu,fh,dc,lt,8)
     elseif ho==jq[20] then
      tk(iu,fh,dc,lt,2)
     elseif ho==jq[21] then
      tk(iu,fh,dc,lt,4)
     elseif ho==jq[28] then
      iu[fh+1]=iu[dc+1]%iu[lt+1]
     elseif ho==jq[22] then
      tk(iu,fh,dc,lt,3)
     elseif ho==jq[23] then
      tk(iu,fh,dc,lt,9)
     elseif ho==jq[24] then
      tk(iu,fh,dc,lt,5)
     elseif ho==jq[25] then
      tk(iu,fh,dc,lt,6)
     elseif ho==jq[26] then
      tk(iu,fh,dc,lt,7)
     elseif ho==jq[27] then
      tk(iu,fh,dc,lt,12)
     elseif ho==jq[29] then
      tk(iu,fh,dc,lt,10)
     elseif ho==jq[34] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],1)
     elseif ho==jq[46] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],1)
     elseif ho==jq[35] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],8)
     elseif ho==jq[47] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],8)
     elseif ho==jq[36] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],2)
     elseif ho==jq[48] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],2)
     elseif ho==jq[37] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],4)
     elseif ho==jq[49] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],4)
     elseif ho==jq[38] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],11)
     elseif ho==jq[50] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],11)
     elseif ho==jq[39] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],3)
     elseif ho==jq[51] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],3)
     elseif ho==jq[40] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],9)
     elseif ho==jq[52] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],9)
     elseif ho==jq[41] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],5)
     elseif ho==jq[53] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],5)
     elseif ho==jq[42] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],6)
     elseif ho==jq[54] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],6)
     elseif ho==jq[43] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],7)
     elseif ho==jq[55] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],7)
     elseif ho==jq[44] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],12)
     elseif ho==jq[56] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],12)
     elseif ho==jq[45] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],10)
     elseif ho==jq[57] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],10)
     elseif ho==jq[58] then
      if not jh(ftx[dc+1],iu[fh+1],3) then cf=ff(jr+1) end
     elseif ho==jq[64] then
      if not jh(iu[fh+1],ftx[dc+1],3) then cf=ff(jr+1) end
     elseif ho==jq[59] then
      if not jh(ftx[dc+1],iu[fh+1],9) then cf=ff(jr+1) end
     elseif ho==jq[65] then
      if not jh(iu[fh+1],ftx[dc+1],9) then cf=ff(jr+1) end
     elseif ho==jq[60] then
      if not jh(ftx[dc+1],iu[fh+1],5) then cf=ff(jr+1) end
     elseif ho==jq[66] then
      if not jh(iu[fh+1],ftx[dc+1],5) then cf=ff(jr+1) end
     elseif ho==jq[61] then
      if not jh(ftx[dc+1],iu[fh+1],6) then cf=ff(jr+1) end
     elseif ho==jq[67] then
      if not jh(iu[fh+1],ftx[dc+1],6) then cf=ff(jr+1) end
     elseif ho==jq[62] then
      if not jh(ftx[dc+1],iu[fh+1],7) then cf=ff(jr+1) end
     elseif ho==jq[68] then
      if not jh(iu[fh+1],ftx[dc+1],7) then cf=ff(jr+1) end
     elseif ho==jq[63] then
      if not jh(ftx[dc+1],iu[fh+1],12) then cf=ff(jr+1) end
     elseif ho==jq[69] then
      if not jh(iu[fh+1],ftx[dc+1],12) then cf=ff(jr+1) end
     elseif ho==jq[12] and bit32.band(lt,2147483648)~=0 then
      local uv=iu[fh+1]
      if type(uv)~=cre[13] then gix(); bqs("vm",0) end
      local au={}
      for isc=1,bit32.band(lt,2147483647) do
       local kd=zm(pj,nx+4+isc)
       if kd+1>dv then gix(); bqs("vm",0) end
       au[isc]=iu[kd+1]
      end
      return uv(tp(au))
     elseif ho==jq[7] and lt~=4294967295 and bit32.band(lt,2147483648)~=0 then
      local uv=iu[dc+1][tf[qa[jr+1]+1]]
      if type(uv)~=cre[13] then gix(); bqs("vm",0) end
      local au={}
      for isc=1,bit32.band(lt,2147483647) do
       local kd=zm(pj,nx+4+isc)
       if kd+1>dv then gix(); bqs("vm",0) end
       au[isc]=iu[kd+1]
      end
      iu[fh+1]=uv(tp(au))
     elseif ho==jq[32] then
      cf=ff(jr+1)
     elseif ho==jq[33] then
      if not iu[dc+1] then cf=ff(jr+1) end
     elseif ho==jq[31] then
      return lc(iu,fh)
     else gix(); bqs("unsupported child opcode",0) end
     gw=cf
    end
    return nil
   end
   return jo
   end
   local jo=pd()
   nes[cdy]=jo
end
qi[(((42-1)*1+57)%70)+1]=function()
   if udl+1>bh or etx+1>vx then gix(); bqs("vm",0) end
   local jva=ftx[etx+1]
   local kvs=nes[udl+1]
   nes[cdy]=rc(jva,kvs,9)
end
qi[(((13-1)*1+57)%70)+1]=function()
   if etx+1>bh or udl<0 then gix(); bqs("vm",0) end
   local od=nes[etx+1]
   local rb=nil if type(od)~=cre[13] then local dm=getmetatable(od) rb=dm and dm.__call if type(rb)~=cre[13] then gix(); bqs("vm",0) end end
   local qsi={}
   for isc=1,udl do
    if cvn.a>te then gix(); bqs("vm",0) end
    local kd=yu(cvn.a)+1
    qsi[isc]=nes[kd]
    cvn.a=cvn.a+1
   end
   local jd=yu(cvn.a)+1
   cvn.a=cvn.a+1
   local lv=nes[jd]
   if type(lv)~=cre[12] then lv={lv} end
   for isc=1,(lv.n or #lv) do qsi[#qsi+1]=lv[isc] end
   nes[cdy]=od(tp(qsi,1,udl+(lv.n or #lv)))
   qsi=nil; lv=nil
end
qi[(((6-1)*1+57)%70)+1]=function()
   if cdy+1>bh or etx+1>bh or udl+1>bh then gix(); bqs("vm",0) end
   ad(2,nes,cdy,etx+1,udl+1)
end
qi[(((20-1)*1+57)%70)+1]=function()
   local bd={}
   if etx+1>bh or udl+1>bh then gix(); bqs("vm",0) end
   nes[cdy]=rc(nes[etx+1],nes[udl+1],12)
end
qi[(((61-1)*1+57)%70)+1]=function()
   if cdy>bh or etx+1>rq or udl+1>vx then gix(); bqs("vm",0) end
   if not rc(ftx[udl+1],nes[cdy],9) then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
qi[(((32-1)*1+57)%70)+1]=function()
   local bd={}
 if etx+1>rq then gix(); bqs("vm",0) end
 local ls,oj=co(1,tg,etx+1)
 cvn.a=oj
 cvn.j=ls
 io(etx+1)
end
qi[(((59-1)*1+57)%70)+1]=function()
   local bd=0
   if cdy>bh or etx+1>rq or udl+1>vx then gix(); bqs("vm",0) end
   local fk=not rc(ftx[udl+1],nes[cdy],2)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
qi[(((10-1)*1+57)%70)+1]=function()
   if cdy>hh or etx+1>bh then gix(); bqs("vm",0) end
   ev(2,nes,am,cdy,etx)
end
qi[(((31-1)*1+57)%70)+1]=function()
   local bd=0
   local bz=nes[cdy]
   nes[cdy]=nil
   ax=bz
   gn=154
   bz=nil
end
qi[(((4-1)*1+57)%70)+1]=function()
   local bd={}
end
qi[(((5-1)*1+57)%70)+1]=function()
   if etx+1>bh or udl+1>bh then gix(); bqs("vm",0) end
   ad(1,nes,cdy,etx+1,udl+1)
end
qi[(((41-1)*1+57)%70)+1]=function()
   if etx+1>vx or udl+1>bh then gix(); bqs("vm",0) end
   nes[cdy]=rc(ftx[etx+1],nes[udl+1],7)
end
qi[(((43-1)*1+57)%70)+1]=function()
   local bd=0
   if udl+1>bh or etx+1>vx then gix(); bqs("vm",0) end
   local jva=ftx[etx+1]
   local kvs=nes[udl+1]
   nes[cdy]=rc(jva,kvs,10)
end
qi[(((52-1)*1+57)%70)+1]=function()
   local bd={}
   if udl+1>vx or etx+1>bh then gix(); bqs("vm",0) end
   local jva=nes[etx+1]
   local kvs=ftx[udl+1]
   nes[cdy]=rc(jva,kvs,2)
end
qi[(((26-1)*1+57)%70)+1]=function()
   if etx+1>bh or udl+1>bh then gix(); bqs("vm",0) end
   nes[cdy]=rc(nes[etx+1],nes[udl+1],10)
end
qi[(((53-1)*1+57)%70)+1]=function()
   if etx+1>bh or udl+1>vx then gix(); bqs("vm",0) end
   nes[cdy]=rc(nes[etx+1],ftx[udl+1],7)
end
qi[(((15-1)*1+57)%70)+1]=function()
   local bd=0
   if etx<1 or etx>#qia then gix(); bqs("vm",0) end
   local qsi={}
   for isc=1,udl do
    local kd=yu(cvn.a)+1
    qsi[isc]=nes[kd]
    cvn.a=cvn.a+1
   end
   local jd=yu(cvn.a)+1
   cvn.a=cvn.a+1
   local lv=nes[jd]
   if type(lv)~=cre[12] then lv={lv} end
   for isc=1,#lv do qsi[#qsi+1]=lv[isc] end
   nes[cdy]=mt(etx,qsi)
   qsi=nil; lv=nil
end
qi[(((64-1)*1+57)%70)+1]=function()
   local bd={}
   if cdy>bh or etx+1>rq or udl+1>vx then gix(); bqs("vm",0) end
   local fk=not rc(nes[cdy],ftx[udl+1],6)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
qi[(((48-1)*1+57)%70)+1]=function()
   local bd={}
   if udl+1>vx or etx+1>bh then gix(); bqs("vm",0) end
   local jva=nes[etx+1]
   local kvs=ftx[udl+1]
   nes[cdy]=rc(jva,kvs,12)
end
qi[(((38-1)*1+57)%70)+1]=function()
   if udl+1>bh or etx+1>vx then gix(); bqs("vm",0) end
   local jva=ftx[etx+1]
   local kvs=nes[udl+1]
   nes[cdy]=rc(jva,kvs,8)
end
qi[(((34-1)*1+57)%70)+1]=function()
   if udl+1>bh or etx+1>vx then gix(); bqs("vm",0) end
   local jva=ftx[etx+1]
   local kvs=nes[udl+1]
   nes[cdy]=rc(jva,kvs,5)
end
qi[(((23-1)*1+57)%70)+1]=function()
   local bd=0
   if etx+1>bh or udl+1>bh then gix(); bqs("vm",0) end
   nes[cdy]=rc(nes[etx+1],nes[udl+1],2)
end
qi[(((14-1)*1+57)%70)+1]=function()
   if etx+1>bh or udl+1>hh then gix(); bqs("vm",0) end
   local qv=nes[etx+1]
   local rt=type(qv)
   if rt~=cre[12] and rt~="userdata" then gix(); bqs("vm",0) end
   local zd=qv[tf[udl+1]]
   print("TRACE_METHOD_LOOKUP "..tostring(tf[udl+1]).." receiver:"..type(qv).." method:"..type(zd))
   if type(zd)~=cre[13] then gix(); bqs("vm",0) end
   if cvn.a>te then gix(); bqs("vm",0) end
   local dr=yu(cvn.a)
   cvn.a=cvn.a+1
   local qsi={qv}
   for isc=1,dr do
    if cvn.a>te then gix(); bqs("vm",0) end
    local kd=yu(cvn.a)+1
    if kd<1 or kd>bh then gix(); bqs("vm",0) end
    qsi[isc+1]=nes[kd]
    cvn.a=cvn.a+1
   end
   print("TRACE_METHOD "..tostring(tf[udl+1]).." receiver:"..type(qv).." args:"..tostring(dr))
   nes[cdy]=zd(tp(qsi))
   qsi=nil
   qv=nil
   zd=nil
end
qi[(((57-1)*1+57)%70)+1]=function()
   if etx+1>bh or udl+1>vx then gix(); bqs("vm",0) end
   nes[cdy]=rc(nes[etx+1],ftx[udl+1],11)
end
qi[(((37-1)*1+57)%70)+1]=function()
   if etx+1>vx or udl+1>bh then gix(); bqs("vm",0) end
   nes[cdy]=rc(ftx[etx+1],nes[udl+1],1)
end
qi[(((27-1)*1+57)%70)+1]=function()
   local bd=0
   if etx+1>bh or udl+1>bh then gix(); bqs("vm",0) end
   nes[cdy]=rc(nes[etx+1],nes[udl+1],3)
end
qi[(((55-1)*1+57)%70)+1]=function()
   local bd=0
   if udl+1>vx or etx+1>bh then gix(); bqs("vm",0) end
   local jva=nes[etx+1]
   local kvs=ftx[udl+1]
   nes[cdy]=rc(jva,kvs,10)
end
qi[(((65-1)*1+57)%70)+1]=function()
   if cdy>bh or etx+1>rq or udl+1>vx then gix(); bqs("vm",0) end
   if not rc(nes[cdy],ftx[udl+1],2) then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
qi[(((58-1)*1+57)%70)+1]=function()
   if cdy>bh or etx+1>rq or udl+1>vx then gix(); bqs("vm",0) end
   local fk=not rc(ftx[udl+1],nes[cdy],6)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
qi[(((69-1)*1+57)%70)+1]=function()
   if cdy>bh or etx+1>rq or udl+1>vx then gix(); bqs("vm",0) end
   if not rc(nes[cdy],ftx[udl+1],3) then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
qi[(((46-1)*1+57)%70)+1]=function()
   if udl+1>vx or etx+1>bh then gix(); bqs("vm",0) end
   local jva=nes[etx+1]
   local kvs=ftx[udl+1]
   nes[cdy]=rc(jva,kvs,5)
end
qi[(((21-1)*1+57)%70)+1]=function()
   if etx+1>bh or udl+1>bh then gix(); bqs("vm",0) end
   nes[cdy]=rc(nes[etx+1],nes[udl+1],1)
end
qi[(((19-1)*1+57)%70)+1]=function()
   local bd=0
   if etx+1>bh or udl+1>bh then gix(); bqs("vm",0) end
   nes[cdy]=rc(nes[etx+1],nes[udl+1],4)
end
qi[(((45-1)*1+57)%70)+1]=function()
   if etx+1>vx or udl+1>bh then gix(); bqs("vm",0) end
   nes[cdy]=rc(ftx[etx+1],nes[udl+1],11)
end
qi[(((30-1)*1+57)%70)+1]=function()
   if etx<1 or etx>#qia then gix(); bqs("vm",0) end
   local qsi={}
   local isc=1
   while isc<=udl do
    if cvn.a>te then gix(); bqs("vm",0) end
    local kd=yu(cvn.a)+1
    if kd<1 or kd>bh then gix(); bqs("vm",0) end
    qsi[isc]=nes[kd]
    cvn.a=cvn.a+1
    isc=isc+1
   end
   local jvc=qia[etx]
   if type(jvc)~=cre[13] then gix(); bqs("vm",0) end
   nes[cdy]=jvc(tp(qsi))
   for wyx=1,#qsi do qsi[wyx]=nil end
end
qi[(((44-1)*1+57)%70)+1]=function()
   local bd={}
   if udl+1>bh or etx+1>vx then gix(); bqs("vm",0) end
   local jva=ftx[etx+1]
   local kvs=nes[udl+1]
   nes[cdy]=rc(jva,kvs,3)
end
qi[(((40-1)*1+57)%70)+1]=function()
   local bd={}
   if udl+1>bh or etx+1>vx then gix(); bqs("vm",0) end
   local jva=ftx[etx+1]
   local kvs=nes[udl+1]
   nes[cdy]=rc(jva,kvs,2)
end
qi[(((56-1)*1+57)%70)+1]=function()
   local bd={}
   if udl+1>vx or etx+1>bh then gix(); bqs("vm",0) end
   local jva=nes[etx+1]
   local kvs=ftx[udl+1]
   nes[cdy]=rc(jva,kvs,3)
end
qi[(((1-1)*1+57)%70)+1]=function()
   if etx+1>vx then gix(); bqs("vm",0) end
   nes[cdy]=ftx[etx+1]
end
qi[(((63-1)*1+57)%70)+1]=function()
   local bd=0
   if cdy>bh or etx+1>rq or udl+1>vx then gix(); bqs("vm",0) end
   local fk=not rc(ftx[udl+1],nes[cdy],3)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
qi[(((25-1)*1+57)%70)+1]=function()
   if etx+1>bh or udl+1>bh then gix(); bqs("vm",0) end
   nes[cdy]=rc(nes[etx+1],nes[udl+1],9)
end
qi[(((7-1)*1+57)%70)+1]=function()
   local bd=0
   if etx+1>hh or udl+1>bh then gix(); bqs("vm",0) end
   ad(3,nes,cdy,etx+1,udl+1)
end
qi[(((50-1)*1+57)%70)+1]=function()
   if udl+1>vx or etx+1>bh then gix(); bqs("vm",0) end
   local jva=nes[etx+1]
   local kvs=ftx[udl+1]
   nes[cdy]=rc(jva,kvs,8)
end
qi[(((68-1)*1+57)%70)+1]=function()
   local bd={}
   if cdy>bh or etx+1>rq or udl+1>vx then gix(); bqs("vm",0) end
   local fk=not rc(nes[cdy],ftx[udl+1],10)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
function ea(sb)
 local uq=qi[(((sb-1)*1+57)%70)+1]
 if uq==nil then bqs(); fni("vm",0) end
 return uq()
end
function gf(uph,cdy,etx)
 uph[cdy+1]=ftx[etx+1]
end
function vq(uph,rxr,ppx,cdy,etx)
 uph[cdy+1]=tt(rxr,tf[ppx[etx+1]+1])
end
function kb(uph,rxr,ppx,cdy,etx)
 xh(rxr,tf[ppx[cdy+1]+1],uph[etx+1])
end
function ty(uph,cdy,etx,udl)
 uph[cdy+1]=uph[etx+1][uph[udl+1]]
end
function kl(uph,cdy,etx,udl)
 uph[cdy+1][uph[etx+1]]=uph[udl+1]
end
function gu(uph,ppx,cdy,etx,udl)
 uph[cdy+1]=uph[udl+1][tf[ppx[etx+1]+1]]
end
function ib(uph,ppx,cdy,etx,udl)
 uph[cdy+1][tf[ppx[etx+1]+1]]=uph[udl+1]
end
function uk(kyc,mrr) return kyc+mrr end
function el(kyc,mrr) return kyc*mrr end
function pv(kyc,mrr) return kyc==mrr end
function xa(kyc,mrr) return kyc/mrr end
function mu(kyc,mrr) return kyc<mrr end
function sq(kyc,mrr) return kyc>mrr end
function fz(kyc,mrr) return kyc<=mrr end
function ng(kyc,mrr) return kyc-mrr end
function lm(kyc,mrr) return kyc~=mrr end
function ne(kyc,mrr) return kyc..mrr end
function nv(kyc,mrr) return kyc>=mrr end
local fe={}
fe[1]=uk
fe[2]=el
fe[3]=pv
fe[4]=xa
fe[5]=mu
fe[6]=sq
fe[7]=fz
fe[8]=ng
fe[9]=lm
fe[10]=ne
fe[12]=nv
local gx={}
local wj={}
gx[1]=function(hbx) hbx[4]=fe[hbx[3]] end
gx[2]=function(hbx) hbx[4]=hbx[4](hbx[1],hbx[2]) end
gx[3]=function(hbx) hbx[1]=hbx[1] end
gx[4]=function(hbx) hbx[2]=hbx[2] end
wj[1]={3,1,2}
wj[2]={4,1,2}
wj[3]={3,1,2}
wj[4]={4,1,2}
wj[5]={3,1,2}
wj[6]={4,1,2}
wj[7]={3,1,2}
wj[8]={4,1,2}
wj[9]={3,1,2}
wj[10]={4,1,2}
wj[12]={4,1,2}
local function jh(kyc,mrr,sfk)
 local sp=wj[sfk]
 if sp==nil then bqs(); fni("vm",0) end
 local gn={kyc,mrr,sfk,nil}
 for jxn=1,#sp do
  local ar=gx[sp[jxn]]
  if ar==nil then bqs(); fni("vm",0) end
  ar(gn)
 end
 return gn[4]
end
function kt(uph,cdy,etx,udl,sfk)
 uph[cdy+1]=jh(uph[etx+1],uph[udl+1],sfk)
end
function yv(oj)
 local zz=oj
 return zz
end
function bq(jn,oj,wd)
 if jn then return wd end
 return oj
end
function pb(uph,cdy)
 local ax=uph[cdy+1]
 return ax
end
function qz(zd,qsi)
 if type(zd)~=cre[13] then bwb(); gix("vm",0) end
 local ptf=zd
 return ptf(tp(qsi))
end
function bw(qw)
 local spx={}
 for quo in pairs(qw) do spx[quo]=qw[quo] end
 return spx
end
function oo(thd,et,tl,lk,fc)
 local jw=math.floor(#thd/4)
 if #thd%4~=0 or lk>jw+1 then bqs(); fni(fc,0) end
 local hn={}
 for jxn=1,et do
  local pn=zm(thd,tl+jxn-1)
  if pn<lk or pn+4>jw then bqs(); fni(fc,0) end
  if jxn>1 and pn<=hn[jxn-1] then bqs(); fni(fc,0) end
  hn[jxn]=pn
 end
 return hn,jw
end
function iw(am,jl,oy,...)
 local dr=select('#',...)
 local bcn=math.min(dr,oy)
 for jxn=bcn,1,-1 do
  xh(am,tf[jl[jxn]+1],select(jxn,...))
 end
end
function kz(thd,fc)
 local vy=zm(thd,1) if vy==2 then gix(); bqs("vm",0) end if vy~=3 then gix(); bqs(fc,0) end
 local bh=zm(thd,2)
 local jz=zm(thd,3)
 local oy=zm(thd,4)
 local qq=70 local yr=0 if vy==3 then qq=zm(thd,5) yr=qq end
 if vy==3 and (qq<1 or qq>70) then gix(); bqs(fc,0) end
 local hd={} local is={}
 if vy==3 then for jxn=1,qq do local sb=zm(thd,5+jxn) if sb<1 or sb>70 or is[sb] then gix(); bqs(fc,0) end hd[sb]=true is[sb]=true end else for jxn=1,70 do hd[jxn]=true end end
 local jl={}
 local pu={}
 for jxn=1,oy do
  local kq=zm(thd,4+yr+jxn) if kq>=hh or pu[kq] then gix(); bqs(fc,0) end jl[jxn]=kq pu[kq]=true
 end
 local wk={}
 local nm={}
 for jxn=1,bh do
  local aw=zm(thd,4+yr+oy+jxn)
  if aw<1 or aw>bh or nm[aw] then gix(); bqs(fc,0) end
  wk[jxn]=aw
  nm[aw]=true
 end
 local tl=5+oy+bh+(vy==3 and 1+qq or 0)
 local lk=tl+jz
 local hn,jw=oo(thd,jz,tl,lk,fc)
 return bh,jz,oy,jl,wk,hn,jw,hd
end
local ru={}
ru[jq[1]]=1
ru[jq[2]]=2
ru[jq[3]]=3
ru[jq[4]]=4
ru[jq[5]]=5
ru[jq[6]]=6
ru[jq[7]]=7
ru[jq[8]]=8
ru[jq[9]]=9
ru[jq[10]]=10
ru[jq[11]]=11
ru[jq[12]]=12
ru[jq[13]]=13
ru[jq[14]]=14
ru[jq[15]]=15
ru[jq[16]]=16
ru[jq[17]]=17
ru[jq[18]]=18
ru[jq[19]]=19
ru[jq[20]]=20
ru[jq[21]]=21
ru[jq[22]]=22
ru[jq[23]]=23
ru[jq[24]]=24
ru[jq[25]]=25
ru[jq[26]]=26
ru[jq[27]]=27
ru[jq[28]]=28
ru[jq[29]]=29
ru[jq[30]]=30
ru[jq[31]]=31
ru[jq[32]]=32
ru[jq[33]]=33
ru[jq[34]]=34
ru[jq[35]]=35
ru[jq[36]]=36
ru[jq[37]]=37
ru[jq[38]]=38
ru[jq[39]]=39
ru[jq[40]]=40
ru[jq[41]]=41
ru[jq[42]]=42
ru[jq[43]]=43
ru[jq[44]]=44
ru[jq[45]]=45
ru[jq[46]]=46
ru[jq[47]]=47
ru[jq[48]]=48
ru[jq[49]]=49
ru[jq[50]]=50
ru[jq[51]]=51
ru[jq[52]]=52
ru[jq[53]]=53
ru[jq[54]]=54
ru[jq[55]]=55
ru[jq[56]]=56
ru[jq[57]]=57
ru[jq[58]]=58
ru[jq[59]]=59
ru[jq[60]]=60
ru[jq[61]]=61
ru[jq[62]]=62
ru[jq[63]]=63
ru[jq[64]]=64
ru[jq[65]]=65
ru[jq[66]]=66
ru[jq[67]]=67
ru[jq[68]]=68
ru[jq[69]]=69
ru[jq[70]]=70
function ei(jn)
 return ru[jn]
end
function vc(jn,vor)
 return ei(jn)==vor
end
local pe={}
pe[1]=1
pe[2]=2
pe[3]=3
pe[4]=4
pe[5]=5
pe[6]=6
pe[7]=7
pe[8]=8
pe[9]=9
pe[10]=10
pe[11]=11
pe[12]=12
pe[13]=13
pe[14]=14
pe[15]=15
pe[16]=16
pe[17]=17
pe[18]=18
pe[19]=19
pe[20]=20
pe[21]=21
pe[22]=22
pe[23]=23
pe[24]=24
pe[25]=25
pe[26]=26
pe[27]=27
pe[28]=28
pe[29]=29
pe[30]=30
pe[31]=31
pe[32]=32
pe[33]=33
pe[34]=34
pe[35]=35
pe[36]=36
pe[37]=37
pe[38]=38
pe[39]=39
pe[40]=40
pe[41]=41
pe[42]=42
pe[43]=43
pe[44]=44
pe[45]=45
pe[46]=46
pe[47]=47
pe[48]=48
pe[49]=49
pe[50]=50
pe[51]=51
pe[52]=52
pe[53]=53
pe[54]=54
pe[55]=55
pe[56]=56
pe[57]=57
pe[58]=58
pe[59]=59
pe[60]=60
pe[61]=61
pe[62]=62
pe[63]=63
pe[64]=64
pe[65]=65
pe[66]=66
pe[67]=67
pe[68]=68
pe[69]=69
pe[70]=70
local bf={}
function xt(kyc,mrr) return kyc/mrr end
function cr(kyc,mrr) return kyc~=mrr end
function ip(kyc,mrr) return kyc>=mrr end
function ds(kyc,mrr) return kyc-mrr end
function vp(kyc,mrr) return kyc+mrr end
function zn(kyc,mrr) return kyc==mrr end
function ap(kyc,mrr) return kyc<mrr end
function ql(kyc,mrr) return kyc%mrr end
function ck(kyc,mrr) return kyc>mrr end
function qp(kyc,mrr) return kyc<=mrr end
function vh(kyc,mrr) return kyc..mrr end
function ux(kyc,mrr) return kyc*mrr end
local nd={}
nd[1]=xt
nd[2]=cr
nd[3]=ip
nd[4]=ds
nd[5]=vp
nd[6]=zn
nd[7]=ap
nd[8]=ql
nd[9]=ck
nd[10]=qp
nd[11]=vh
nd[12]=ux
function kr(kyc,mrr,wyx)
 local gv=nd[wyx]
 if gv==nil then fni(); bwb("vm",0) end
 return gv(kyc,mrr) end
local ri={}
ri[1]=function(uph,nux,cdy,etx)
 uph[cdy]=tt(nux,tf[etx])
end
ri[2]=function(uph,nux,cdy,etx)
 xh(nux,tf[cdy],uph[etx+1])
end
function na(myq,uph,nux,cdy,etx)
 local gv=ri[myq]
 if gv==nil then fni(); bwb("vm",0) end
 return gv(uph,nux,cdy,etx)
end
local hc={}
hc[1]=function(rx,oj)
 return true,rx[oj]+1
end
hc[2]=function(rx,oj,jn)
 if jn then return false,nil end
 return true,rx[oj]+1
end
function du(myq,rx,oj,jn)
 local gv=hc[myq]
 if gv==nil then bqs(); fni("vm",0) end
 return gv(rx,oj,jn)
end
local db={}
db[1]=function(uph,cdy,etx,udl) local oj=uph[etx] local quo=uph[udl] if type(oj)==cre[12] then uph[cdy]=oj[quo] elseif quo==1 then uph[cdy]=oj else uph[cdy]=nil end end
db[2]=function(uph,cdy,etx,udl) uph[cdy][uph[etx]]=uph[udl] end
db[3]=function(uph,cdy,etx,udl) uph[cdy]=uph[udl][tf[etx]] end
db[4]=function(uph,cdy,etx,udl) if type(print)==cre[13] then print("TRACE_FIELD_WRITE "..tostring(tf[etx]).." "..type(uph[udl])..":"..tostring(uph[udl])) end uph[cdy][tf[etx]]=uph[udl] end
function wf(myq,uph,cdy,etx,udl)
 local gv=db[myq]
 if gv==nil then fni(); bwb("vm",0) end
 return gv(uph,cdy,etx,udl)
end
local ef={}
local zi=4048946446
for jxn=1,70 do ef[jxn]=jxn end
for jxn=70,2,-1 do zi=bit32.band(zi*1664525+1013904223,4294967295) local isc=zi%jxn+1 ef[jxn],ef[isc]=ef[isc],ef[jxn] end
local gh={}
for jxn=1,70 do local hfs=(ef[jxn]-1)*17+57 gh[jxn]=ef[hfs%70+1] end
ef=gh
bf[(((68-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd=0
   if udl+1>vx or etx+1>rq or cdy>bh then fni(); bwb("vm",0) end
   local fk=not kr(zxl[cdy],ftx[udl+1],10)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
bf[(((50-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>vx or etx+1>bh then fni(); bwb("vm",0) end
   zxl[cdy]=kr(zxl[etx+1],ftx[udl+1],8)
end
bf[(((7-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>bh or etx+1>hh then fni(); bwb("vm",0) end
   wf(3,zxl,cdy,etx+1,udl+1)
end
bf[(((25-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
   if udl+1>bh or etx+1>bh then fni(); bwb("vm",0) end
   zxl[cdy]=kr(zxl[etx+1],zxl[udl+1],9)
end
bf[(((63-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>vx or etx+1>rq or cdy>bh then fni(); bwb("vm",0) end
   local fk=not kr(ftx[udl+1],zxl[cdy],3)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
bf[(((1-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
   local tu=etx+1
   if tu>vx then fni(); bwb("vm",0) end
   local cz=ftx[tu]
   zxl[cdy]=cz
   cz=nil
end
bf[(((56-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd=0
   if etx+1>bh or udl+1>vx then fni(); bwb("vm",0) end
   local jva=zxl[etx+1]
   local kvs=ftx[udl+1]
   zxl[cdy]=kr(jva,kvs,3)
end
bf[(((40-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd=0
   if etx+1>vx or udl+1>bh then fni(); bwb("vm",0) end
   local jva=ftx[etx+1]
   local kvs=zxl[udl+1]
   zxl[cdy]=kr(jva,kvs,2)
end
bf[(((44-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd=0
   if etx+1>vx or udl+1>bh then fni(); bwb("vm",0) end
   local jva=ftx[etx+1]
   local kvs=zxl[udl+1]
   zxl[cdy]=kr(jva,kvs,3)
end
bf[(((30-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if etx>#qia or etx<1 then fni(); bwb("vm",0) end
   local qsi={}
   for isc=1,udl do
    if cvn.a>te then fni(); bwb("vm",0) end
    local kd=yu(cvn.a)+1
    if kd>bh or kd<1 then fni(); bwb("vm",0) end
    qsi[isc]=zxl[kd]
    cvn.a=cvn.a+1
   end
   zxl[cdy]=mt(etx,qsi)
   qsi=nil
end
bf[(((45-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
   if etx+1>vx or udl+1>bh then fni(); bwb("vm",0) end
   local jva=ftx[etx+1]
   local kvs=zxl[udl+1]
   zxl[cdy]=kr(jva,kvs,11)
end
bf[(((19-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>bh or etx+1>bh then fni(); bwb("vm",0) end
   zxl[cdy]=kr(zxl[etx+1],zxl[udl+1],4)
end
bf[(((21-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
   if udl+1>bh or etx+1>bh then fni(); bwb("vm",0) end
   zxl[cdy]=kr(zxl[etx+1],zxl[udl+1],1)
end
bf[(((46-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>vx or etx+1>bh then fni(); bwb("vm",0) end
   zxl[cdy]=kr(zxl[etx+1],ftx[udl+1],5)
end
bf[(((69-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
   if udl+1>vx or etx+1>rq or cdy>bh then fni(); bwb("vm",0) end
   local fk=not kr(zxl[cdy],ftx[udl+1],3)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
bf[(((58-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>vx or etx+1>rq or cdy>bh then fni(); bwb("vm",0) end
   if not kr(ftx[udl+1],zxl[cdy],6) then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
bf[(((65-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
   if udl+1>vx or etx+1>rq or cdy>bh then fni(); bwb("vm",0) end
   local fk=not kr(zxl[cdy],ftx[udl+1],2)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
bf[(((55-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if etx+1>bh or udl+1>vx then fni(); bwb("vm",0) end
   local jva=zxl[etx+1]
   local kvs=ftx[udl+1]
   zxl[cdy]=kr(jva,kvs,10)
end
bf[(((27-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>bh or etx+1>bh then fni(); bwb("vm",0) end
   zxl[cdy]=kr(zxl[etx+1],zxl[udl+1],3)
end
bf[(((37-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
   if etx+1>vx or udl+1>bh then fni(); bwb("vm",0) end
   local jva=ftx[etx+1]
   local kvs=zxl[udl+1]
   zxl[cdy]=kr(jva,kvs,1)
end
bf[(((57-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
   if etx+1>bh or udl+1>vx then fni(); bwb("vm",0) end
   local jva=zxl[etx+1]
   local kvs=ftx[udl+1]
   zxl[cdy]=kr(jva,kvs,11)
end
bf[(((14-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>hh or etx+1>bh then fni(); bwb("vm",0) end
   local qv=zxl[etx+1]
   local rt=type(qv)
   if rt~="userdata" and rt~=cre[12] then fni(); bwb("vm",0) end
   local zd=qv[tf[udl+1]]
   print("TRACE_METHOD_LOOKUP "..tostring(tf[udl+1]).." receiver:"..type(qv).." method:"..type(zd))
   if type(zd)~=cre[13] then fni(); bwb("vm",0) end
   if cvn.a>te then fni(); bwb("vm",0) end
   local dr=yu(cvn.a)
   cvn.a=cvn.a+1
   local qsi={qv}
   for isc=1,dr do
    if cvn.a>te then fni(); bwb("vm",0) end
    local kd=yu(cvn.a)+1
    if kd>bh or kd<1 then fni(); bwb("vm",0) end
    qsi[isc+1]=zxl[kd]
    cvn.a=cvn.a+1
   end
   print("TRACE_METHOD "..tostring(tf[udl+1]).." receiver:"..type(qv).." args:"..tostring(dr))
   zxl[cdy]=zd(tp(qsi))
   qsi=nil
   qv=nil
   zd=nil
end
bf[(((23-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>bh or etx+1>bh then fni(); bwb("vm",0) end
   zxl[cdy]=kr(zxl[etx+1],zxl[udl+1],2)
end
bf[(((34-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>bh or etx+1>vx then fni(); bwb("vm",0) end
   zxl[cdy]=kr(ftx[etx+1],zxl[udl+1],5)
end
bf[(((38-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>bh or etx+1>vx then fni(); bwb("vm",0) end
   zxl[cdy]=kr(ftx[etx+1],zxl[udl+1],8)
end
bf[(((48-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd=0
   if etx+1>bh or udl+1>vx then fni(); bwb("vm",0) end
   local jva=zxl[etx+1]
   local kvs=ftx[udl+1]
   zxl[cdy]=kr(jva,kvs,12)
end
bf[(((64-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd=0
   if udl+1>vx or etx+1>rq or cdy>bh then fni(); bwb("vm",0) end
   local fk=not kr(zxl[cdy],ftx[udl+1],6)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
bf[(((15-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if etx>#qia or etx<1 then fni(); bwb("vm",0) end
   local qsi={}
   for isc=1,udl do
    local kd=yu(cvn.a)+1
    qsi[isc]=zxl[kd]
    cvn.a=cvn.a+1
   end
   local jd=yu(cvn.a)+1
   cvn.a=cvn.a+1
   local lv=zxl[jd]
   if type(lv)~=cre[12] then lv={lv} end
   for isc=1,#lv do qsi[#qsi+1]=lv[isc] end
   zxl[cdy]=mt(etx,qsi)
   qsi=nil; lv=nil
end
bf[(((53-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
   if etx+1>bh or udl+1>vx then fni(); bwb("vm",0) end
   local jva=zxl[etx+1]
   local kvs=ftx[udl+1]
   zxl[cdy]=kr(jva,kvs,7)
end
bf[(((26-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>bh or etx+1>bh then fni(); bwb("vm",0) end
   zxl[cdy]=kr(zxl[etx+1],zxl[udl+1],10)
end
bf[(((52-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd=0
   if etx+1>bh or udl+1>vx then fni(); bwb("vm",0) end
   local jva=zxl[etx+1]
   local kvs=ftx[udl+1]
   zxl[cdy]=kr(jva,kvs,2)
end
bf[(((43-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if etx+1>vx or udl+1>bh then fni(); bwb("vm",0) end
   local jva=ftx[etx+1]
   local kvs=zxl[udl+1]
   zxl[cdy]=kr(jva,kvs,10)
end
bf[(((41-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
   if etx+1>vx or udl+1>bh then fni(); bwb("vm",0) end
   local jva=ftx[etx+1]
   local kvs=zxl[udl+1]
   zxl[cdy]=kr(jva,kvs,7)
end
bf[(((5-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
   if udl+1>bh or etx+1>bh then fni(); bwb("vm",0) end
   wf(1,zxl,cdy,etx+1,udl+1)
end
bf[(((4-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd=0
end
bf[(((31-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bz=zxl[cdy]
   zxl[cdy]=nil
   ax=bz
   gn=154
   bz=nil
end
bf[(((10-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if etx+1>bh or cdy>hh then fni(); bwb("vm",0) end
   na(2,zxl,am,cdy,etx)
end
bf[(((59-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>vx or etx+1>rq or cdy>bh then fni(); bwb("vm",0) end
   local fk=not kr(ftx[udl+1],zxl[cdy],2)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
bf[(((32-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd=0
 if etx+1>rq then fni(); bwb("vm",0) end
 local ls,oj=du(1,tg,etx+1)
 cvn.a=oj
 cvn.j=ls
 io(etx+1)
end
bf[(((61-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
   if udl+1>vx or etx+1>rq or cdy>bh then fni(); bwb("vm",0) end
   local fk=not kr(ftx[udl+1],zxl[cdy],9)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
bf[(((20-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd=0
   if udl+1>bh or etx+1>bh then fni(); bwb("vm",0) end
   zxl[cdy]=kr(zxl[etx+1],zxl[udl+1],12)
end
bf[(((6-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>bh or etx+1>bh or cdy+1>bh then fni(); bwb("vm",0) end
   wf(2,zxl,cdy,etx+1,udl+1)
end
bf[(((13-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
   if udl<0 or etx+1>bh then fni(); bwb("vm",0) end
   local od=zxl[etx+1]
   local rb=nil if type(od)~=cre[13] then local dm=getmetatable(od) rb=dm and dm.__call if type(rb)~=cre[13] then fni(); bwb("vm",0) end end
   local qsi={}
   for isc=1,udl do
    if cvn.a>te then fni(); bwb("vm",0) end
    local kd=yu(cvn.a)+1
    qsi[isc]=zxl[kd]
    cvn.a=cvn.a+1
   end
   local jd=yu(cvn.a)+1
   cvn.a=cvn.a+1
   local lv=zxl[jd]
   if type(lv)~=cre[12] then lv={lv} end
   for isc=1,(lv.n or #lv) do qsi[#qsi+1]=lv[isc] end
   zxl[cdy]=od(tp(qsi,1,udl+(lv.n or #lv)))
   qsi=nil; lv=nil
end
bf[(((42-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>bh or etx+1>vx then fni(); bwb("vm",0) end
   zxl[cdy]=kr(ftx[etx+1],zxl[udl+1],9)
end
bf[(((11-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})

   if etx+1>vx then fni(); bwb("vm",0) end
   local pj=ftx[etx+1]
   local nr=etx
   if type(pj)~=cre[9] then fni(); bwb("vm",0) end
   local gd=(function(thd) local jn=1 for jxn=1,#thd do jn=bit32.band(jn+string.byte(thd,jxn)*jxn,4294967295) end return jn end)(pj)
   if gd~=250469 and nr==28 then fni(); bwb("vm",0) end if nr==56 and gd~=10420755 then fni(); bwb("vm",0) end if nr==30 and gd~=116538298 then fni(); bwb("vm",0) end if nr==98 and gd~=4662409 then fni(); bwb("vm",0) end if nr==88 and gd~=20743555 then fni(); bwb("vm",0) end if nr==105 and gd~=7729503 then fni(); bwb("vm",0) end if nr==173 and gd~=17486253 then fni(); bwb("vm",0) end if nr==185 and gd~=46720114 then fni(); bwb("vm",0) end if nr==184 and gd~=11268715 then fni(); bwb("vm",0) end if nr==206 and gd~=39712801 then fni(); bwb("vm",0) end if nr==110 and gd~=285536777 then fni(); bwb("vm",0) end if nr==230 and gd~=6330632 then fni(); bwb("vm",0) end if nr==213 and gd~=52767621 then fni(); bwb("vm",0) end if nr==237 and gd~=107000444 then fni(); bwb("vm",0) end if nr==266 and gd~=900133 then fni(); bwb("vm",0) end if nr==267 and gd~=900055 then fni(); bwb("vm",0) end if nr==268 and gd~=22503237 then fni(); bwb("vm",0) end if nr==269 and gd~=23717907 then fni(); bwb("vm",0) end if nr==287 and gd~=4651436 then fni(); bwb("vm",0) end if nr==277 and gd~=18683124 then fni(); bwb("vm",0) end
   if string.byte(pj,1)~=3 then for pqa=1,math.min(#pj,32) do if string.byte(pj,pqa)==3 and string.byte(pj,pqa+1)==0 and string.byte(pj,pqa+2)==0 and string.byte(pj,pqa+3)==0 then pj=string.sub(pj,pqa) break end end end
   local yo=am
   local uc=zm(pj,1) if uc==2 then fni(); bwb("vm",0) end if uc~=3 then fni(); bwb("vm",0) end
   local dv=zm(pj,2)
   local yd=zm(pj,3)
   local zj=zm(pj,4)
   local wb=0 local af={} local fi={}
   if uc==3 then wb=zm(pj,5) if wb<1 or wb>70 then fni(); bwb("vm",0) end for jxn=1,wb do local fd=zm(pj,5+jxn) if fd<1 or fd>70 or fi[fd] then fni(); bwb("vm",0) end af[fd]=true fi[fd]=true end else for jxn=1,70 do af[jxn]=true end end
   local qa={}
   local mw={}
   for jxn=1,zj do local kq=zm(pj,4+(uc==3 and 1+wb or 0)+jxn) if kq>=hh or mw[kq] then fni(); bwb("vm",0) end qa[jxn]=kq mw[kq]=true end
   local pi={}
   for jxn=1,dv do pi[jxn]=zm(pj,4+(uc==3 and 1+wb or 0)+zj+jxn) end
   local at={}
   for jxn=1,dv do local aw=pi[jxn] if aw<1 or aw>dv or at[aw] then fni(); bwb("vm",0) end at[aw]=true end
   local su=5+zj+dv+(uc==3 and 1+wb or 0)
   local xf=su+yd
   local fs=math.floor(#pj/4)
   if xf>fs+1 or #pj%4~=0 then fni(); bwb("vm",0) end
   local yz={}
   for jxn=1,yd do
    local pn=zm(pj,su+jxn-1)
    if pn<xf then fni(); bwb("vm",0) end
    if pn+4>fs then fni(); bwb("vm",0) end
    if jxn>1 then
     if pn<=yz[jxn-1] then fni(); bwb("vm",0) end
    end
    yz[jxn]=pn
   end
   local function pd()
    local function jo(...)
     eh()
    local pw={}
    local iu=setmetatable({}, {__index=function(pjp,quo) return pw[pi[quo]] end,__newindex=function(pjp,quo,jn) pw[pi[quo]]=jn end})
    local nw=bw(yo)
    iw(nw,qa,zj,...)
    for jxn=1,zj do if qa[jxn]==57 then xh(nw,tf[qa[jxn]+1],(function(yhs,ixf) yhs.n=ixf return yhs end)({...},select("#",...))) break end end
    local gw=1
    while gw<=yd do
     local cf=gw+1
     local nx=yz[gw]
     local ho=zm(pj,nx)
     if not af[ho] then bwb(); gix("inactive child opcode",0) end
     local tc=ei(ho)
     local fh=zm(pj,nx+1)
     local jr=zm(pj,nx+2)
     local dc=zm(pj,nx+3)
     local lt=zm(pj,nx+4)
     if not af[ho] then bwb(); gix("inactive child opcode",0) end
     if type(print)==cre[13] then print("TRACE_RUNTIME_CHILD "..tostring(nr).." "..tostring(gw).." "..tostring(ho).." "..tostring(fh).." "..tostring(jr).." "..tostring(dc).." "..tostring(lt)) end
     local ry=fs+1
     if gw<yd then ry=yz[gw+1] end
     local zf=nx+5
     if ho==jq[3] then zf=nx+5+jr*2 end
     if ho==jq[4] then zf=nx+5+jr*2 end
     if ho==jq[14] then zf=nx+5+lt end
     if ho==jq[30] then zf=nx+5+lt end
     if ho==jq[12] then zf=nx+5+bit32.band(lt,2147483647) end
     if ho==jq[15] or ho==jq[13] then zf=nx+6+lt end
     if ho==jq[16] then zf=nx+5+lt end
     if ho==jq[70] then zf=nx+5+((lt==3) and 1 or jr) end
     if dc+1<=dv and ho==jq[11] then zf=nx+5+lt end
     if bit32.band(lt,2147483648)~=0 and lt~=4294967295 and ho==jq[7] then zf=nx+5+bit32.band(lt,2147483647) end
     if ry~=zf then bwb(); gix("vm",0) end
     if ho==jq[1] then
      gf(iu,fh,jr)
     elseif ho==jq[2] then
      iu[fh+1]=iu[jr+1]
     elseif ho==jq[9] then
      iu[fh+1]=tt(nw,tf[qa[jr+1]+1])
     elseif ho==jq[10] then
      xh(nw,tf[qa[fh+1]+1],iu[jr+1])
     elseif ho==jq[3] then
      local jg={}
      for isc=1,jr do
       local rg=nx+5+(isc-1)*2
       local le=zm(pj,rg)
       local ll=zm(pj,rg+1)
       if ll+1>dv or le+1>dv then bwb(); gix("vm",0) end
       jg[iu[le+1]]=iu[ll+1]
      end
      iu[fh+1]=jg
     elseif ho==jq[4] then
      local jg={}
      for isc=1,jr do local le=zm(pj,nx+5+(isc-1)*2) local ll=zm(pj,nx+6+(isc-1)*2) jg[iu[le+1]]=iu[ll+1] end
      local lv=iu[dc+1] if type(lv)~=cre[12] then lv={} end for isc=1,#lv do jg[isc]=lv[isc] end
      iu[fh+1]=jg
     elseif ho==jq[5] then
      ty(iu,fh,jr,dc)
     elseif ho==jq[6] then
      kl(iu,fh,jr,dc)
     elseif ho==jq[7] and (lt==4294967295 or bit32.band(lt,2147483648)==0) then
      iu[fh+1]=iu[dc+1][tf[qa[jr+1]+1]]
     elseif ho==jq[8] then
      if type(print)==cre[13] then print("TRACE_FIELD_WRITE "..tostring(tf[qa[jr+1]+1]).." "..type(iu[dc+1])..":"..tostring(iu[dc+1])) end
      iu[fh+1][tf[qa[jr+1]+1]]=iu[dc+1]
     elseif ho==jq[70] then
      if dc<0 or jr>511 or jr<1 then bwb(); gix("vm",0) end
      local jb={}
      for isc=1,((lt==3) and 1 or jr) do
       local tu=zm(pj,nx+4+isc)
       if tu+1>vx then bwb(); gix("vm",0) end
       jb[isc]=ftx[tu+1]
      end
      local bv=lt
      if bv==3 then jb=sw(jb[1],jr) bv=2 end
      iu[fh+1]=zw(jb,dc,jr,bv,fh)
      if (type(iu[fh+1])~=cre[9] or #iu[fh+1]~=64) and bv==1 then bwb(); gix("vm",0) end
      jb=nil
     elseif ho==jq[14] then
      local lq=iu[jr+1]
      local sc=lq[tf[qa[dc+1]+1]]
      if type(sc)~=cre[13] then bwb(); gix("vm",0) end
      local au={lq}
      for isc=1,lt do
       local kd=zm(pj,nx+4+isc)
       if kd+1>dv then bwb(); gix("vm",0) end
       au[isc+1]=iu[kd+1]
      end
      iu[fh+1]=qz(sc,au)
     elseif ho==jq[12] then
      local uv=iu[jr+1]
      if type(uv)~=cre[13] then bwb(); gix("vm",0) end
      local au={}
      for isc=1,lt do
       local kd=zm(pj,nx+4+isc)
       if kd+1>dv then bwb(); gix("vm",0) end
       au[isc]=iu[kd+1]
      end
      iu[fh+1]=uv(tp(au))
     elseif ho==jq[13] then
      local uv=iu[jr+1] local au={}
      for isc=1,lt do local kd=zm(pj,nx+4+isc) au[isc]=iu[kd+1] end
      local lv=iu[zm(pj,nx+5+lt)+1] for isc=1,#lv do au[#au+1]=lv[isc] end
      iu[fh+1]=uv(tp(au))
     elseif ho==jq[15] then
      local au={} for isc=1,lt do local kd=zm(pj,nx+4+isc) au[isc]=iu[kd+1] end
      local lv=iu[zm(pj,nx+5+lt)+1] for isc=1,#lv do au[#au+1]=lv[isc] end
      iu[fh+1]=mt(jr,au)
     elseif ho==jq[16] then
      local fl={} for isc=1,lt do fl[isc]=iu[zm(pj,nx+4+isc)+1] end iu[fh+1]=fl
     elseif ho==jq[17] then
      local zx=iu[jr+1] local quo,jn=zx() iu[fh+1]={quo,jn}
     elseif ho==jq[30] then
      if jr>#qia or jr<1 then bwb(); gix("vm",0) end
      local au={}
      for isc=1,lt do
       local kd=zm(pj,nx+4+isc)
       if kd+1>dv then bwb(); gix("vm",0) end
       au[isc]=iu[kd+1]
      end
      iu[fh+1]=mt(jr,au)
     elseif ho==jq[11] then
      local ro=ftx[jr+1]
      if type(ro)~=cre[9] then bwb(); gix("vm",0) end
      local ii=jr
      local vb=(function(thd) local jn=1 for jxn=1,#thd do jn=bit32.band(jn+string.byte(thd,jxn)*jxn,4294967295) end return jn end)(ro)
      if vb~=250469 and ii==28 then bwb(); gix("vm",0) end if ii==56 and vb~=10420755 then bwb(); gix("vm",0) end if ii==30 and vb~=116538298 then bwb(); gix("vm",0) end if ii==98 and vb~=4662409 then bwb(); gix("vm",0) end if ii==88 and vb~=20743555 then bwb(); gix("vm",0) end if ii==105 and vb~=7729503 then bwb(); gix("vm",0) end if ii==173 and vb~=17486253 then bwb(); gix("vm",0) end if ii==185 and vb~=46720114 then bwb(); gix("vm",0) end if ii==184 and vb~=11268715 then bwb(); gix("vm",0) end if ii==206 and vb~=39712801 then bwb(); gix("vm",0) end if ii==110 and vb~=285536777 then bwb(); gix("vm",0) end if ii==230 and vb~=6330632 then bwb(); gix("vm",0) end if ii==213 and vb~=52767621 then bwb(); gix("vm",0) end if ii==237 and vb~=107000444 then bwb(); gix("vm",0) end if ii==266 and vb~=900133 then bwb(); gix("vm",0) end if ii==267 and vb~=900055 then bwb(); gix("vm",0) end if ii==268 and vb~=22503237 then bwb(); gix("vm",0) end if ii==269 and vb~=23717907 then bwb(); gix("vm",0) end if ii==287 and vb~=4651436 then bwb(); gix("vm",0) end if ii==277 and vb~=18683124 then bwb(); gix("vm",0) end
      if string.byte(ro,1)~=3 then for pqa=1,math.min(#ro,32) do if string.byte(ro,pqa)==3 and string.byte(ro,pqa+1)==0 and string.byte(ro,pqa+2)==0 and string.byte(ro,pqa+3)==0 then ro=string.sub(ro,pqa) break end end end
      local ov=nw
      local function fb(...)
        eh()
       local ay=bw(ov)
       local ht={}
       local lb={}
       local hv=setmetatable({}, {__index=function(pjp,quo) return lb[ht[quo]] end,__newindex=function(pjp,quo,jn) lb[ht[quo]]=jn end})
       local qn=zm(ro,1) if qn==2 then gix(); bqs("vm",0) end if qn~=3 then gix(); bqs("vm",0) end
       local op=zm(ro,2)
       local cb=zm(ro,3)
       local zu=zm(ro,4)
       local ft=0 local va={} local uj={}
       if qn==3 then ft=zm(ro,5) if ft<1 or ft>70 then gix(); bqs("vm",0) end for jxn=1,ft do local fd=zm(ro,5+jxn) if fd<1 or fd>70 or uj[fd] then gix(); bqs("vm",0) end va[fd]=true uj[fd]=true end else for jxn=1,70 do va[jxn]=true end end
       local sh={}
       local vk={}
       for jxn=1,zu do local kq=zm(ro,4+(qn==3 and 1+ft or 0)+jxn) if kq>=hh or vk[kq] then gix(); bqs("vm",0) end sh[jxn]=kq vk[kq]=true end
       iw(ay,sh,zu,...)
       ht={}
       for jxn=1,op do ht[jxn]=zm(ro,4+(qn==3 and 1+ft or 0)+zu+jxn) end
       local ju=5+zu+op+(qn==3 and 1+ft or 0)
       local xp=ju+cb
       local wa=math.floor(#ro/4)
       if xp>wa+1 or #ro%4~=0 then gix(); bqs("vm",0) end
       local tq={}
       for jxn=1,cb do
        local pn=zm(ro,ju+jxn-1)
        if pn+4>wa or pn<xp then gix(); bqs("vm",0) end
        if jxn>1 then
         if pn<=tq[jxn-1] then gix(); bqs("vm",0) end
        end
        tq[jxn]=pn
       end
       local tw=1
       while tw<=cb do
        local dz=tw+1
        local us=tq[tw]
        local vj=zm(ro,us)
       if not va[vj] then gix(); bqs("inactive nested opcode",0) end
       local dl=ei(vj)
        local sk=zm(ro,us+1)
        local qe=zm(ro,us+2)
        local pz=zm(ro,us+3)
        local ee=zm(ro,us+4)
        if not va[vj] then gix(); bqs("inactive nested opcode",0) end
        if type(print)==cre[13] then print("TRACE_RUNTIME_CHILD "..tostring(ii).." "..tostring(tw).." "..tostring(vj).." "..tostring(sk).." "..tostring(qe).." "..tostring(pz).." "..tostring(ee)) end
        local dg=wa+1
        if tw<cb then dg=tq[tw+1] end
        local cx=us+5
        if vj==jq[3] then cx=us+5+qe*2 end
        if vj==jq[4] then cx=us+5+qe*2 end
        if vj==jq[14] then cx=us+5+ee end
        if vj==jq[30] then cx=us+5+ee end
        if vj==jq[12] then cx=us+5+bit32.band(ee,2147483647) end
        if vj==jq[15] or vj==jq[13] then cx=us+6+ee end
        if vj==jq[16] then cx=us+5+ee end
        if vj==jq[70] then cx=us+5+((ee==3) and 1 or qe) end
        if pz+1<=op and vj==jq[11] then cx=us+5+ee end
        if bit32.band(ee,2147483648)~=0 and ee~=4294967295 and vj==jq[7] then cx=us+5+bit32.band(ee,2147483647) end
        if dg~=cx then gix(); bqs("vm",0) end
        if vj==jq[1] then
         hv[sk+1]=ftx[qe+1]
        elseif vj==jq[2] then
         hv[sk+1]=hv[qe+1]
        elseif vj==jq[9] then
         hv[sk+1]=tt(ay,tf[sh[qe+1]+1])
        elseif vj==jq[10] then
         xh(ay,tf[sh[sk+1]+1],hv[qe+1])
        elseif vj==jq[3] then
         local ug={}
         for isc=1,((ee==3) and 1 or qe) do
          local le=zm(ro,us+3+isc*2)
          local ll=zm(ro,us+4+isc*2)
          if ll+1>op or le+1>op then gix(); bqs("vm",0) end
          ug[hv[le+1]]=hv[ll+1]
         end
         if sk+1>op then gix(); bqs("vm",0) end
         hv[sk+1]=ug
        elseif vj==jq[4] then
         local ug={} for isc=1,qe do local le=zm(ro,us+5+(isc-1)*2) local ll=zm(ro,us+6+(isc-1)*2) ug[hv[le+1]]=hv[ll+1] end local lv=hv[pz+1] if type(lv)~=cre[12] then lv={} end for isc=1,#lv do ug[isc]=lv[isc] end hv[sk+1]=ug
        elseif vj==jq[5] then
         if pz+1>op or qe+1>op or sk+1>op then gix(); bqs("vm",0) end
         hv[sk+1]=hv[qe+1][hv[pz+1]]
        elseif vj==jq[6] then
         if pz+1>op or qe+1>op or sk+1>op then gix(); bqs("vm",0) end
         hv[sk+1][hv[qe+1]]=hv[pz+1]
        elseif vj==jq[7] and (ee==4294967295 or bit32.band(ee,2147483648)==0) then
         if pz+1>op or qe+1>hh or sk+1>op then gix(); bqs("vm",0) end
         hv[sk+1]=hv[pz+1][tf[sh[qe+1]+1]]
        elseif vj==jq[8] then
         if type(print)==cre[13] then print("TRACE_FIELD_WRITE "..tostring(tf[qe+1]).." "..type(hv[pz+1])..":"..tostring(hv[pz+1])) end
         if pz+1>op or qe+1>hh or sk+1>op then gix(); bqs("vm",0) end
         hv[sk+1][tf[sh[qe+1]+1]]=hv[pz+1]
        elseif vj==jq[70] then
         if pz<0 or qe>511 or qe<1 then gix(); bqs("vm",0) end
         local mm={}
         for isc=1,qe do
          local tu=zm(ro,us+4+isc)
          if tu+1>vx then gix(); bqs("vm",0) end
          mm[isc]=ftx[tu+1]
         end
         local dw=ee
         if dw==3 then mm=sw(mm[1],qe) dw=2 else dw=(dw~=0 and 1 or 0) end
         hv[sk+1]=zw(mm,pz,qe,dw,sk)
         if (type(hv[sk+1])~=cre[9] or #hv[sk+1]~=64) and dw~=0 then gix(); bqs("vm",0) end
         mm=nil
        elseif vj==jq[14] then
         if pz+1>hh or qe+1>op or sk+1>op then gix(); bqs("vm",0) end
         local jp=hv[qe+1]
         local vr=jp[tf[sh[pz+1]+1]]
         if type(vr)~=cre[13] then gix(); bqs("vm",0) end
         local sm={jp}
         for isc=1,ee do
          local kd=zm(ro,us+4+isc)
          if kd+1>op then gix(); bqs("vm",0) end
          sm[isc+1]=hv[kd+1]
         end
         hv[sk+1]=qz(vr,sm)
        elseif vj==jq[12] then
         local un=hv[qe+1]
         if type(un)~=cre[13] then gix(); bqs("vm",0) end
         local sm={}
         for isc=1,ee do
          local kd=zm(ro,us+4+isc)
          if kd+1>op then gix(); bqs("vm",0) end
          sm[isc]=hv[kd+1]
         end
         hv[sk+1]=un(tp(sm))
        elseif vj==jq[30] then
         if qe>#qia or qe<1 then gix(); bqs("vm",0) end
         local sm={}
         for isc=1,ee do
          local kd=zm(ro,us+4+isc)
          if kd+1>op then gix(); bqs("vm",0) end
          sm[isc]=hv[kd+1]
         end
         hv[sk+1]=mt(qe,sm)
        elseif vj==jq[18] then
         kt(hv,sk,pz,ee,1)
        elseif vj==jq[19] then
         kt(hv,sk,pz,ee,8)
        elseif vj==jq[20] then
         kt(hv,sk,pz,ee,2)
        elseif vj==jq[21] then
         kt(hv,sk,pz,ee,4)
        elseif vj==jq[28] then
         hv[sk+1]=hv[pz+1]%hv[ee+1]
        elseif vj==jq[22] then
         kt(hv,sk,pz,ee,3)
        elseif vj==jq[23] then
         kt(hv,sk,pz,ee,9)
        elseif vj==jq[24] then
         kt(hv,sk,pz,ee,5)
        elseif vj==jq[25] then
         kt(hv,sk,pz,ee,6)
        elseif vj==jq[26] then
         kt(hv,sk,pz,ee,7)
        elseif vj==jq[27] then
         kt(hv,sk,pz,ee,12)
        elseif vj==jq[29] then
         kt(hv,sk,pz,ee,10)
        elseif vj==jq[34] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],1)
        elseif vj==jq[46] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],1)
        elseif vj==jq[35] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],8)
        elseif vj==jq[47] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],8)
        elseif vj==jq[36] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],2)
        elseif vj==jq[48] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],2)
        elseif vj==jq[37] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],4)
        elseif vj==jq[49] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],4)
        elseif vj==jq[38] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],11)
        elseif vj==jq[50] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],11)
        elseif vj==jq[39] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],3)
        elseif vj==jq[51] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],3)
        elseif vj==jq[40] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],9)
        elseif vj==jq[52] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],9)
        elseif vj==jq[41] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],5)
        elseif vj==jq[53] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],5)
        elseif vj==jq[42] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],6)
        elseif vj==jq[54] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],6)
        elseif vj==jq[43] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],7)
        elseif vj==jq[55] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],7)
        elseif vj==jq[44] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],12)
        elseif vj==jq[56] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],12)
        elseif vj==jq[45] then
         hv[sk+1]=jh(ftx[qe+1],hv[pz+1],10)
        elseif vj==jq[57] then
         hv[sk+1]=jh(hv[qe+1],ftx[pz+1],10)
        elseif vj==jq[58] then
         if not jh(ftx[pz+1],hv[sk+1],3) then dz=yv(qe+1) end
        elseif vj==jq[64] then
         if not jh(hv[sk+1],ftx[pz+1],3) then dz=yv(qe+1) end
        elseif vj==jq[59] then
         if not jh(ftx[pz+1],hv[sk+1],9) then dz=yv(qe+1) end
        elseif vj==jq[65] then
         if not jh(hv[sk+1],ftx[pz+1],9) then dz=yv(qe+1) end
        elseif vj==jq[60] then
         if not jh(ftx[pz+1],hv[sk+1],5) then dz=yv(qe+1) end
        elseif vj==jq[66] then
         if not jh(hv[sk+1],ftx[pz+1],5) then dz=yv(qe+1) end
        elseif vj==jq[61] then
         if not jh(ftx[pz+1],hv[sk+1],6) then dz=yv(qe+1) end
        elseif vj==jq[67] then
         if not jh(hv[sk+1],ftx[pz+1],6) then dz=yv(qe+1) end
        elseif vj==jq[62] then
         if not jh(ftx[pz+1],hv[sk+1],7) then dz=yv(qe+1) end
        elseif vj==jq[68] then
         if not jh(hv[sk+1],ftx[pz+1],7) then dz=yv(qe+1) end
        elseif vj==jq[63] then
         if not jh(ftx[pz+1],hv[sk+1],12) then dz=yv(qe+1) end
        elseif vj==jq[69] then
         if not jh(hv[sk+1],ftx[pz+1],12) then dz=yv(qe+1) end
        elseif vj==jq[12] and bit32.band(ee,2147483648)~=0 then
         local un=hv[sk+1]
         if type(un)~=cre[13] then gix(); bqs("vm",0) end
         local sm={}
         for isc=1,bit32.band(ee,2147483647) do
          local kd=zm(ro,us+4+isc)
          if kd+1>op then gix(); bqs("vm",0) end
          sm[isc]=hv[kd+1]
         end
         return un(tp(sm))
        elseif vj==jq[7] and ee~=4294967295 and bit32.band(ee,2147483648)~=0 then
         local un=hv[pz+1][tf[sh[qe+1]+1]]
         if type(un)~=cre[13] then gix(); bqs("vm",0) end
         local sm={}
         for isc=1,bit32.band(ee,2147483647) do
          local kd=zm(ro,us+4+isc)
          if kd+1>op then gix(); bqs("vm",0) end
          sm[isc]=hv[kd+1]
         end
         hv[sk+1]=un(tp(sm))
        elseif vj==jq[13] then
         local un=hv[qe+1] local sm={}
         for isc=1,ee do local kd=zm(ro,us+4+isc) sm[isc]=hv[kd+1] end
         local lv=hv[zm(ro,us+5+ee)+1] for isc=1,#lv do sm[#sm+1]=lv[isc] end
         hv[sk+1]=un(tp(sm))
        elseif vj==jq[16] then
         local fl={} for isc=1,ee do fl[isc]=hv[zm(ro,us+4+isc)+1] end hv[sk+1]=fl
        elseif vj==jq[17] then
         local zx=hv[qe+1] local quo,jn=zx() hv[sk+1]={quo,jn}
        elseif vj==jq[32] then
         if qe+1>cb or qe+1<1 then gix(); bqs("vm",0) end
         dz=yv(qe+1)
        elseif vj==jq[33] then
         if pz+1>op or qe+1>cb or qe+1<1 then gix(); bqs("vm",0) end
         if not hv[pz+1] then dz=yv(qe+1) end
        elseif vj==jq[31] then
         return pb(hv,sk)
        else gix(); bqs("unsupported nested child opcode",0) end
        tw=dz
       end
       return nil
      end
      iu[fh+1]=fb
      if dc+1<=dv then
       local au={}
       for isc=1,lt do
        local kd=zm(pj,nx+4+isc)
        if kd+1>dv then gix(); bqs("vm",0) end
        au[isc]=iu[kd+1]
       end
       iu[dc+1]=fb(tp(au))
      end
     elseif ho==jq[18] then
      kt(iu,fh,dc,lt,1)
     elseif ho==jq[19] then
      kt(iu,fh,dc,lt,8)
     elseif ho==jq[20] then
      kt(iu,fh,dc,lt,2)
     elseif ho==jq[21] then
      kt(iu,fh,dc,lt,4)
     elseif ho==jq[28] then
      iu[fh+1]=iu[dc+1]%iu[lt+1]
     elseif ho==jq[22] then
      kt(iu,fh,dc,lt,3)
     elseif ho==jq[23] then
      kt(iu,fh,dc,lt,9)
     elseif ho==jq[24] then
      kt(iu,fh,dc,lt,5)
     elseif ho==jq[25] then
      kt(iu,fh,dc,lt,6)
     elseif ho==jq[26] then
      kt(iu,fh,dc,lt,7)
     elseif ho==jq[27] then
      kt(iu,fh,dc,lt,12)
     elseif ho==jq[29] then
      kt(iu,fh,dc,lt,10)
     elseif ho==jq[34] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],1)
     elseif ho==jq[46] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],1)
     elseif ho==jq[35] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],8)
     elseif ho==jq[47] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],8)
     elseif ho==jq[36] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],2)
     elseif ho==jq[48] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],2)
     elseif ho==jq[37] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],4)
     elseif ho==jq[49] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],4)
     elseif ho==jq[38] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],11)
     elseif ho==jq[50] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],11)
     elseif ho==jq[39] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],3)
     elseif ho==jq[51] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],3)
     elseif ho==jq[40] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],9)
     elseif ho==jq[52] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],9)
     elseif ho==jq[41] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],5)
     elseif ho==jq[53] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],5)
     elseif ho==jq[42] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],6)
     elseif ho==jq[54] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],6)
     elseif ho==jq[43] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],7)
     elseif ho==jq[55] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],7)
     elseif ho==jq[44] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],12)
     elseif ho==jq[56] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],12)
     elseif ho==jq[45] then
      iu[fh+1]=jh(ftx[jr+1],iu[dc+1],10)
     elseif ho==jq[57] then
      iu[fh+1]=jh(iu[jr+1],ftx[dc+1],10)
     elseif ho==jq[58] then
      if not jh(ftx[dc+1],iu[fh+1],3) then cf=yv(jr+1) end
     elseif ho==jq[64] then
      if not jh(iu[fh+1],ftx[dc+1],3) then cf=yv(jr+1) end
     elseif ho==jq[59] then
      if not jh(ftx[dc+1],iu[fh+1],9) then cf=yv(jr+1) end
     elseif ho==jq[65] then
      if not jh(iu[fh+1],ftx[dc+1],9) then cf=yv(jr+1) end
     elseif ho==jq[60] then
      if not jh(ftx[dc+1],iu[fh+1],5) then cf=yv(jr+1) end
     elseif ho==jq[66] then
      if not jh(iu[fh+1],ftx[dc+1],5) then cf=yv(jr+1) end
     elseif ho==jq[61] then
      if not jh(ftx[dc+1],iu[fh+1],6) then cf=yv(jr+1) end
     elseif ho==jq[67] then
      if not jh(iu[fh+1],ftx[dc+1],6) then cf=yv(jr+1) end
     elseif ho==jq[62] then
      if not jh(ftx[dc+1],iu[fh+1],7) then cf=yv(jr+1) end
     elseif ho==jq[68] then
      if not jh(iu[fh+1],ftx[dc+1],7) then cf=yv(jr+1) end
     elseif ho==jq[63] then
      if not jh(ftx[dc+1],iu[fh+1],12) then cf=yv(jr+1) end
     elseif ho==jq[69] then
      if not jh(iu[fh+1],ftx[dc+1],12) then cf=yv(jr+1) end
     elseif ho==jq[12] and bit32.band(lt,2147483648)~=0 then
      local uv=iu[fh+1]
      if type(uv)~=cre[13] then gix(); bqs("vm",0) end
      local au={}
      for isc=1,bit32.band(lt,2147483647) do
       local kd=zm(pj,nx+4+isc)
       if kd+1>dv then gix(); bqs("vm",0) end
       au[isc]=iu[kd+1]
      end
      return uv(tp(au))
     elseif ho==jq[7] and lt~=4294967295 and bit32.band(lt,2147483648)~=0 then
      local uv=iu[dc+1][tf[qa[jr+1]+1]]
      if type(uv)~=cre[13] then gix(); bqs("vm",0) end
      local au={}
      for isc=1,bit32.band(lt,2147483647) do
       local kd=zm(pj,nx+4+isc)
       if kd+1>dv then gix(); bqs("vm",0) end
       au[isc]=iu[kd+1]
      end
      iu[fh+1]=uv(tp(au))
     elseif ho==jq[32] then
      cf=yv(jr+1)
     elseif ho==jq[33] then
      if not iu[dc+1] then cf=yv(jr+1) end
     elseif ho==jq[31] then
      return pb(iu,fh)
     else gix(); bqs("unsupported child opcode",0) end
     gw=cf
    end
    return nil
   end
   return jo
   end
   local jo=pd()
   zxl[cdy]=jo
end
bf[(((2-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if etx+1>bh then gix(); bqs("vm",0) end
   zxl[cdy]=zxl[etx+1]
end
bf[(((33-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
 if udl+1>bh then gix(); bqs("vm",0) end
 if etx+1>rq then gix(); bqs("vm",0) end
 local ls,oj=du(2,tg,etx+1,zxl[udl+1])
 if ls then
  cvn.a=oj
  cvn.j=true
  io(etx+1)
 end
end
bf[(((12-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd=0
   if etx+1>bh then gix(); bqs("vm",0) end
   local od=zxl[etx+1]
   local rb=nil if type(od)~=cre[13] then local dm=getmetatable(od) rb=dm and dm.__call if type(rb)~=cre[13] then gix(); bqs("vm",0) end end
   local qsi={}
   for isc=1,udl do
    if cvn.a>te then gix(); bqs("vm",0) end
    local kd=yu(cvn.a)+1
    if kd>bh or kd<1 then gix(); bqs("vm",0) end
    qsi[isc]=zxl[kd]
    cvn.a=cvn.a+1
   end
   if rb then for isc=#qsi,1,-1 do qsi[isc+1]=qsi[isc] end qsi[1]=od od=rb end
   zxl[cdy]=od(tp(qsi,1,udl))
   qsi=nil
end
bf[(((51-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if etx+1>bh or udl+1>vx then gix(); bqs("vm",0) end
   local jva=zxl[etx+1]
   local kvs=ftx[udl+1]
   zxl[cdy]=kr(jva,kvs,6)
end
bf[(((54-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>vx or etx+1>bh then gix(); bqs("vm",0) end
   zxl[cdy]=kr(zxl[etx+1],ftx[udl+1],9)
end
bf[(((66-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>vx or etx+1>rq or cdy>bh then gix(); bqs("vm",0) end
   if not kr(zxl[cdy],ftx[udl+1],7) then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
bf[(((9-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
   if etx+1>hh then gix(); bqs("vm",0) end
   na(1,zxl,am,cdy,etx+1)
end
bf[(((49-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
   if etx+1>bh or udl+1>vx then gix(); bqs("vm",0) end
   local jva=zxl[etx+1]
   local kvs=ftx[udl+1]
   zxl[cdy]=kr(jva,kvs,1)
end
bf[(((39-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if etx+1>vx or udl+1>bh then gix(); bqs("vm",0) end
   local jva=ftx[etx+1]
   local kvs=zxl[udl+1]
   zxl[cdy]=kr(jva,kvs,6)
end
bf[(((47-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if etx+1>bh or udl+1>vx then gix(); bqs("vm",0) end
   local jva=zxl[etx+1]
   local kvs=ftx[udl+1]
   zxl[cdy]=kr(jva,kvs,4)
end
bf[(((3-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local ze={}
   for isc=1,etx do
    if cvn.a+1>te then gix(); bqs("vm",0) end
    local le=yu(cvn.a)+1
    cvn.a=cvn.a+1
    local ll=yu(cvn.a)+1
    cvn.a=cvn.a+1
    if ll>bh or ll<1 or le>bh or le<1 then gix(); bqs("vm",0) end
    ze[zxl[le]]=zxl[ll]
   end
   zxl[cdy]=ze
   ze=nil
end
bf[(((67-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>vx or etx+1>rq or cdy>bh then gix(); bqs("vm",0) end
   local fk=not kr(zxl[cdy],ftx[udl+1],9)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
bf[(((62-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>vx or etx+1>rq or cdy>bh then gix(); bqs("vm",0) end
   if not kr(ftx[udl+1],zxl[cdy],10) then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
bf[(((35-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if etx+1>vx or udl+1>bh then gix(); bqs("vm",0) end
   local jva=ftx[etx+1]
   local kvs=zxl[udl+1]
   zxl[cdy]=kr(jva,kvs,4)
end
bf[(((17-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
   local zx=zxl[etx]
   if type(zx)~=cre[13] then zx=zxl[etx+1] end
   if type(zx)~=cre[13] then gix(); bqs("vm",0) end
   local quo,jn=zx()
   zxl[cdy]={quo,jn}
end
bf[(((16-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd=0
   local fl={}
   for isc=1,etx do
    local ll=yu(cvn.a)+1
    fl[isc]=zxl[ll]
    cvn.a=cvn.a+1
   end
   zxl[cdy]=fl
fl=nil
end
bf[(((70-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl<0 or etx>511 or etx<1 then gix(); bqs("vm",0) end
   local ir={}
   local cq=bit32.band(udl,1073741824)~=0 and (bit32.band(udl,2147483648)~=0 and 3 or 2) or (bit32.band(udl,2147483648)~=0 and 1 or 0)
   local sj=(cq==3) and 1 or etx
   for isc=1,sj do
    if cvn.a>te then gix(); bqs("vm",0) end
    local tu=yu(cvn.a)+1
    cvn.a=cvn.a+1
    if tu>vx or tu<1 then gix(); bqs("vm",0) end
    ir[isc]=ftx[tu]
   end
   udl=bit32.band(udl,1073741823)
   if cq==3 then ir=sw(ir[1],etx) cq=2 end
   zxl[cdy]=zw(ir,udl,etx,cq,cdy)
   ir=nil
end
bf[(((22-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>bh or etx+1>bh then gix(); bqs("vm",0) end
   zxl[cdy]=kr(zxl[etx+1],zxl[udl+1],6)
end
bf[(((60-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd=0
   if udl+1>vx or etx+1>rq or cdy>bh then gix(); bqs("vm",0) end
   local fk=not kr(ftx[udl+1],zxl[cdy],7)
   if fk then cvn.j=true; cvn.a=tg[etx+1]+1; io(etx+1) end
end
bf[(((24-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd=0
   if udl+1>bh or etx+1>bh then gix(); bqs("vm",0) end
   zxl[cdy]=kr(zxl[etx+1],zxl[udl+1],7)
end
bf[(((28-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd=0
end
bf[(((36-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd=0
   if etx+1>vx or udl+1>bh then gix(); bqs("vm",0) end
   local jva=ftx[etx+1]
   local kvs=zxl[udl+1]
   zxl[cdy]=kr(jva,kvs,12)
end
bf[(((29-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd={}
   if udl+1>bh or etx+1>bh then gix(); bqs("vm",0) end
   zxl[cdy]=kr(zxl[etx+1],zxl[udl+1],11)
end
bf[(((18-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   if udl+1>bh or etx+1>bh then gix(); bqs("vm",0) end
   zxl[cdy]=kr(zxl[etx+1],zxl[udl+1],5)
end
bf[(((8-1)*17+57)%70)+1]=function()
 local zxl=setmetatable({},{__index=function(pjp,quo) return nes[lr[quo]] end,__newindex=function(pjp,quo,jn) nes[lr[quo]]=jn end})
   local bd=0
   if udl+1>bh or etx+1>hh or cdy+1>bh then gix(); bqs("vm",0) end
   wf(4,zxl,cdy,etx+1,udl+1)
end
function js(sb)
 local uq=bf[(((sb-1)*17+57)%70)+1]
 if uq==nil then bwb(); gix("vm",0) end
 return uq()
end
function bu(se)
 if hl.v==0 then fni(); bwb("VM dispatch continuation failed",0) end
 if type(se)~=cre[12] then fni(); bwb("vm",0) end
 for jxn=1,70 do
  if type(se[jxn])~=cre[13] then fni(); bwb("vm",0) end
 end
end
local yb=0
local xd=false
local nt={{1,22,23},{1,26,28},{1,32,33,34},{1,15,16},{1,9,25,26},{1,28},{1,13,17},{1,13},{1,31,32},{1,28,30},{1,30},{1,17,21},{1,21},{1,19,20},{1,13},{1,28,29},{1,23,24},{1,14,15},{1,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49},{1,26},{1,2,3,4,5,6,7,8,10,11,50,51},{1},{1,26,27},{1,11,13},{1},{1,17},{1,18,19},{1,17},{1,11,12}}
local np={{{},{},{},{},{},{},{},{},{},{},{},{},{1,21},{},{},{},{1,23,24},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{},{},{},{1,28},{},{},{},{},{},{},{},{},{},{1,28,29},{},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{},{},{},{},{},{},{},{},{1,30},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{},{},{},{},{},{},{},{},{},{},{},{},{1,13},{},{},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{1,26},{},{},{1,26,27},{},{},{},{},{},{}},{{},{},{},{},{},{},{},{},{},{1,28,30},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{1,18,19},{1,17},{}},{{},{},{},{},{},{},{1,13,17},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{1,32,33,34},{},{},{},{},{},{},{},{1,30},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{},{},{},{},{},{},{1,31,32},{},{},{},{},{},{},{},{},{},{},{},{},{1},{},{},{},{},{},{},{}},{{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{1,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49},{},{},{},{},{},{},{},{},{},{}},{{1,22,23},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{1},{},{},{},{}},{{},{},{},{},{1,9,25,26},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{1,17},{},{},{}},{{},{},{},{},{},{},{1,13,17},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{},{},{},{},{},{},{},{1,28,30},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{},{},{},{},{},{},{},{},{},{},{1,21},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{},{1,15,16},{},{},{},{},{},{},{},{},{},{},{1,13},{},{},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{1,26,28},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{1,11,13},{},{},{},{},{1,11,12}},{{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{1,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49},{},{},{},{},{},{},{},{},{},{}},{{},{1,26,28},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{},{},{},{},{},{1,13},{},{},{},{},{},{},{},{},{},{1,14,15},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{},{},{1,9,25,26},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{},{},{},{},{},{},{},{},{},{1,17,21},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{},{},{},{},{},{},{},{},{},{},{},{1,19,20},{},{},{},{},{},{},{},{},{},{},{},{1,17},{},{},{}},{{},{},{},{},{},{},{},{},{},{},{},{1,17,21},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}},{{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{1,11,13},{},{},{},{},{}}}
function yl(wgr,rf)
 local eb=hx[rf]
 local tj=up[rf]
 local ix={}
 local ic=0
 for vor=1,4 do
  local ny=zo[vor]+1
  local ye=eb[ny]
  local mo=tj[ye]
  ix[ny]=bit32.band(bit32.rshift(wgr,ic),2^mo-1)
  ic=ic+mo
 end
 local iq=0
 ic=0
 for vor=1,4 do
  local ye=eb[vor]
  local mo=tj[ye]
  iq=bit32.bor(iq,bit32.lshift(ix[vor],ic))
  ic=ic+mo
 end
 return iq
end
function tv()
 local it=cvn.h
 if it~=cvn.c then
  local fu=qm[it+1]
  local kx=np[cvn.d]
  local xq=(kx and kx[cvn.b]) or nt[cvn.b]
  for jxn=1,#xq do
   local rj=xq[jxn]
   if it==1 then
    fu[lr[rj]]=nes[rj]
   else
    fu[rj]=nes[lr[rj]]
   end
  end
  nes=fu
  cvn.c=it
 end
 qtm=cvn.c
 cvn.i=(qtm==1)
 cvn.k=bit32.band(
  bit32.bxor(cvn.l,(cvn.a-2)*73244475),
  4294967295
 )
 return 169
end
function zy()
 ec()
 if cvn.a<1 or cvn.a>te then bwb(); gix("vm",0) end
 cvn.b=yg[xs]
 if not cvn.b or cvn.b<1 or cvn.b>rq then bwb(); gix("vm",0) end
 if cvn.b~=yb then
  bu(qi)
  bu(bf)
  if type(ac[cvn.b])~=cre[10]
     or ac[cvn.b]<0
     or ac[cvn.b]>=70 then
   bwb(); gix("vm",0)
  end
  yb=cvn.b
  xd=true
 end
 local it=0
 if cvn.f then
  it=bit32.band(cvn.b+146,1)
 end
 cvn.h=it
 local mz=yi[cvn.a]+1
 des=yu(cvn.a)
 cvn.l=(cvn.a>1 and yu(cvn.a-1) or 0)
 cvn.a=cvn.a+1
 return 176
end
function cvn.decode()
 local hz={}
 local rf=yi[cvn.a-1] or 0
 local eb=hx[rf+1]
 local tj=up[rf+1]
 local fa=ob[rf+1]
 if cvn.i then
  for jxn=4,1,-1 do
   local ic=0 for isc=1,jxn-1 do ic=ic+tj[isc] end
   local mo=tj[jxn]
   hz[eb[jxn]]=bit32.band(bit32.rshift(des,ic),2^mo-1)
  end
  else
  for jxn=1,4 do
   local ic=0 for isc=1,jxn-1 do ic=ic+tj[isc] end
   local mo=tj[jxn]
   hz[eb[jxn]]=bit32.band(bit32.rshift(des,ic),2^mo-1)
  end
 end
 local xe=ji[rf+1]
 local function nzv(cdy,ppx)
  local vex,aow,uph,rqp=0,1,ppx,cdy
  while rqp>0 do
   local hfs=math.floor(uph/rqp)
   vex,aow=aow,vex-hfs*aow
   uph,rqp=rqp,uph-hfs*rqp
  end
  return vex%ppx
 end
 local xv=cvn.k
 if mg==1 then
  local gn=bit32.bxor(cvn.l,zb,
   (cvn.a)*0x85EBCA6B)
  for ye=0,3 do
   local mo=xe[ye+1]
   local ym=2^mo
   local wu=bit32.bxor(gn,(ye+1)*0x27D4EB2D)
   local ex=bit32.band(bit32.bor(wu,1),ym-1)
   if ex==1 then ex=bit32.band(3,ym-1) end
   local pn=bit32.band(bit32.rshift(wu,8),ym-1)
   local hu=hz[ye+1]
   local jn=(hu-pn)*nzv(ex,ym)%ym
   if ye==0 then hz[1]=jn+1 else hz[ye+1]=jn end
  end
  local ce=hp[cvn.a-1]
  hz[1]=(((hz[1]-1-ce[2])*
   nzv(ce[1],70))%
   70)+1
  for jxn=1,3 do
   local xn=jxn+1
   local ym=2^xe[xn]
   local ylq=gz[cvn.a-1][jxn]
    hz[jxn+1]=((hz[jxn+1]-ylq[2])*
    nzv(ylq[1],ym))%ym
  end
 else
   bjv=hz[1]
   local nq=xv%70
  local ws={
   bit32.band(bit32.rshift(xv,8),31),
   bit32.band(bit32.rshift(xv,16),31),
   bit32.band(bit32.rshift(xv,24),31)
  }
  for jxn=1,3 do
   local xn=jxn+1
   local ym=2^xe[xn]
   local ylq=gz[cvn.a-1][jxn]
   hz[jxn+1]=((hz[jxn+1]-ws[jxn]-ylq[2])*
    nzv(ylq[1],ym))%ym
  end
  bjv=((bjv-1-nq)%70)+1
  local ce=hp[cvn.a-1]
  bjv=(((bjv-1-ce[2])*
   nzv(ce[1],70))%
   70)+1
 end
 bjv=th[bjv]
 bjv=((bjv-1+ac[cvn.b])%70)+1

 cdy=hz[2]+1
 etx=hz[3]
 udl=hz[4]
 if not qr then if type(print)==cre[13] then print("TRACE_PAYLOAD_SHA256 62213a67be466cfd9554330e59b5fe10b4fa81915aabea5e99a080c1c211d382") end qr=true end
 if type(print)==cre[13] then print("TRACE_RUNTIME "..tostring(cvn.a-1).." "..tostring(cvn.b-1).." "..tostring(bjv).." "..tostring(cdy-1).." "..tostring(etx).." "..tostring(udl)) end

 return 163
end
function mc()
 if xd~=true or yb~=cvn.b then gix(); bqs("dispatch validation prerequisite failed",0) end
 if cdy<1 or cdy>bh then gix(); bqs("vm",0) end
 cvn.d=cvn.b
 local vn=(qtm==0 and qi or bf)
local sx=(qtm==0 and lj[bjv] or ef[bjv])
if type(vn[sx])~=cre[13] then gix(); bqs("vm",0) end
 if qtm==0 then ea(bjv) else js(bjv) end
 if gn==154 then return 154 end
 return 184
end
function zr()
 if not cvn.j and cvn.a-1>=xm[cvn.b] then
  local cm=ag[cvn.b]
  if cm<0 then gn=154
  else cvn.e=cm+1 end
 end
 cvn.j=false
 if gn==154 then return 154 end
 return 151
end
function ggt()
 if cvn.e>0 then
 cvn.a=tg[cvn.e]+1
 io(cvn.e)
 cvn.e=0
 end
 des=0 bjv=0 cdy=0 etx=0 udl=0
 if gn~=154 then return 158 end
 return 154
end
function yqm()
repeat
 if kw[gn]==4 then
   gn=zy()
   elseif kw[gn]==6 then
    gn=tv()
   elseif kw[gn]==3 then
    gn=cvn.decode()
   elseif kw[gn]==1 then
   gn=mc()
   elseif kw[gn]==2 then
   gn=zr()
   elseif kw[gn]==5 then
   gn=ggt()
 else bwb(); gix("vm",0) end
until gn==154
if bs~=true then bwb(); gix("vm",0) end
if ue<1 then bwb(); gix("vm",0) end
return ax
end
return yqm()
end
local tcf=coroutine.create(gfo)
local qez
local itc=type(task)==cre[12] and type(task.wait)==cre[13] and task.wait or function(dn) end
local tvs=100*16384
if tvs>67108864 then tvs=67108864 elseif tvs<1000000 then tvs=1000000 end
 while true do
  if tvs<=0 then bwb(); gix("vm",0) end
  tvs=tvs-1
  local boy=coroutine.status(tcf)
  if boy==string.char(100,101,97,100) then break end
  if boy~=string.char(115,117,115,112,101,110,100,101,100) then bwb(); gix("vm",0) end
  local gsy,jn=coroutine.resume(tcf)
  if not gsy then
   __VM2_DEBUG_EMIT("worker-error",tostring(jn))
   bwb(); gix("VM2_DEBUG_FAILURE: "..tostring(jn),0)
  end
  boy=coroutine.status(tcf)
  if boy==string.char(100,101,97,100) then
   qez=jn
  elseif boy~=string.char(115,117,115,112,101,110,100,101,100) then
   bwb(); gix("VM yielded in an invalid scheduler state",0)
  elseif jn~=nil and (type(jn)~=cre[10] or jn~=jn or jn<0) then
   bwb(); gix("VM yielded an invalid wait duration",0)
  elseif jn~=nil and jn>0 then
   itc(jn)
 end
end
return qez
