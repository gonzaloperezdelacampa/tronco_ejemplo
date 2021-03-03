CREATE OR REPLACE PACKAGE nwt_sr.op_pid_img_crt_trn
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
   || 2013/05/22 - MRGOMEZ - v 1.00
   || Creacion
   */ -----------------------------------------------------
   --
   /* -----------------------------------------------------
   || p_sav: ISD-210 - CREAR imagen completo
   ||
   || MRGOMEZ
   ||
   || Se van a registrar los datos de la definicion de la
   || imagen del ramo, asi como de la definicion de
   || agravantes, atributos, coberturas y desgloses.
   || Actuara del siguiente modo:
   || - Se obtienen los atributos de la imagen
   || - Se consultan las propiedades de la imagen, entrando
   ||   por identificador marco
   || - Si no existen datos de esa imagen para el
   ||   identificador marco, se intentara bloquear la tabla
   ||   de imagenes
   ||   * Si no lo consigue (existe bloqueo), volvera a
   ||     consultar la imagen y mientras que no tenga
   ||     datos, seguira intentando bloquear la tabla hasta
   ||     que ya no este bloqueada.
   ||   * Si lo consigue, se registrara en la imagen y se
   ||     desbloqueara el concepto logico bloqueado
   ||     anteriormente.
   || 
   || - Una vez existan datos, se vuelve a consultar las
   ||   propiedades de la imagen por identificador marco y
   ||   fecha imagen
   || - Si no existen datos de esa imagen para el
   ||   identificador marco y la fecha imagen, se intentara
   ||   bloquear la imagen para el identificador marco
   ||   * Si no lo consigue (existe bloqueo), volvera a
   ||     consultar la imagen y mientras que no tenga
   ||     datos, seguira intentando bloquear la tabla hasta
   ||     que ya no este bloqueada.
   ||   * Si lo consigue:
   ||     + Borra la imagen para el identificador marco
   ||     + Crea la imagen completa de la definicion de
   ||       atributo (distinguiendo por niveles)
   ||     + Crea la imagen completa de la definicion de
   ||       cobertura (tratando dentro tanto la definicion
   ||       de desglose como la definicion de agravante)
   ||     + Se registrara en la imagen y se desbloqueara el
   ||       concepto logico bloqueado anteriormente.
   ||
   || - En caso de producirse algun error, se apilara en
   ||   error proceso, se añade al error proceso conjunto
   ||   de la imagen y se devuelve el error 20123
   ||   (e_trn.ERR), para que el orquestador superior
   ||   lo sepa.
   ||
   || NOTA de implementacion:
   || - Despues de traspasar los datos de la imagen
   ||   (ISD-631), se realiza un COMMIT que confirma la
   ||   grabacion, tanto en la XBACKGROUND (primera llamada
   ||   al requisito) como en las tablas de trabajo de la
   ||   definicion de cada concepto logico y la propia
   ||   XBACKGROUND (segunda llamada al requisito) 
   */ -----------------------------------------------------
   --
   PROCEDURE p_sav (pm_cmp_val         IN            nwt_o.d_cmu.cmp_val        ,
                    pm_lob_val         IN            nwt_o.d_prt.lob_val        ,
                    pm_del_val         IN            nwt_o.d_prt.del_val        ,
                    pm_sbl_val         IN            nwt_o.d_prt.sbl_val        ,
                    pm_enr_typ_val     IN            nwt_o.d_trn.enr_typ_val    ,
                    pm_img_gnr_typ_val IN            nwt_o.d_trn.img_gnr_typ_val,
                    pm_enr_efc_dat     IN            nwt_o.d_trn.enr_efc_dat    ,
                    pm_ply_efc_dat     IN            nwt_o.d_trn.ply_efc_dat    ,
                    pm_ses_val         IN            nwt_o.d_trn.ses_val        ,
                    pm_lng_val         IN            nwt_o.d_cmn.lng_val        ,
                    pm_usr_val         IN            nwt_o.d_thp.usr_val        ,
                    pm_o_pid_img_p     IN OUT NOCOPY nwt_o.o_pid_img_p          );
   --
END op_pid_img_crt_trn;
/
