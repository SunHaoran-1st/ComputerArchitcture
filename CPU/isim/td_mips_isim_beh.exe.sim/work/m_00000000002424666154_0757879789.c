/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/ComputerArchitcture/P5/CPU/NPC.v";
static unsigned int ng1[] = {12288U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {4U, 0U};
static int ng6[] = {4, 0};
static unsigned int ng7[] = {8U, 0U};



static void Cont_39_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 4608U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5520);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 5424);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Initial_40_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(40, ng0);

LAB2:    xsi_set_current_line(41, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3688);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB1:    return;
}

static void Always_43_2(char *t0)
{
    char t6[8];
    char t22[8];
    char t36[8];
    char t52[8];
    char t60[8];
    char t92[8];
    char t106[8];
    char t122[8];
    char t130[8];
    char t168[8];
    char t174[8];
    char t187[8];
    char t196[8];
    char t202[8];
    char t234[8];
    char t242[8];
    char t278[8];
    char t281[8];
    char t282[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    int t84;
    int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    char *t99;
    char *t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t105;
    char *t107;
    char *t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    char *t121;
    char *t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    char *t129;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    char *t134;
    char *t135;
    char *t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    char *t144;
    char *t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    int t154;
    int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    char *t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    char *t169;
    char *t170;
    char *t171;
    char *t172;
    char *t173;
    char *t175;
    char *t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    char *t183;
    int t184;
    int t185;
    unsigned int t186;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    unsigned int t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    unsigned int t201;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    char *t206;
    char *t207;
    char *t208;
    unsigned int t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    unsigned int t215;
    char *t216;
    char *t217;
    unsigned int t218;
    unsigned int t219;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    unsigned int t223;
    unsigned int t224;
    unsigned int t225;
    int t226;
    int t227;
    unsigned int t228;
    unsigned int t229;
    unsigned int t230;
    unsigned int t231;
    unsigned int t232;
    unsigned int t233;
    char *t235;
    unsigned int t236;
    unsigned int t237;
    unsigned int t238;
    unsigned int t239;
    unsigned int t240;
    char *t241;
    unsigned int t243;
    unsigned int t244;
    unsigned int t245;
    char *t246;
    char *t247;
    char *t248;
    unsigned int t249;
    unsigned int t250;
    unsigned int t251;
    unsigned int t252;
    unsigned int t253;
    unsigned int t254;
    unsigned int t255;
    char *t256;
    char *t257;
    unsigned int t258;
    unsigned int t259;
    unsigned int t260;
    int t261;
    unsigned int t262;
    unsigned int t263;
    unsigned int t264;
    int t265;
    unsigned int t266;
    unsigned int t267;
    unsigned int t268;
    unsigned int t269;
    char *t270;
    unsigned int t271;
    unsigned int t272;
    unsigned int t273;
    unsigned int t274;
    unsigned int t275;
    char *t276;
    char *t277;
    char *t279;
    char *t280;
    char *t283;

LAB0:    t1 = (t0 + 5104U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5440);
    *((int *)t2) = 1;
    t3 = (t0 + 5136);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(43, ng0);

LAB5:    xsi_set_current_line(44, ng0);
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t23) != 0)
        goto LAB12;

LAB13:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB14;

LAB15:    memcpy(t60, t22, 8);

LAB16:    memset(t92, 0, 8);
    t93 = (t60 + 4);
    t94 = *((unsigned int *)t93);
    t95 = (~(t94));
    t96 = *((unsigned int *)t60);
    t97 = (t96 & t95);
    t98 = (t97 & 1U);
    if (t98 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t93) != 0)
        goto LAB30;

LAB31:    t100 = (t92 + 4);
    t101 = *((unsigned int *)t92);
    t102 = *((unsigned int *)t100);
    t103 = (t101 || t102);
    if (t103 > 0)
        goto LAB32;

LAB33:    memcpy(t130, t92, 8);

LAB34:    t162 = (t130 + 4);
    t163 = *((unsigned int *)t162);
    t164 = (~(t163));
    t165 = *((unsigned int *)t130);
    t166 = (t165 & t164);
    t167 = (t166 != 0);
    if (t167 > 0)
        goto LAB46;

LAB47:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB53;

LAB50:    if (t18 != 0)
        goto LAB52;

LAB51:    *((unsigned int *)t6) = 1;

LAB53:    t8 = (t6 + 4);
    t24 = *((unsigned int *)t8);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB54;

