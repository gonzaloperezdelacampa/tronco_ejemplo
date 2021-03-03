CREATE OR REPLACE PACKAGE nwt_dl.dl_xbackground
AS
   --
   /* -------------------- DESCRIPCION --------------------
   || Logica de datos de la tabla dl_xbackground
   */ -----------------------------------------------------
   --
   /* -------------------- VERSION = 1.00 -------------------- */
   --
   /* -------------------- MODIFICACIONES -----------------
   || 2013/05/02 - FJMORENO - v 1.00
   || Creacion
   */ ------------------------------------------------------
   --
   /* -----------------------------------------------------
   || p_get : ISD-808 - dl_xbackground.p_get
   || OHERRERA
   || CONSULTAR imagen
   */ -----------------------------------------------------
   --
   PROCEDURE p_get(pm_cmp_val             IN                nwt_o.d_pid.cmp_val        ,
                   pm_fra_idn_val         IN                nwt_o.d_pid.fra_idn_val    ,
                   pm_crt_dat             IN                nwt_o.d_pid.crt_dat        ,
                   pm_lng_val             IN                nwt_o.d_cmn.lng_val        ,
                   pm_o_pid_img_p         IN OUT NOCOPY     nwt_o.o_pid_img_p          );
   --
   /* -----------------------------------------------------
   || p_get_001 : ISD-813 - dl_xbackground.p_get_001
   || FJMORENO
   || Logica de datos de la tabla xbackground.
   */ -----------------------------------------------------
   --
   PROCEDURE p_get_001( pm_cmp_val         IN             nwt_o.d_pid.cmp_val ,
                        pm_lng_val         IN             nwt_o.d_cmn.lng_val ,
                        pm_o_pid_img_p     IN OUT NOCOPY  nwt_o.o_pid_img_p   );
   --
   /* -----------------------------------------------------
   || p_get_002 : ISD-818 - dl_xbackground.p_get_002
   || FJMORENO
   || Logica de datos de la tabla xbackground.
   */ -----------------------------------------------------
   --
   PROCEDURE p_get_002( pm_cmp_val         IN             nwt_o.d_pid.cmp_val     ,
                        pm_fra_idn_val     IN             nwt_o.d_pid.fra_idn_val ,
                        pm_lng_val         IN             nwt_o.d_cmn.lng_val     ,
                        pm_o_pid_img_p     IN OUT NOCOPY  nwt_o.o_pid_img_p       );
   --
   /* -----------------------------------------------------
   || p_get_003 : ISD-821 - dl_xbackground.p_get_003
   || FJMORENO
   || Logica de datos de la tabla xbackground.
   */ -----------------------------------------------------
   --
   PROCEDURE p_get_003( pm_cmp_val         IN             nwt_o.d_pid.cmp_val     ,
                        pm_fra_idn_val     IN             nwt_o.d_pid.fra_idn_val ,
                        pm_lng_val         IN             nwt_o.d_cmn.lng_val     ,
                        pm_o_pid_img_p     IN OUT NOCOPY  nwt_o.o_pid_img_p       );
   --
   /* -----------------------------------------------------
   || p_dlt : ISD-837 - dl_xbackground.p_dlt
   || FJMORENO
   || Logica de datos de la tabla xbackground.
   */ -----------------------------------------------------
   --
   PROCEDURE p_dlt( pm_cmp_val         IN             nwt_o.d_pid.cmp_val     ,
                    pm_fra_idn_val     IN             nwt_o.d_pid.fra_idn_val ,
                    pm_lng_val         IN             nwt_o.d_cmn.lng_val     );
   --
   /* -----------------------------------------------------
   || p_inr : ISD-859 - dl_xbackground.p_inr
   || OHERRERA
   || TRASPASAR imagen a trabajo
   */ -----------------------------------------------------
   --
   PROCEDURE p_inr( pm_lng_val         IN                nwt_o.d_cmn.lng_val  ,
                    pm_o_pid_img_p     IN OUT NOCOPY     nwt_o.o_pid_img_p    );
   --
END dl_xbackground;
/