CREATE OR REPLACE PACKAGE nwt_sr.sr_pid_img_crt_trn
AS
   /* -------------------- DESCRIPCION --------------------
   || Logica de servicios del concepto logico IMAGEN
   || de la familia DEFINICION POLIZA
   */ -----------------------------------------------------
   --
   /* -------------------- VERSION = 1.00 -------------------- */
   --
   /* -------------------- MODIFICACIONES -----------------
   || 2014/12/31 - JMGALVIS - v 1.00
   || Creacion
   */ -----------------------------------------------------
   --
   /* -----------------------------------------------------
   || f_cpe : ISD-1366 - OFRECER CREAR imagen completo
   ||
   || JMGALVIS
   ||
   || Ofrecer el servicio de creacion de la imagen en un
   || movimiento de emision.
   */ -----------------------------------------------------
   --
   FUNCTION f_cpe (pm_cmp_val         IN            nwt_o.d_cmu.cmp_val        ,
                   pm_lob_val         IN            nwt_o.d_prt.lob_val        ,
                   pm_del_val         IN            nwt_o.d_prt.del_val        ,
                   pm_sbl_val         IN            nwt_o.d_prt.sbl_val        ,
                   pm_enr_typ_val     IN            nwt_o.d_trn.enr_typ_val    ,
                   pm_img_gnr_typ_val IN            nwt_o.d_trn.img_gnr_typ_val,
                   pm_ply_efc_dat     IN            nwt_o.d_trn.ply_efc_dat    ,
                   pm_o_trn_cnx_s     IN            nwt_o.o_trn_cnx_s          )
      RETURN nwt_o.o_pid_img_p;
   --
END sr_pid_img_crt_trn;
/