LAB55:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t2) != 0)
        goto LAB60;

LAB61:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB62;

LAB63:    memcpy(t52, t6, 8);

LAB64:    memset(t60, 0, 8);
    t51 = (t52 + 4);
    t69 = *((unsigned int *)t51);
    t70 = (~(t69));
    t71 = *((unsigned int *)t52);
    t72 = (t71 & t70);
    t73 = (t72 & 1U);
    if (t73 != 0)
        goto LAB76;

LAB77:    if (*((unsigned int *)t51) != 0)
        goto LAB78;

LAB79:    t59 = (t60 + 4);
    t76 = *((unsigned int *)t60);
    t77 = (!(t76));
    t78 = *((unsigned int *)t59);
    t79 = (t77 || t78);
    if (t79 > 0)
        goto LAB80;

LAB81:    memcpy(t168, t60, 8);

LAB82:    memset(t174, 0, 8);
    t145 = (t168 + 4);
    t166 = *((unsigned int *)t145);
    t167 = (~(t166));
    t177 = *((unsigned int *)t168);
    t178 = (t177 & t167);
    t179 = (t178 & 1U);
    if (t179 != 0)
        goto LAB104;

LAB105:    if (*((unsigned int *)t145) != 0)
        goto LAB106;

LAB107:    t169 = (t174 + 4);
    t180 = *((unsigned int *)t174);
    t181 = (!(t180));
    t182 = *((unsigned int *)t169);
    t186 = (t181 || t182);
    if (t186 > 0)
        goto LAB108;

LAB109:    memcpy(t242, t174, 8);

LAB110:    t270 = (t242 + 4);
    t271 = *((unsigned int *)t270);
    t272 = (~(t271));
    t273 = *((unsigned int *)t242);
    t274 = (t273 & t272);
    t275 = (t274 != 0);
    if (t275 > 0)
        goto LAB132;

LAB133:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB136;

LAB137:    if (*((unsigned int *)t2) != 0)
        goto LAB138;

LAB139:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = (!(t14));
    t16 = *((unsigned int *)t5);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB140;

LAB141:    memcpy(t36, t6, 8);

LAB142:    memset(t52, 0, 8);
    t37 = (t36 + 4);
    t56 = *((unsigned int *)t37);
    t57 = (~(t56));
    t58 = *((unsigned int *)t36);
    t61 = (t58 & t57);
    t62 = (t61 & 1U);
    if (t62 != 0)
        goto LAB150;

LAB151:    if (*((unsigned int *)t37) != 0)
        goto LAB152;

LAB153:    t51 = (t52 + 4);
    t63 = *((unsigned int *)t52);
    t67 = (!(t63));
    t68 = *((unsigned int *)t51);
    t69 = (t67 || t68);
    if (t69 > 0)
        goto LAB154;

LAB155:    memcpy(t92, t52, 8);

LAB156:    t99 = (t92 + 4);
    t103 = *((unsigned int *)t99);
    t109 = (~(t103));
    t110 = *((unsigned int *)t92);
    t111 = (t110 & t109);
    t112 = (t111 != 0);
    if (t112 > 0)
        goto LAB164;

LAB165:    xsi_set_current_line(56, ng0);

LAB168:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t3, 32, t2, 32);
    t4 = (t0 + 3688);
    xsi_vlogvar_assign_value(t4, t6, 0, 0, 32);

LAB166:
LAB134:
LAB56:
LAB48:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t22) = 1;
    goto LAB13;

LAB12:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB13;

LAB14:    t34 = (t0 + 2008U);
    t35 = *((char **)t34);
    t34 = ((char*)((ng3)));
    memset(t36, 0, 8);
    t37 = (t35 + 4);
    t38 = (t34 + 4);
    t39 = *((unsigned int *)t35);
    t40 = *((unsigned int *)t34);
    t41 = (t39 ^ t40);
    t42 = *((unsigned int *)t37);
    t43 = *((unsigned int *)t38);
    t44 = (t42 ^ t43);
    t45 = (t41 | t44);
    t46 = *((unsigned int *)t37);
    t47 = *((unsigned int *)t38);
    t48 = (t46 | t47);
    t49 = (~(t48));
    t50 = (t45 & t49);
    if (t50 != 0)
        goto LAB20;

LAB17:    if (t48 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t36) = 1;

LAB20:    memset(t52, 0, 8);
    t53 = (t36 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t36);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t53) != 0)
        goto LAB23;

