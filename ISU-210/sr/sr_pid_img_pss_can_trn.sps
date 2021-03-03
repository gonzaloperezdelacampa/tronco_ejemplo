CREATE OR REPLACE PACKAGE nwt_sr.sr_pid_img_pss_can_trn
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
   || 2016/04/05 - SISAZA - v 1.00
   || Creacion
   */ -----------------------------------------------------
   --
   /* -----------------------------------------------------
   || f_chc_rev_all_och : ISD-2714 - OFRECER TRATAR imagen,
   ||                                marca devuelve todo,
   ||                                anulacion,
   ||                                orquestacion
   ||
   || SISAZA
   ||
   || Ofrecer el servicio de creacion de la imagen en un
   || movimiento de anulacion.
   || Tambien crear la variable global recibida por
   || parametro y le asigna el valor recibido.
   || Para este proceso de anulacion, se recibe la "marca
   || devuelve todo "necesaria en el proceso de anulacion
   */ -----------------------------------------------------
   --
   FUNCTION f_chc_rev_all_och (pm_cmp_val         IN            nwt_o.d_cmu.cmp_val        ,
                               pm_lob_val         IN            nwt_o.d_prt.lob_val        ,
                               pm_del_val         IN            nwt_o.d_prt.del_val        ,
                               pm_sbl_val         IN            nwt_o.d_prt.sbl_val        ,
                               pm_enr_typ_val     IN            nwt_o.d_trn.enr_typ_val    ,
                               pm_img_gnr_typ_val IN            nwt_o.d_trn.img_gnr_typ_val,
                               pm_ply_efc_dat     IN            nwt_o.d_trn.ply_efc_dat    ,
                               pm_o_trn_cnx_s     IN            nwt_o.o_trn_cnx_s          ,
                               pm_vrb_nam         IN            nwt_o.d_trn.fld_nam        ,
                               pm_vrb_val         IN            nwt_o.d_trn.fld_chr        )
      RETURN nwt_o.o_pid_img_p;
   --
END sr_pid_img_pss_can_trn;
/
