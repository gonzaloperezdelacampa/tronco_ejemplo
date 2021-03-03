CREATE OR REPLACE PACKAGE nwt_dl.dl_pid_img_trn
AS
   --
   /* -------------------- DESCRIPCION --------------------
   ||
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
   || f_inl :
   ||
   || Inicializa
   */ -----------------------------------------------------
   --
   FUNCTION f_inl_s RETURN nwt_o.o_pid_img_s;
   --
   FUNCTION f_inl_p RETURN nwt_o.o_pid_img_p;
   --
   FUNCTION f_inl_pt RETURN nwt_o.o_pid_img_pt;
   --
   /* -----------------------------------------------------
   || f_add :
   ||
   || Aniade el objeto campos simple a la tabla
   */ -----------------------------------------------------
   --
   FUNCTION f_add(pm_o_pid_img_p  IN OUT NOCOPY nwt_o.o_pid_img_p  ,
                   pm_o_pid_img_pt IN OUT NOCOPY nwt_o.o_pid_img_pt)
   RETURN nwt_o.o_pid_img_pt;
   --
   /* -----------------------------------------------------
   || p_get : ISD-218 - CONSULTAR imagen
   || OHERRERA
   || Obtener la informacion de la definicion de la imagen
   ||
   || ----- Parametros de entrada
   || compania,
   || identificador_marco
   || fecha_imagen
   || idioma
   || ----- Parametros de salida
   || imagen
   */ -----------------------------------------------------
   --
   PROCEDURE p_get(pm_cmp_val             IN                nwt_o.d_pid.cmp_val        ,
                   pm_fra_idn_val         IN                nwt_o.d_pid.fra_idn_val    ,
                   pm_crt_dat             IN                nwt_o.d_pid.crt_dat        ,
                   pm_lng_val             IN                nwt_o.d_cmn.lng_val        ,
                   pm_o_pid_img_p         IN OUT NOCOPY     nwt_o.o_pid_img_p          );
   --
   /* -----------------------------------------------------
   || p_get_001 : ISD-215 - CONSULTAR imagen bloqueando por compania sin espera
   || FJMORENO
   || Recuperar la informacion de la reserva de la imagen por compania. Esta informacion
   || nos permite saber en funcion de si existe el registro, si existe bloqueo de
   || la tabla para esa compania
   */ -----------------------------------------------------
   --
   PROCEDURE p_get_001( pm_cmp_val         IN             nwt_o.d_pid.cmp_val ,
                        pm_lng_val         IN             nwt_o.d_cmn.lng_val ,
                        pm_o_pid_img_p     IN OUT NOCOPY  nwt_o.o_pid_img_p   );
   --
   /* -----------------------------------------------------
   || p_get_002 : ISD-624 - CONSULTAR imagen bloqueando por identificador marco sin espera
   || FJMORENO
   || Recuperar la informacion de la reserva de la imagen por identificador marco.
   || Esta informacion nos permite saber en funcion de si existe el registro, si
   || existe bloqueo para el registro de ese identificador marco
   */ -----------------------------------------------------
   --
   PROCEDURE p_get_002( pm_cmp_val         IN             nwt_o.d_pid.cmp_val     ,
                        pm_fra_idn_val     IN             nwt_o.d_pid.fra_idn_val ,
                        pm_lng_val         IN             nwt_o.d_cmn.lng_val     ,
                        pm_o_pid_img_p     IN OUT NOCOPY  nwt_o.o_pid_img_p       );
   --
   /* -----------------------------------------------------
   || p_get_003 : ISD-213 - CONSULTAR imagen por identificador marco
   || FJMORENO
   || Obtener la informacion de la definicion de la imagen por el identificador
   || marco que viene por perimetro
   */ -----------------------------------------------------
   --
   PROCEDURE p_get_003( pm_cmp_val         IN             nwt_o.d_pid.cmp_val     ,
                        pm_fra_idn_val     IN             nwt_o.d_pid.fra_idn_val ,
                        pm_lng_val         IN             nwt_o.d_cmn.lng_val     ,
                        pm_o_pid_img_p     IN OUT NOCOPY  nwt_o.o_pid_img_p       );
   --
   /* -----------------------------------------------------
   || p_dlt : ISD-628 - BORRAR imagen, por identificador marco
   || FJMORENO
   || Borra la informacion de la imagen, accediendo por compania e identificador marco
   */ -----------------------------------------------------
   --
   PROCEDURE p_dlt( pm_cmp_val         IN             nwt_o.d_pid.cmp_val     ,
                    pm_fra_idn_val     IN             nwt_o.d_pid.fra_idn_val ,
                    pm_lng_val         IN             nwt_o.d_cmn.lng_val     );
   --
   /* -----------------------------------------------------
   || p_inr : ISD-631 - TRASPASAR imagen a trabajo
   || OHERRERA
   || Hacer que persistan las propiedades de la definicion de la imagen en las tablas de trabajo
   ||
   || ----- Parametros de entrada
   || imagen
   */ -----------------------------------------------------
   --
   PROCEDURE p_inr(pm_lng_val         IN                nwt_o.d_cmn.lng_val  ,
                   pm_o_pid_img_p     IN OUT NOCOPY     nwt_o.o_pid_img_p    );
   --
END dl_pid_img_trn;
/