LAB24:    t61 = *((unsigned int *)t22);
    t62 = *((unsigned int *)t52);
    t63 = (t61 & t62);
    *((unsigned int *)t60) = t63;
    t64 = (t22 + 4);
    t65 = (t52 + 4);
    t66 = (t60 + 4);
    t67 = *((unsigned int *)t64);
    t68 = *((unsigned int *)t65);
    t69 = (t67 | t68);
    *((unsigned int *)t66) = t69;
    t70 = *((unsigned int *)t66);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB16;

LAB19:    t51 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t52) = 1;
    goto LAB24;

LAB23:    t59 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB24;

LAB25:    t72 = *((unsigned int *)t60);
    t73 = *((unsigned int *)t66);
    *((unsigned int *)t60) = (t72 | t73);
    t74 = (t22 + 4);
    t75 = (t52 + 4);
    t76 = *((unsigned int *)t22);
    t77 = (~(t76));
    t78 = *((unsigned int *)t74);
    t79 = (~(t78));
    t80 = *((unsigned int *)t52);
    t81 = (~(t80));
    t82 = *((unsigned int *)t75);
    t83 = (~(t82));
    t84 = (t77 & t79);
    t85 = (t81 & t83);
    t86 = (~(t84));
    t87 = (~(t85));
    t88 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t88 & t86);
    t89 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t89 & t87);
    t90 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t90 & t86);
    t91 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t91 & t87);
    goto LAB27;

LAB28:    *((unsigned int *)t92) = 1;
    goto LAB31;

LAB30:    t99 = (t92 + 4);
    *((unsigned int *)t92) = 1;
    *((unsigned int *)t99) = 1;
    goto LAB31;

LAB32:    t104 = (t0 + 2488U);
    t105 = *((char **)t104);
    t104 = ((char*)((ng3)));
    memset(t106, 0, 8);
    t107 = (t105 + 4);
    t108 = (t104 + 4);
    t109 = *((unsigned int *)t105);
    t110 = *((unsigned int *)t104);
    t111 = (t109 ^ t110);
    t112 = *((unsigned int *)t107);
    t113 = *((unsigned int *)t108);
    t114 = (t112 ^ t113);
    t115 = (t111 | t114);
    t116 = *((unsigned int *)t107);
    t117 = *((unsigned int *)t108);
    t118 = (t116 | t117);
    t119 = (~(t118));
    t120 = (t115 & t119);
    if (t120 != 0)
        goto LAB38;

LAB35:    if (t118 != 0)
        goto LAB37;

LAB36:    *((unsigned int *)t106) = 1;

LAB38:    memset(t122, 0, 8);
    t123 = (t106 + 4);
    t124 = *((unsigned int *)t123);
    t125 = (~(t124));
    t126 = *((unsigned int *)t106);
    t127 = (t126 & t125);
    t128 = (t127 & 1U);
    if (t128 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t123) != 0)
        goto LAB41;

LAB42:    t131 = *((unsigned int *)t92);
    t132 = *((unsigned int *)t122);
    t133 = (t131 & t132);
    *((unsigned int *)t130) = t133;
    t134 = (t92 + 4);
    t135 = (t122 + 4);
    t136 = (t130 + 4);
    t137 = *((unsigned int *)t134);
    t138 = *((unsigned int *)t135);
    t139 = (t137 | t138);
    *((unsigned int *)t136) = t139;
    t140 = *((unsigned int *)t136);
    t141 = (t140 != 0);
    if (t141 == 1)
        goto LAB43;

LAB44:
LAB45:    goto LAB34;

LAB37:    t121 = (t106 + 4);
    *((unsigned int *)t106) = 1;
    *((unsigned int *)t121) = 1;
    goto LAB38;

LAB39:    *((unsigned int *)t122) = 1;
    goto LAB42;

LAB41:    t129 = (t122 + 4);
    *((unsigned int *)t122) = 1;
    *((unsigned int *)t129) = 1;
    goto LAB42;

