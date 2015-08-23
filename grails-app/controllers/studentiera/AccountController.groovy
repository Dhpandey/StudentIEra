package studentiera

class AccountController {

       def index() {
        def account = Account.findAll()
        println "**d*********************************" + account

        [account: Account.findAll()]
    }
    def create(){}
    Account account
    def save(){

        def logn = Account.findByAccountId(params.accountId)
        println"------------->>>>>>>>>>>>>>>>>>>>>>>>>>>-"+logn
        account = new Account()
        account.properties = params;
        account.save(flush: true, failOnError: true)

        //render {'index'}
        redirect(controller: 'account', action: 'index')
    }
    def update() {
        def account = Account.findByAccountId(params.accountId)

        [acc: account]

    }
    def edit(){
        Account ac = Account.findByAccountId(params.accountId)
        if (ac) {
            ac.properties = params;
            ac.save()
            redirect(controller: 'account', action: 'index')
        }else {
            redirect(controller: 'account', action: 'update')
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







