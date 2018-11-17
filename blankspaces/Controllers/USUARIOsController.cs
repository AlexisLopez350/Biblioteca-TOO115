using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using blankspaces.Models;
using blankspaces.ViewModels;

namespace blankspaces.Controllers
{
    public class USUARIOsController : Controller
    {
        private BibliotecaEntities1 db = new BibliotecaEntities1();

        // GET: USUARIOs
        public ActionResult Index()
        {
            var uSUARIOs = db.USUARIOs.Include(u => u.CATERGORIA).Include(u => u.MATERIALBIBLIOGRAFICO).Include(u => u.PERSONA).Include(u => u.PRESTAMO).Include(u => u.ROL);
            return View(uSUARIOs.ToList());
        }

        public JsonResult IsUserNameAvailable(string IDUSUARIO)
        {
            return Json(!db.USUARIOs.Any(user => user.IDPERSONA == IDUSUARIO), JsonRequestBehavior.AllowGet);
        }

        // GET: USUARIOs/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            USUARIO uSUARIO = db.USUARIOs.Find(id);
            if (uSUARIO == null)
            {
                return HttpNotFound();
            }
            return View(uSUARIO);
        }

        // GET: USUARIOs/Create
        public ActionResult Create(string id)

        {
            UsuarioViewModel Usuariovm = new UsuarioViewModel();
            //Usuariovm.Usuario1.IDPERSONA = id;

            // COMMENTED CODE WORKING
            USUARIO user = new USUARIO();
            user.IDPERSONA = id;
            Usuariovm.Usuario1 = user;

            ViewBag.justtesting = id;

            ViewBag.IDCATEGORIA = new SelectList(db.CATERGORIAs, "IDCATEGORIA", "NOMCAT");
            ViewBag.IDMATBIBLIO = new SelectList(db.MATERIALBIBLIOGRAFICOes, "IDMATBIBLIO", "IDUSUARIO");
            ViewBag.IDPERSONA = new SelectList(db.PERSONAs, "IDPERSONA", "NOMBRE");
            ViewBag.IDPRESTAMO = new SelectList(db.PRESTAMOes, "IDPRESTAMO", "IDUSUARIO");
            ViewBag.IDROL = new SelectList(db.ROLs, "IDROL", "NOMROL");
            return View(Usuariovm);
        }

        // POST: USUARIOs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Usuario1,Persona1,Detalledepersona1")] UsuarioViewModel Usuariovm)
        {

            USUARIO uSUARIO = new USUARIO();
            uSUARIO = Usuariovm.Usuario1;

            if (ModelState.IsValid)
            {
                db.USUARIOs.Add(uSUARIO);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IDCATEGORIA = new SelectList(db.CATERGORIAs, "IDCATEGORIA", "NOMCAT", uSUARIO.IDCATEGORIA);
            ViewBag.IDMATBIBLIO = new SelectList(db.MATERIALBIBLIOGRAFICOes, "IDMATBIBLIO", "IDUSUARIO", uSUARIO.IDMATBIBLIO);
            ViewBag.IDPERSONA = new SelectList(db.PERSONAs, "IDPERSONA", "NOMBRE", uSUARIO.IDPERSONA);
            ViewBag.IDPRESTAMO = new SelectList(db.PRESTAMOes, "IDPRESTAMO", "IDUSUARIO", uSUARIO.IDPRESTAMO);
            ViewBag.IDROL = new SelectList(db.ROLs, "IDROL", "NOMROL", uSUARIO.IDROL);
            return View(uSUARIO);
        }

        // GET: USUARIOs/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            USUARIO uSUARIO = db.USUARIOs.Find(id);
            if (uSUARIO == null)
            {
                return HttpNotFound();
            }
            ViewBag.IDCATEGORIA = new SelectList(db.CATERGORIAs, "IDCATEGORIA", "NOMCAT", uSUARIO.IDCATEGORIA);
            ViewBag.IDMATBIBLIO = new SelectList(db.MATERIALBIBLIOGRAFICOes, "IDMATBIBLIO", "IDUSUARIO", uSUARIO.IDMATBIBLIO);
            ViewBag.IDPERSONA = new SelectList(db.PERSONAs, "IDPERSONA", "NOMBRE", uSUARIO.IDPERSONA);
            ViewBag.IDPRESTAMO = new SelectList(db.PRESTAMOes, "IDPRESTAMO", "IDUSUARIO", uSUARIO.IDPRESTAMO);
            ViewBag.IDROL = new SelectList(db.ROLs, "IDROL", "NOMROL", uSUARIO.IDROL);
            return View(uSUARIO);
        }