LAB43:    t142 = *((unsigned int *)t130);
    t143 = *((unsigned int *)t136);
    *((unsigned int *)t130) = (t142 | t143);
    t144 = (t92 + 4);
    t145 = (t122 + 4);
    t146 = *((unsigned int *)t92);
    t147 = (~(t146));
    t148 = *((unsigned int *)t144);
    t149 = (~(t148));
    t150 = *((unsigned int *)t122);
    t151 = (~(t150));
    t152 = *((unsigned int *)t145);
    t153 = (~(t152));
    t154 = (t147 & t149);
    t155 = (t151 & t153);
    t156 = (~(t154));
    t157 = (~(t155));
    t158 = *((unsigned int *)t136);
    *((unsigned int *)t136) = (t158 & t156);
    t159 = *((unsigned int *)t136);
    *((unsigned int *)t136) = (t159 & t157);
    t160 = *((unsigned int *)t130);
    *((unsigned int *)t130) = (t160 & t156);
    t161 = *((unsigned int *)t130);
    *((unsigned int *)t130) = (t161 & t157);
    goto LAB45;

LAB46:    xsi_set_current_line(44, ng0);

LAB49:    xsi_set_current_line(45, ng0);
    t169 = ((char*)((ng4)));
    t170 = (t0 + 1688U);
    t171 = *((char **)t170);
    t170 = (t0 + 1528U);
    t172 = *((char **)t170);
    t170 = (t0 + 1368U);
    t173 = *((char **)t170);
    t170 = (t0 + 1048U);
    t175 = *((char **)t170);
    memset(t174, 0, 8);
    t170 = (t174 + 4);
    t176 = (t175 + 4);
    t177 = *((unsigned int *)t175);
    t178 = (t177 >> 28);
    *((unsigned int *)t174) = t178;
    t179 = *((unsigned int *)t176);
    t180 = (t179 >> 28);
    *((unsigned int *)t170) = t180;
    t181 = *((unsigned int *)t174);
    *((unsigned int *)t174) = (t181 & 15U);
    t182 = *((unsigned int *)t170);
    *((unsigned int *)t170) = (t182 & 15U);
    xsi_vlogtype_concat(t168, 32, 32, 5U, t174, 4, t173, 5, t172, 5, t171, 16, t169, 2);
    t183 = (t0 + 3688);
    xsi_vlogvar_assign_value(t183, t168, 0, 0, 32);
    goto LAB48;

LAB52:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB53;

LAB54:    xsi_set_current_line(47, ng0);

LAB57:    xsi_set_current_line(48, ng0);
    t21 = (t0 + 2968U);
    t23 = *((char **)t21);
    t21 = (t0 + 3688);
    xsi_vlogvar_assign_value(t21, t23, 0, 0, 32);
    goto LAB56;

LAB58:    *((unsigned int *)t6) = 1;
    goto LAB61;

LAB60:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB61;

LAB62:    t7 = (t0 + 2648U);
    t8 = *((char **)t7);
    memset(t22, 0, 8);
    t7 = (t8 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t8);
    t20 = (t19 & t18);
    t24 = (t20 & 1U);
    if (t24 != 0)
        goto LAB68;

LAB66:    if (*((unsigned int *)t7) == 0)
        goto LAB65;

LAB67:    t21 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t21) = 1;

LAB68:    memset(t36, 0, 8);
    t23 = (t22 + 4);
    t25 = *((unsigned int *)t23);
    t26 = (~(t25));
    t27 = *((unsigned int *)t22);
    t28 = (t27 & t26);
    t31 = (t28 & 1U);
    if (t31 != 0)
        goto LAB69;

LAB70:    if (*((unsigned int *)t23) != 0)
        goto LAB71;

LAB72:    t32 = *((unsigned int *)t6);
    t33 = *((unsigned int *)t36);
    t39 = (t32 & t33);
    *((unsigned int *)t52) = t39;
    t30 = (t6 + 4);
    t34 = (t36 + 4);
    t35 = (t52 + 4);
    t40 = *((unsigned int *)t30);
    t41 = *((unsigned int *)t34);
    t42 = (t40 | t41);
    *((unsigned int *)t35) = t42;
    t43 = *((unsigned int *)t35);
    t44 = (t43 != 0);
    if (t44 == 1)
        goto LAB73;

LAB74:
LAB75:    goto LAB64;

LAB65:    *((unsigned int *)t22) = 1;
    goto LAB68;

LAB69:    *((unsigned int *)t36) = 1;
    goto LAB72;

LAB71:    t29 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB72;

LAB73:    t45 = *((unsigned int *)t52);
    t46 = *((unsigned int *)t35);
    *((unsigned int *)t52) = (t45 | t46);
    t37 = (t6 + 4);
    t38 = (t36 + 4);
    t47 = *((unsigned int *)t6);
    t48 = (~(t47));
    t49 = *((unsigned int *)t37);
    t50 = (~(t49));
    t54 = *((unsigned int *)t36);
    t55 = (~(t54));
    t56 = *((unsigned int *)t38);
    t57 = (~(t56));
    t84 = (t48 & t50);
    t85 = (t55 & t57);
    t58 = (~(t84));
    t61 = (~(t85));
    t62 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t62 & t58);
    t63 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t63 & t61);
    t67 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t67 & t58);
    t68 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t68 & t61);
    goto LAB75;

