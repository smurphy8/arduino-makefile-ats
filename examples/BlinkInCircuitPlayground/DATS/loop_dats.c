/*
**
** The C code is generated by [ATS/Postiats-0-3-11]
** The starting compilation time is: 2018-10-24: 22h: 8m
**
*/

/*
** include runtime header files
*/
#ifndef _ATS_CCOMP_HEADER_NONE_
#include "pats_ccomp_config.h"
#include "pats_ccomp_basics.h"
#include "pats_ccomp_typedefs.h"
#include "pats_ccomp_instrset.h"
#include "pats_ccomp_memalloc.h"
#ifndef _ATS_CCOMP_EXCEPTION_NONE_
#include "pats_ccomp_memalloca.h"
#include "pats_ccomp_exception.h"
#endif // end of [_ATS_CCOMP_EXCEPTION_NONE_]
#endif /* _ATS_CCOMP_HEADER_NONE_ */


/*
** include prelude cats files
*/
#ifndef _ATS_CCOMP_PRELUDE_NONE_
//
#include "prelude/CATS/basics.cats"
#include "prelude/CATS/integer.cats"
#include "prelude/CATS/pointer.cats"
#include "prelude/CATS/integer_long.cats"
#include "prelude/CATS/integer_size.cats"
#include "prelude/CATS/integer_short.cats"
#include "prelude/CATS/bool.cats"
#include "prelude/CATS/char.cats"
#include "prelude/CATS/float.cats"
#include "prelude/CATS/integer_ptr.cats"
#include "prelude/CATS/integer_fixed.cats"
#include "prelude/CATS/memory.cats"
#include "prelude/CATS/string.cats"
#include "prelude/CATS/strptr.cats"
//
#include "prelude/CATS/fprintf.cats"
//
#include "prelude/CATS/filebas.cats"
//
#include "prelude/CATS/list.cats"
#include "prelude/CATS/option.cats"
#include "prelude/CATS/array.cats"
#include "prelude/CATS/arrayptr.cats"
#include "prelude/CATS/arrayref.cats"
#include "prelude/CATS/matrix.cats"
#include "prelude/CATS/matrixptr.cats"
//
#endif /* _ATS_CCOMP_PRELUDE_NONE_ */
/*
** for user-supplied prelude
*/
#ifdef _ATS_CCOMP_PRELUDE_USER_
//
#include _ATS_CCOMP_PRELUDE_USER_
//
#endif /* _ATS_CCOMP_PRELUDE_USER_ */
/*
** for user2-supplied prelude
*/
#ifdef _ATS_CCOMP_PRELUDE_USER2_
//
#include _ATS_CCOMP_PRELUDE_USER2_
//
#endif /* _ATS_CCOMP_PRELUDE_USER2_ */

/*
staload-prologues(beg)
*/
/*
staload-prologues(end)
*/
/*
typedefs-for-tyrecs-and-tysums(beg)
*/
/*
typedefs-for-tyrecs-and-tysums(end)
*/
/*
dynconlst-declaration(beg)
*/
/*
dynconlst-declaration(end)
*/
/*
dyncstlst-declaration(beg)
*/
ATSdyncst_extfun(port_on_in_c, (), atsvoid_t0ype) ;
ATSdyncst_extfun(delay_in_c, (atstkind_t0ype(atstype_int)), atsvoid_t0ype) ;
ATSdyncst_extfun(port_off_in_c, (), atsvoid_t0ype) ;
/*
dyncstlst-declaration(end)
*/
/*
dynvalist-implementation(beg)
*/
/*
dynvalist-implementation(end)
*/
/*
exnconlst-declaration(beg)
*/
#ifndef _ATS_CCOMP_EXCEPTION_NONE_
ATSextern()
atsvoid_t0ype
the_atsexncon_initize
(
  atstype_exnconptr d2c, atstype_string exnmsg
) ;
#endif // end of [_ATS_CCOMP_EXCEPTION_NONE_]
/*
exnconlst-declaration(end)
*/
/*
extypelst-declaration(beg)
*/
/*
extypelst-declaration(end)
*/
/*
assumelst-declaration(beg)
*/
#ifndef _ATS_CCOMP_ASSUME_CHECK_NONE_
#endif // #ifndef(_ATS_CCOMP_ASSUME_CHECK_NONE_)
/*
assumelst-declaration(end)
*/
#if(0)
ATSextern()
atsvoid_t0ype
_057_home_057_scott_057_programs_057_ats_057_arduino_055_makefile_055_ats_057_examples_057_BlinkInCircuitPlayground_057_SATS_057_loop_056_sats__atsLoop(atstkind_t0ype(atstype_int)) ;
#endif // end of [QUALIFIED]

