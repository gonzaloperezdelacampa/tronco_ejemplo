CREATE OR REPLACE PACKAGE nwt_bl.bl_pid_img_trn
AS
   --
   /* -------------------- DESCRIPCION --------------------
   || Logica de negocio que define el concepto IMAGEN
   || Familia DEFINICION POLIZA
   */ -----------------------------------------------------
   --
   /* -------------------- VERSION = 1.00 -------------------- */
   --
   /* -------------------- MODIFICACIONES -----------------
   || 2013/05/09 - DALBERTA - v 1.00
   || Creacion
   */ ------------------------------------------------------
   --
   /* -----------------------------------------------------
   || p_lck : ISD-214 - BLOQUEAR imagen por compañia
   || DALBERTA
   || Bloquea la imagen de forma logica y fisica para la
   || compania pasada por parametro, y asi evitar que sea
   || actualizado por otro usuario
   */ -----------------------------------------------------
   --
   PROCEDURE p_lck(pm_cmp_val     IN nwt_o.d_pid.cmp_val    ,
                   pm_fra_idn_val IN nwt_o.d_pid.fra_idn_val,
                   pm_lng_val     IN nwt_o.d_cmn.lng_val    ,
                   pm_ses_val     IN nwt_o.d_trn.ses_val    ,
                   pm_usr_val     IN nwt_o.d_thp.usr_val    );
   --
   /* -----------------------------------------------------
   || p_lck_001 : ISD-623 - BLOQUEAR imagen por identificador marco
   || DALBERTA
   || Bloquea la imagen de forma logica y fisica para el
   || identificador marco pasado por parametro, y asi evitar
   || que sea actualizado por otro usuario
   */ -----------------------------------------------------
   --
   PROCEDURE p_lck_001(pm_cmp_val     IN nwt_o.d_pid.cmp_val    ,
                       pm_fra_idn_val IN nwt_o.d_pid.fra_idn_val,
                       pm_lng_val     IN nwt_o.d_cmn.lng_val    ,
                       pm_ses_val     IN nwt_o.d_trn.ses_val    ,
                       pm_usr_val     IN nwt_o.d_thp.usr_val    );
   --
   /* -----------------------------------------------------
   || p_unl : ISD-217 - DESBLOQUEAR imagen
   || DALBERTA
   || Desbloquea la imagen de forma logica
   */ -----------------------------------------------------
   --
   PROCEDURE p_unl(pm_cmp_val     IN nwt_o.d_pid.cmp_val    ,
                   pm_fra_idn_val IN nwt_o.d_pid.fra_idn_val,
                   pm_lng_val     IN nwt_o.d_cmn.lng_val    ,
                   pm_ses_val     IN nwt_o.d_trn.ses_val    ,
                   pm_usr_val     IN nwt_o.d_thp.usr_val    );
   --
END bl_pid_img_trn;
/