LAB76:    *((unsigned int *)t60) = 1;
    goto LAB79;

LAB78:    t53 = (t60 + 4);
    *((unsigned int *)t60) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB79;

LAB80:    t64 = (t0 + 2328U);
    t65 = *((char **)t64);
    memset(t92, 0, 8);
    t64 = (t65 + 4);
    t80 = *((unsigned int *)t64);
    t81 = (~(t80));
    t82 = *((unsigned int *)t65);
    t83 = (t82 & t81);
    t86 = (t83 & 1U);
    if (t86 != 0)
        goto LAB83;

LAB84:    if (*((unsigned int *)t64) != 0)
        goto LAB85;

LAB86:    t74 = (t92 + 4);
    t87 = *((unsigned int *)t92);
    t88 = *((unsigned int *)t74);
    t89 = (t87 || t88);
    if (t89 > 0)
        goto LAB87;

LAB88:    memcpy(t122, t92, 8);

LAB89:    memset(t130, 0, 8);
    t121 = (t122 + 4);
    t133 = *((unsigned int *)t121);
    t137 = (~(t133));
    t138 = *((unsigned int *)t122);
    t139 = (t138 & t137);
    t140 = (t139 & 1U);
    if (t140 != 0)
        goto LAB97;

LAB98:    if (*((unsigned int *)t121) != 0)
        goto LAB99;

LAB100:    t141 = *((unsigned int *)t60);
    t142 = *((unsigned int *)t130);
    t143 = (t141 | t142);
    *((unsigned int *)t168) = t143;
    t129 = (t60 + 4);
    t134 = (t130 + 4);
    t135 = (t168 + 4);
    t146 = *((unsigned int *)t129);
    t147 = *((unsigned int *)t134);
    t148 = (t146 | t147);
    *((unsigned int *)t135) = t148;
    t149 = *((unsigned int *)t135);
    t150 = (t149 != 0);
    if (t150 == 1)
        goto LAB101;

LAB102:
LAB103:    goto LAB82;

LAB83:    *((unsigned int *)t92) = 1;
    goto LAB86;

LAB85:    t66 = (t92 + 4);
    *((unsigned int *)t92) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB86;

LAB87:    t75 = (t0 + 2648U);
    t93 = *((char **)t75);
    memset(t106, 0, 8);
    t75 = (t93 + 4);
    t90 = *((unsigned int *)t75);
    t91 = (~(t90));
    t94 = *((unsigned int *)t93);
    t95 = (t94 & t91);
    t96 = (t95 & 1U);
    if (t96 != 0)
        goto LAB90;

LAB91:    if (*((unsigned int *)t75) != 0)
        goto LAB92;

LAB93:    t97 = *((unsigned int *)t92);
    t98 = *((unsigned int *)t106);
    t101 = (t97 & t98);
    *((unsigned int *)t122) = t101;
    t100 = (t92 + 4);
    t104 = (t106 + 4);
    t105 = (t122 + 4);
    t102 = *((unsigned int *)t100);
    t103 = *((unsigned int *)t104);
    t109 = (t102 | t103);
    *((unsigned int *)t105) = t109;
    t110 = *((unsigned int *)t105);
    t111 = (t110 != 0);
    if (t111 == 1)
        goto LAB94;

LAB95:
LAB96:    goto LAB89;

LAB90:    *((unsigned int *)t106) = 1;
    goto LAB93;

LAB92:    t99 = (t106 + 4);
    *((unsigned int *)t106) = 1;
    *((unsigned int *)t99) = 1;
    goto LAB93;

LAB94:    t112 = *((unsigned int *)t122);
    t113 = *((unsigned int *)t105);
    *((unsigned int *)t122) = (t112 | t113);
    t107 = (t92 + 4);
    t108 = (t106 + 4);
    t114 = *((unsigned int *)t92);
    t115 = (~(t114));
    t116 = *((unsigned int *)t107);
    t117 = (~(t116));
    t118 = *((unsigned int *)t106);
    t119 = (~(t118));
    t120 = *((unsigned int *)t108);
    t124 = (~(t120));
    t154 = (t115 & t117);
    t155 = (t119 & t124);
    t125 = (~(t154));
    t126 = (~(t155));
    t127 = *((unsigned int *)t105);
    *((unsigned int *)t105) = (t127 & t125);
    t128 = *((unsigned int *)t105);
    *((unsigned int *)t105) = (t128 & t126);
    t131 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t131 & t125);
    t132 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t132 & t126);
    goto LAB96;

