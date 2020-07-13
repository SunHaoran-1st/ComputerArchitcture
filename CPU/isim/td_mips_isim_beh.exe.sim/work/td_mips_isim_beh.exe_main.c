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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003784277409_1733832700_init();
    work_m_00000000002015253297_0467708899_init();
    work_m_00000000003913339091_0985893689_init();
    work_m_00000000002926012335_1621229167_init();
    work_m_00000000002348781177_0106306656_init();
    work_m_00000000002540772053_1579609468_init();
    work_m_00000000003615849144_1785967555_init();
    work_m_00000000002424666154_0757879789_init();
    work_m_00000000002395228187_1312845761_init();
    work_m_00000000001103178701_3287360238_init();
    work_m_00000000000024170618_1703291226_init();
    work_m_00000000003543638916_0886308060_init();
    work_m_00000000002204450965_1096388036_init();
    work_m_00000000003608739179_2924402094_init();
    work_m_00000000002474934647_2988975366_init();
    work_m_00000000001103178701_0759354943_init();
    work_m_00000000003480905160_3979377396_init();
    work_m_00000000001112375944_0504667411_init();
    work_m_00000000000107215293_2058220583_init();
    work_m_00000000000714399766_2218746211_init();
    work_m_00000000000795108503_2336320059_init();
    work_m_00000000000120631990_2758377447_init();
    work_m_00000000000614915946_3877310806_init();
    work_m_00000000002047498008_2631883233_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002047498008_2631883233");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}