ATSstatic()
atsvoid_t0ype
go_1(atstkind_t0ype(atstype_int)) ;

/*
/home/scott/programs/ats/arduino-makefile-ats/examples/BlinkInCircuitPlayground/DATS/loop.dats: 71(line=6, offs=8) -- 251(line=15, offs=2)
*/
/*
local: 
global: atsLoop$0$0(level=0)
local: 
global: 
*/
ATSextern()
atsvoid_t0ype
_057_home_057_scott_057_programs_057_ats_057_arduino_055_makefile_055_ats_057_examples_057_BlinkInCircuitPlayground_057_SATS_057_loop_056_sats__atsLoop(atstkind_t0ype(atstype_int) arg0)
{
/* tmpvardeclst(beg) */
// ATStmpdec_void(tmpret0) ;
/* tmpvardeclst(end) */
ATSfunbody_beg()
/*
emit_instr: loc0 = /home/scott/programs/ats/arduino-makefile-ats/examples/BlinkInCircuitPlayground/DATS/loop.dats: 64(line=6, offs=1) -- 251(line=15, offs=2)
*/
ATSINSflab(__patsflab_atsLoop):
/*
emit_instr: loc0 = /home/scott/programs/ats/arduino-makefile-ats/examples/BlinkInCircuitPlayground/DATS/loop.dats: 81(line=6, offs=18) -- 251(line=15, offs=2)
*/
/*
letpush(beg)
*/
/*
letpush(end)
*/

/*
emit_instr: loc0 = /home/scott/programs/ats/arduino-makefile-ats/examples/BlinkInCircuitPlayground/DATS/loop.dats: 244(line=14, offs=12) -- 249(line=14, offs=17)
*/
ATSINSmove_void(tmpret0, go_1(arg0)) ;

/*
emit_instr: loc0 = /home/scott/programs/ats/arduino-makefile-ats/examples/BlinkInCircuitPlayground/DATS/loop.dats: 81(line=6, offs=18) -- 251(line=15, offs=2)
*/
/*
INSletpop()
*/
ATSfunbody_end()
ATSreturn_void(tmpret0) ;
} /* end of [_057_home_057_scott_057_programs_057_ats_057_arduino_055_makefile_055_ats_057_examples_057_BlinkInCircuitPlayground_057_SATS_057_loop_056_sats__atsLoop] */