LAB97:    *((unsigned int *)t130) = 1;
    goto LAB100;

LAB99:    t123 = (t130 + 4);
    *((unsigned int *)t130) = 1;
    *((unsigned int *)t123) = 1;
    goto LAB100;

LAB101:    t151 = *((unsigned int *)t168);
    t152 = *((unsigned int *)t135);
    *((unsigned int *)t168) = (t151 | t152);
    t136 = (t60 + 4);
    t144 = (t130 + 4);
    t153 = *((unsigned int *)t136);
    t156 = (~(t153));
    t157 = *((unsigned int *)t60);
    t184 = (t157 & t156);
    t158 = *((unsigned int *)t144);
    t159 = (~(t158));
    t160 = *((unsigned int *)t130);
    t185 = (t160 & t159);
    t161 = (~(t184));
    t163 = (~(t185));
    t164 = *((unsigned int *)t135);
    *((unsigned int *)t135) = (t164 & t161);
    t165 = *((unsigned int *)t135);
    *((unsigned int *)t135) = (t165 & t163);
    goto LAB103;

LAB104:    *((unsigned int *)t174) = 1;
    goto LAB107;

LAB106:    t162 = (t174 + 4);
    *((unsigned int *)t174) = 1;
    *((unsigned int *)t162) = 1;
    goto LAB107;

LAB108:    t170 = (t0 + 2488U);
    t171 = *((char **)t170);
    memset(t187, 0, 8);
    t170 = (t171 + 4);
    t188 = *((unsigned int *)t170);
    t189 = (~(t188));
    t190 = *((unsigned int *)t171);
    t191 = (t190 & t189);
    t192 = (t191 & 1U);
    if (t192 != 0)
        goto LAB111;

LAB112:    if (*((unsigned int *)t170) != 0)
        goto LAB113;

LAB114:    t173 = (t187 + 4);
    t193 = *((unsigned int *)t187);
    t194 = *((unsigned int *)t173);
    t195 = (t193 || t194);
    if (t195 > 0)
        goto LAB115;

LAB116:    memcpy(t202, t187, 8);

LAB117:    memset(t234, 0, 8);
    t235 = (t202 + 4);
    t236 = *((unsigned int *)t235);
    t237 = (~(t236));
    t238 = *((unsigned int *)t202);
    t239 = (t238 & t237);
    t240 = (t239 & 1U);
    if (t240 != 0)
        goto LAB125;

LAB126:    if (*((unsigned int *)t235) != 0)
        goto LAB127;

LAB128:    t243 = *((unsigned int *)t174);
    t244 = *((unsigned int *)t234);
    t245 = (t243 | t244);
    *((unsigned int *)t242) = t245;
    t246 = (t174 + 4);
    t247 = (t234 + 4);
    t248 = (t242 + 4);
    t249 = *((unsigned int *)t246);
    t250 = *((unsigned int *)t247);
    t251 = (t249 | t250);
    *((unsigned int *)t248) = t251;
    t252 = *((unsigned int *)t248);
    t253 = (t252 != 0);
    if (t253 == 1)
        goto LAB129;

LAB130:
LAB131:    goto LAB110;

LAB111:    *((unsigned int *)t187) = 1;
    goto LAB114;

LAB113:    t172 = (t187 + 4);
    *((unsigned int *)t187) = 1;
    *((unsigned int *)t172) = 1;
    goto LAB114;

LAB115:    t175 = (t0 + 2808U);
    t176 = *((char **)t175);
    memset(t196, 0, 8);
    t175 = (t176 + 4);
    t197 = *((unsigned int *)t175);
    t198 = (~(t197));
    t199 = *((unsigned int *)t176);
    t200 = (t199 & t198);
    t201 = (t200 & 1U);
    if (t201 != 0)
        goto LAB118;

LAB119:    if (*((unsigned int *)t175) != 0)
        goto LAB120;

