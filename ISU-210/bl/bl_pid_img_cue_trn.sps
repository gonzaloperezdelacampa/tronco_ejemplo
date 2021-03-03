CREATE OR REPLACE PACKAGE nwt_bl.bl_pid_img_cue_trn
AS
   --
   /* -------------------- DESCRIPCION --------------------
   || Lógica de negocio que define el concepto IMAGEN
   || Familia DEFINICION POLIZA
   */ -----------------------------------------------------
   --
   /* -------------------- VERSION = 1.00 -------------------- */
   --
   /* -------------------- MODIFICACIONES -----------------
   || 2013/04/08 - DAAGUDELO - v 1.00
   || Creacion
   */ ------------------------------------------------------
   --
   /* -----------------------------------------------------
   || p_acs_dfn_dat: ISD-255 - HALLAR imagen, fecha acceso definicion
   ||
   || Se obtiene dentro de la definición de la imagen la
   || fecha de acceso a la definicion.
   */ -----------------------------------------------------
   --
   PROCEDURE p_acs_dfn_dat(pm_img_gnr_typ_val  IN            nwt_o.d_prt.img_gnr_typ_val,
                           pm_enr_efc_dat      IN            nwt_o.d_ply.enr_efc_dat    ,
                           pm_ply_efc_dat      IN            nwt_o.d_ply.ply_efc_dat    ,
                           pm_acs_dfn_dat         OUT NOCOPY nwt_o.d_pid.acs_dfn_dat    );
   --
   /* -----------------------------------------------------
   || p_fra_idn_val: ISD-212 - HALLAR imagen identificador marco
   ||
   || Se obtiene dentro de la definición de la imagen el identificador de la marco
   */ -----------------------------------------------------
   --
   PROCEDURE p_fra_idn_val(pm_lob_val         IN            nwt_o.d_prt.lob_val         ,
                           pm_enr_typ_val     IN            nwt_o.d_pid.enr_typ_val     ,
                           pm_img_gnr_typ_val IN            nwt_o.d_prt.img_gnr_typ_val ,
                           pm_vld_dat         IN            nwt_o.d_prt.vld_dat         ,
                           pm_lng_val         IN            nwt_o.d_cmn.lng_val         ,
                           pm_fra_idn_val        OUT NOCOPY nwt_o.d_pid.fra_idn_val     );
   --
END bl_pid_img_cue_trn;
/
