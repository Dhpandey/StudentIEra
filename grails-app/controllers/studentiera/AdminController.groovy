package studentiera

class AdminController {

    def index() {
        def admin = Admin.findAll()
        println "**d*********************************" + admin

        [admin: Admin.findAll()]
    }
    def create(){}
       Admin admin
        def save(){
        def logn = Admin.findBySymbolNumber(params.symbolNumber)
        println"------------->>>>>>>>>>>>>>>>>>>>>>>>>>>-"+logn
        admin = new Admin()
        admin.properties = params;
        admin.save(flush: true, failOnError: true)

        //render {'index'}
        redirect(controller: 'admin', action: 'index')
    }
def update() {
    def admin = Admin.findBySymbolNumber(params.symbolNumber)

    [adm: admin]

   }
    def edit(){
        Admin am = Admin.findBySymbolNumber(params.symbolNumber)
        if (am) {
            am.properties = params;
            am.save()
            redirect(controller: 'admin', action: 'index')
        }else {
            redirect(controller: 'admin', action: 'update')
        }
    }
   /* def delete() {
        def admin = Admin.findBySymbolNumber(params.symbolNumber)
        println "===================>"+p
        Admin.executeUpdate("delete  Admin a where  a.symbolNumber=11")

        [adm: admin]

    }

*/

}