LAB121:    t203 = *((unsigned int *)t187);
    t204 = *((unsigned int *)t196);
    t205 = (t203 & t204);
    *((unsigned int *)t202) = t205;
    t206 = (t187 + 4);
    t207 = (t196 + 4);
    t208 = (t202 + 4);
    t209 = *((unsigned int *)t206);
    t210 = *((unsigned int *)t207);
    t211 = (t209 | t210);
    *((unsigned int *)t208) = t211;
    t212 = *((unsigned int *)t208);
    t213 = (t212 != 0);
    if (t213 == 1)
        goto LAB122;

LAB123:
LAB124:    goto LAB117;

LAB118:    *((unsigned int *)t196) = 1;
    goto LAB121;

LAB120:    t183 = (t196 + 4);
    *((unsigned int *)t196) = 1;
    *((unsigned int *)t183) = 1;
    goto LAB121;

LAB122:    t214 = *((unsigned int *)t202);
    t215 = *((unsigned int *)t208);
    *((unsigned int *)t202) = (t214 | t215);
    t216 = (t187 + 4);
    t217 = (t196 + 4);
    t218 = *((unsigned int *)t187);
    t219 = (~(t218));
    t220 = *((unsigned int *)t216);
    t221 = (~(t220));
    t222 = *((unsigned int *)t196);
    t223 = (~(t222));
    t224 = *((unsigned int *)t217);
    t225 = (~(t224));
    t226 = (t219 & t221);
    t227 = (t223 & t225);
    t228 = (~(t226));
    t229 = (~(t227));
    t230 = *((unsigned int *)t208);
    *((unsigned int *)t208) = (t230 & t228);
    t231 = *((unsigned int *)t208);
    *((unsigned int *)t208) = (t231 & t229);
    t232 = *((unsigned int *)t202);
    *((unsigned int *)t202) = (t232 & t228);
    t233 = *((unsigned int *)t202);
    *((unsigned int *)t202) = (t233 & t229);
    goto LAB124;

LAB125:    *((unsigned int *)t234) = 1;
    goto LAB128;

LAB127:    t241 = (t234 + 4);
    *((unsigned int *)t234) = 1;
    *((unsigned int *)t241) = 1;
    goto LAB128;

LAB129:    t254 = *((unsigned int *)t242);
    t255 = *((unsigned int *)t248);
    *((unsigned int *)t242) = (t254 | t255);
    t256 = (t174 + 4);
    t257 = (t234 + 4);
    t258 = *((unsigned int *)t256);
    t259 = (~(t258));
    t260 = *((unsigned int *)t174);
    t261 = (t260 & t259);
    t262 = *((unsigned int *)t257);
    t263 = (~(t262));
    t264 = *((unsigned int *)t234);
    t265 = (t264 & t263);
    t266 = (~(t261));
    t267 = (~(t265));
    t268 = *((unsigned int *)t248);
    *((unsigned int *)t248) = (t268 & t266);
    t269 = *((unsigned int *)t248);
    *((unsigned int *)t248) = (t269 & t267);
    goto LAB131;

LAB132:    xsi_set_current_line(50, ng0);

LAB135:    xsi_set_current_line(51, ng0);
    t276 = (t0 + 1048U);
    t277 = *((char **)t276);
    t276 = ((char*)((ng5)));
    memset(t278, 0, 8);
    xsi_vlog_unsigned_add(t278, 32, t277, 32, t276, 32);
    t279 = (t0 + 3128U);
    t280 = *((char **)t279);
    t279 = ((char*)((ng6)));
    memset(t281, 0, 8);
    xsi_vlog_unsigned_multiply(t281, 32, t280, 32, t279, 32);
    memset(t282, 0, 8);
    xsi_vlog_unsigned_add(t282, 32, t278, 32, t281, 32);
    t283 = (t0 + 3688);
    xsi_vlogvar_assign_value(t283, t282, 0, 0, 32);
    goto LAB134;

LAB136:    *((unsigned int *)t6) = 1;
    goto LAB139;

LAB138:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB139;

LAB140:    t7 = (t0 + 2328U);
    t8 = *((char **)t7);
    memset(t22, 0, 8);
    t7 = (t8 + 4);
    t18 = *((unsigned int *)t7);
    t19 = (~(t18));
    t20 = *((unsigned int *)t8);
    t24 = (t20 & t19);
    t25 = (t24 & 1U);
    if (t25 != 0)
        goto LAB143;

LAB144:    if (*((unsigned int *)t7) != 0)
        goto LAB145;