        // POST: USUARIOs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IDUSUARIO,IDPRESTAMO,IDROL,IDPERSONA,IDCATEGORIA,IDMATBIBLIO,CONTRASENA,ESTADO")] USUARIO uSUARIO)
        {
            if (ModelState.IsValid)
            {
                db.Entry(uSUARIO).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IDCATEGORIA = new SelectList(db.CATERGORIAs, "IDCATEGORIA", "NOMCAT", uSUARIO.IDCATEGORIA);
            ViewBag.IDMATBIBLIO = new SelectList(db.MATERIALBIBLIOGRAFICOes, "IDMATBIBLIO", "IDUSUARIO", uSUARIO.IDMATBIBLIO);
            ViewBag.IDPERSONA = new SelectList(db.PERSONAs, "IDPERSONA", "NOMBRE", uSUARIO.IDPERSONA);
            ViewBag.IDPRESTAMO = new SelectList(db.PRESTAMOes, "IDPRESTAMO", "IDUSUARIO", uSUARIO.IDPRESTAMO);
            ViewBag.IDROL = new SelectList(db.ROLs, "IDROL", "NOMROL", uSUARIO.IDROL);
            return View(uSUARIO);
        }


        /////////////////////////////////////
        //INTENTOS con editar
        public ActionResult Editar(string id)
        {


            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            UsuarioViewModel Usuariovm = new UsuarioViewModel();

            USUARIO uSUARIO = db.USUARIOs.Find(id);

            Usuariovm.Usuario1 = uSUARIO;

            var idper = Usuariovm.Usuario1.IDPERSONA;

            PERSONA persona = db.PERSONAs.Find(idper);//danger

            Usuariovm.Persona1 = persona; //dangerx2!





            //if (Usuariovm.Persona1.IDDETALLE.HasValue)
            //{
            DETALLEDEPERSONA dETALLEDEPERSONA = db.DETALLEDEPERSONAs.Find(Usuariovm.Persona1.IDDETALLE);//check it out
            Usuariovm.Detalledepersona1 = dETALLEDEPERSONA;

            //}



            // var iddetalle = Usuariovm.Persona1.IDDETALLE;
            //DETALLEDEPERSONA dETALLEDEPERSONA = db.DETALLEDEPERSONAs.Find(iddetalle); // view viewbag

            if (uSUARIO == null)
            {
                return HttpNotFound();
            }
            ViewBag.IDCATEGORIA = new SelectList(db.CATERGORIAs, "IDCATEGORIA", "NOMCAT", uSUARIO.IDCATEGORIA);
            ViewBag.IDMATBIBLIO = new SelectList(db.MATERIALBIBLIOGRAFICOes, "IDMATBIBLIO", "IDUSUARIO", uSUARIO.IDMATBIBLIO);
            ViewBag.IDPERSONA = new SelectList(db.PERSONAs, "IDPERSONA", "DUI", uSUARIO.IDPERSONA);
            ViewBag.IDPRESTAMO = new SelectList(db.PRESTAMOes, "IDPRESTAMO", "IDUSUARIO", uSUARIO.IDPRESTAMO);
            ViewBag.IDROL = new SelectList(db.ROLs, "IDROL", "NOMROL", uSUARIO.IDROL);
            return View(Usuariovm);
        }



        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Editar([Bind(Include = "Usuario1,Persona1,Detalledepersona1")] UsuarioViewModel Usuariovm)
        {

            var idpersonanocrash = Usuariovm.Persona1.IDPERSONA;


            /* var sql = ("SELECT IDROL FROM dbo.ROL where NOMROL= {0}",Usuariovm.Usuario1.IDROL);
             var total = db.Database.SqlQuery<int>(sql).First();*/

            // int customerId = db.Database.SqlQuery<int>("Select IDROL From dbo.ROL where NOMROL= {0}", Usuariovm.Usuario1.IDROL).FirstOrDefault<int>();


            USUARIO uSUARIO = Usuariovm.Usuario1;
            uSUARIO.IDPERSONA = idpersonanocrash;

            PERSONA pERSONA = Usuariovm.Persona1;


            // var nocrash = pERSONA.IDDETALLE;
            //DETALLEDEPERSONA dETALLEDEPERSONA = Usuariovm.Detalledepersona1;


            /*    if(Usuariovm.Persona1.IDDETALLE.HasValue)
                {
                    DETALLEDEPERSONA dETALLEDEPERSONA = Usuariovm.Detalledepersona1;
                    db.Entry(dETALLEDEPERSONA).State = EntityState.Modified;
                    db.SaveChanges();
                }*/


            if (Usuariovm.Persona1.IDDETALLE.HasValue) //has value

            {
                db.Entry(uSUARIO).State = EntityState.Modified;
                db.SaveChanges();

                db.Entry(pERSONA).State = EntityState.Modified;
                db.SaveChanges();
                db.Entry(Usuariovm.Detalledepersona1).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");

            }

            if (ModelState.IsValid)
            {
                db.Entry(uSUARIO).State = EntityState.Modified;
                db.SaveChanges();

                db.Entry(pERSONA).State = EntityState.Modified;
                db.SaveChanges();

                /* if(nocrash!=null)
                 {
                     db.Entry(dETALLEDEPERSONA).State = EntityState.Modified;
                     db.SaveChanges();
                 }*/


                return RedirectToAction("Index");
            }




            ViewBag.IDCATEGORIA = new SelectList(db.CATERGORIAs, "IDCATEGORIA", "NOMCAT", uSUARIO.IDCATEGORIA);
            ViewBag.IDMATBIBLIO = new SelectList(db.MATERIALBIBLIOGRAFICOes, "IDMATBIBLIO", "IDUSUARIO", uSUARIO.IDMATBIBLIO);
            ViewBag.IDPERSONA = new SelectList(db.PERSONAs, "IDPERSONA", "DUI", uSUARIO.IDPERSONA);
            ViewBag.IDPRESTAMO = new SelectList(db.PRESTAMOes, "IDPRESTAMO", "IDUSUARIO", uSUARIO.IDPRESTAMO);
            ViewBag.IDROL = new SelectList(db.ROLs, "IDROL", "NOMROL", uSUARIO.IDROL);
            return View(uSUARIO);
        }




        ////////////////////////////////////


        // GET: USUARIOs/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            USUARIO uSUARIO = db.USUARIOs.Find(id);
            if (uSUARIO == null)
            {
                return HttpNotFound();
            }
            return View(uSUARIO);
        }

        // POST: USUARIOs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            USUARIO uSUARIO = db.USUARIOs.Find(id);
            db.USUARIOs.Remove(uSUARIO);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