/*
/home/scott/programs/ats/arduino-makefile-ats/examples/BlinkInCircuitPlayground/DATS/loop.dats: 89(line=7, offs=7) -- 232(line=13, offs=4)
*/
/*
local: go_1$0(level=1)
global: go_1$0(level=1)
local: x$74(1)(HSEapp(HSEcst(atstkind_t0ype); HSEs2exp(S2Eextkind(atstype_int))))
global: x$74(1)(HSEapp(HSEcst(atstkind_t0ype); HSEs2exp(S2Eextkind(atstype_int))))
*/
ATSstatic()
atsvoid_t0ype
go_1(atstkind_t0ype(atstype_int) env0)
{
/* tmpvardeclst(beg) */
// ATStmpdec_void(tmpret1) ;
// ATStmpdec_void(tmp2) ;
// ATStmpdec_void(tmp3) ;
// ATStmpdec_void(tmp4) ;
// ATStmpdec_void(tmp5) ;
/* tmpvardeclst(end) */
ATSfunbody_beg()
/*
emit_instr: loc0 = /home/scott/programs/ats/arduino-makefile-ats/examples/BlinkInCircuitPlayground/DATS/loop.dats: 89(line=7, offs=7) -- 232(line=13, offs=4)
*/
ATSINSflab(__patsflab_go_1):
/*
emit_instr: loc0 = /home/scott/programs/ats/arduino-makefile-ats/examples/BlinkInCircuitPlayground/DATS/loop.dats: 96(line=7, offs=14) -- 232(line=13, offs=4)
*/
/*
letpush(beg)
*/
/*
emit_instr: loc0 = /home/scott/programs/ats/arduino-makefile-ats/examples/BlinkInCircuitPlayground/DATS/loop.dats: 113(line=8, offs=16) -- 122(line=8, offs=25)
*/
ATSINSmove_void(tmp2, port_on_in_c()) ;

/*
emit_instr: loc0 = /home/scott/programs/ats/arduino-makefile-ats/examples/BlinkInCircuitPlayground/DATS/loop.dats: 138(line=9, offs=16) -- 146(line=9, offs=24)
*/
ATSINSmove_void(tmp3, delay_in_c(env0)) ;

/*
emit_instr: loc0 = /home/scott/programs/ats/arduino-makefile-ats/examples/BlinkInCircuitPlayground/DATS/loop.dats: 163(line=10, offs=16) -- 173(line=10, offs=26)
*/
ATSINSmove_void(tmp4, port_off_in_c()) ;

/*
emit_instr: loc0 = /home/scott/programs/ats/arduino-makefile-ats/examples/BlinkInCircuitPlayground/DATS/loop.dats: 198(line=11, offs=16) -- 206(line=11, offs=24)
*/
ATSINSmove_void(tmp5, delay_in_c(env0)) ;

/*
letpush(end)
*/

/*
emit_instr: loc0 = /home/scott/programs/ats/arduino-makefile-ats/examples/BlinkInCircuitPlayground/DATS/loop.dats: 223(line=12, offs=16) -- 228(line=12, offs=21)
*/
ATStailcal_beg()
ATSINSfgoto(__patsflab_go_1) ;
ATStailcal_end()

/*
emit_instr: loc0 = /home/scott/programs/ats/arduino-makefile-ats/examples/BlinkInCircuitPlayground/DATS/loop.dats: 96(line=7, offs=14) -- 232(line=13, offs=4)
*/
/*
INSletpop()
*/
ATSfunbody_end()
ATSreturn_void(tmpret1) ;
} /* end of [go_1] */

/*
** for initialization(dynloading)
*/
ATSextern()
atsvoid_t0ype
_057_home_057_scott_057_programs_057_ats_057_arduino_055_makefile_055_ats_057_examples_057_BlinkInCircuitPlayground_057_DATS_057_loop_056_dats__dynload()
{
ATSfunbody_beg()
ATSdynload(/*void*/)
ATSdynloadflag_ext(
_057_home_057_scott_057_programs_057_ats_057_arduino_055_makefile_055_ats_057_examples_057_BlinkInCircuitPlayground_057_DATS_057_loop_056_dats__dynloadflag
) ;
ATSif(
ATSCKiseqz(
_057_home_057_scott_057_programs_057_ats_057_arduino_055_makefile_055_ats_057_examples_057_BlinkInCircuitPlayground_057_DATS_057_loop_056_dats__dynloadflag
)
) ATSthen() {
ATSdynloadset(_057_home_057_scott_057_programs_057_ats_057_arduino_055_makefile_055_ats_057_examples_057_BlinkInCircuitPlayground_057_DATS_057_loop_056_dats__dynloadflag) ;
/*
dynexnlst-initize(beg)
*/
/*
dynexnlst-initize(end)
*/
} /* ATSendif */
ATSfunbody_end()
ATSreturn_void(tmpret_void) ;
} /* end of [*_dynload] */

/* ****** ****** */

/* end-of-compilation-unit */
