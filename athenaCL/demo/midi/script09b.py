# Grammar States as Pitch Values

from athenaCL.libATH import athenaObj
ath = athenaObj.Interpreter()

ath.cmd('emo m')
 
cmd = [        

'tmo lg',


'tin a 32',

# four state deterministic applied to pulse multiplier
'tie r pt,(c,8), (gt,a{1}b{2}c{4}d{8}@a{ab}b{cd}c{aadd}d{bc}@ac,8,oc),(c,1)',

'tie o c,-2',

# four state deterministic applied to transposition with different start string
'tie f gt,a{0}b{7}c{8}d{2}@a{ab}b{cd}c{aadd}d{bc}@ad,6,oc',

# four state deterministic applied to amplitude with different start string

'tie a gt,a{.25}b{.5}c{.75}d{1}@a{ab}b{cd}c{aadd}d{bc}@bbc,6,oc',

]

for line in cmd:
    ath.cmd(line)

ath.cmd('eln') 
ath.cmd('elh') 



