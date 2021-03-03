CREATE OR REPLACE PACKAGE nwt_sr.op_pid_img_crt_btc_trn
AS
   --
   /* -------------------- DESCRIPCION --------------------
   || Logica de servicios del concepto logico IMAGEN
   || de la familia DEFINICION POLIZA
   */ -----------------------------------------------------
   --
   /* -------------------- VERSION = 1.00 -------------------- */
   --
   /* -------------------- MODIFICACIONES -----------------
   || 2013/05/23 - RVILCHEZ - v 1.00
   || Creacion
   */ -----------------------------------------------------
   --
   /* -----------------------------------------------------
   || p_sav : ISD-216 - CREAR imagen completo, batch
   ||
   || RVILCHEZ
   ||
   || Orquestador que dispara la creacion de la imagen de
   || una poliza desde una operacion batch
   || Se llamará a la creacion completa de la imagen.
   ||
   || - Si se produce algún error, se insertará en la tabla
   ||   de errores batch el error proceso conjunto que se
   ||   haya obtenido de la llamada a la creación de la
   ||   imagen.
   || - Finalmente, se lanza el error 20123.
   */ -----------------------------------------------------
   --
   PROCEDURE p_sav (pm_cmp_val         IN            nwt_o.d_cmu.cmp_val        ,
                    pm_lob_val         IN            nwt_o.d_prt.lob_val        ,
                    pm_del_val         IN            nwt_o.d_prt.del_val        ,
                    pm_sbl_val         IN            nwt_o.d_prt.sbl_val        ,
                    pm_isu_dcm_val     IN            nwt_o.d_pid.ply_val        ,
                    pm_enr_typ_val     IN            nwt_o.d_trn.enr_typ_val    ,
                    pm_img_gnr_typ_val IN            nwt_o.d_trn.img_gnr_typ_val,
                    pm_enr_efc_dat     IN            nwt_o.d_trn.enr_efc_dat    ,
                    pm_ply_efc_dat     IN            nwt_o.d_trn.ply_efc_dat    ,
                    pm_lod_dat         IN            nwt_o.d_trn.lod_dat        ,
                    pm_btc_prc_val     IN            nwt_o.d_trn.btc_prc_val    ,
                    pm_btc_mvm_typ_val IN            nwt_o.d_trn.btc_mvm_typ_val,
                    pm_ses_val         IN            nwt_o.d_trn.ses_val        ,
                    pm_lng_val         IN            nwt_o.d_cmn.lng_val        ,
                    pm_usr_val         IN            nwt_o.d_thp.usr_val        ,
                    pm_o_pid_img_p     IN OUT NOCOPY nwt_o.o_pid_img_p          );
   --
END op_pid_img_crt_btc_trn;
/