LAB146:    t26 = *((unsigned int *)t6);
    t27 = *((unsigned int *)t22);
    t28 = (t26 | t27);
    *((unsigned int *)t36) = t28;
    t23 = (t6 + 4);
    t29 = (t22 + 4);
    t30 = (t36 + 4);
    t31 = *((unsigned int *)t23);
    t32 = *((unsigned int *)t29);
    t33 = (t31 | t32);
    *((unsigned int *)t30) = t33;
    t39 = *((unsigned int *)t30);
    t40 = (t39 != 0);
    if (t40 == 1)
        goto LAB147;

LAB148:
LAB149:    goto LAB142;

LAB143:    *((unsigned int *)t22) = 1;
    goto LAB146;

LAB145:    t21 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB146;

LAB147:    t41 = *((unsigned int *)t36);
    t42 = *((unsigned int *)t30);
    *((unsigned int *)t36) = (t41 | t42);
    t34 = (t6 + 4);
    t35 = (t22 + 4);
    t43 = *((unsigned int *)t34);
    t44 = (~(t43));
    t45 = *((unsigned int *)t6);
    t84 = (t45 & t44);
    t46 = *((unsigned int *)t35);
    t47 = (~(t46));
    t48 = *((unsigned int *)t22);
    t85 = (t48 & t47);
    t49 = (~(t84));
    t50 = (~(t85));
    t54 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t54 & t49);
    t55 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t55 & t50);
    goto LAB149;

LAB150:    *((unsigned int *)t52) = 1;
    goto LAB153;

LAB152:    t38 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB153;

LAB154:    t53 = (t0 + 2488U);
    t59 = *((char **)t53);
    memset(t60, 0, 8);
    t53 = (t59 + 4);
    t70 = *((unsigned int *)t53);
    t71 = (~(t70));
    t72 = *((unsigned int *)t59);
    t73 = (t72 & t71);
    t76 = (t73 & 1U);
    if (t76 != 0)
        goto LAB157;

LAB158:    if (*((unsigned int *)t53) != 0)
        goto LAB159;

LAB160:    t77 = *((unsigned int *)t52);
    t78 = *((unsigned int *)t60);
    t79 = (t77 | t78);
    *((unsigned int *)t92) = t79;
    t65 = (t52 + 4);
    t66 = (t60 + 4);
    t74 = (t92 + 4);
    t80 = *((unsigned int *)t65);
    t81 = *((unsigned int *)t66);
    t82 = (t80 | t81);
    *((unsigned int *)t74) = t82;
    t83 = *((unsigned int *)t74);
    t86 = (t83 != 0);
    if (t86 == 1)
        goto LAB161;

LAB162:
LAB163:    goto LAB156;

LAB157:    *((unsigned int *)t60) = 1;
    goto LAB160;

LAB159:    t64 = (t60 + 4);
    *((unsigned int *)t60) = 1;
    *((unsigned int *)t64) = 1;
    goto LAB160;

LAB161:    t87 = *((unsigned int *)t92);
    t88 = *((unsigned int *)t74);
    *((unsigned int *)t92) = (t87 | t88);
    t75 = (t52 + 4);
    t93 = (t60 + 4);
    t89 = *((unsigned int *)t75);
    t90 = (~(t89));
    t91 = *((unsigned int *)t52);
    t154 = (t91 & t90);
    t94 = *((unsigned int *)t93);
    t95 = (~(t94));
    t96 = *((unsigned int *)t60);
    t155 = (t96 & t95);
    t97 = (~(t154));
    t98 = (~(t155));
    t101 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t101 & t97);
    t102 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t102 & t98);
    goto LAB163;

LAB164:    xsi_set_current_line(53, ng0);

LAB167:    xsi_set_current_line(54, ng0);
    t100 = (t0 + 1048U);
    t104 = *((char **)t100);
    t100 = ((char*)((ng7)));
    memset(t106, 0, 8);
    xsi_vlog_unsigned_add(t106, 32, t104, 32, t100, 32);
    t105 = (t0 + 3688);
    xsi_vlogvar_assign_value(t105, t106, 0, 0, 32);
    goto LAB166;

}


extern void work_m_00000000002424666154_0757879789_init()
{
	static char *pe[] = {(void *)Cont_39_0,(void *)Initial_40_1,(void *)Always_43_2};
	xsi_register_didat("work_m_00000000002424666154_0757879789", "isim/td_mips_isim_beh.exe.sim/work/m_00000000002424666154_0757879789.didat");
	xsi_register_executes(pe);
}
