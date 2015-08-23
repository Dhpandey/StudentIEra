package studentiera

class LoginController {

    def index() {
        def userLevelList = Login.findAll()
        [userLevelList: userLevelList]

    }

    def authenticate() {
        def user = Login.findByUserNameAndPasswordAndUserLevel(params.UserName, params.Password, params.UserLevel)

        println "--------============>" + params.UserLevel
        if (user) {
            if ((params.UserLevel) == "admin") {
                redirect(controller: "admin", action: "index")
            }
            if ((params.UserLevel) == "a") {
                redirect(controller: "information", action: "index")
            }
        } else {
            flash.message = "Sorrry,${params.UserName}. incorrect information please try again!!!!!"
            redirect(action: "index")
        }


    }

    def create() {
        def userLevelList = Login.findAll()
        [userLevelList: userLevelList]

    }
    Login login

    def save() {
        def userLevel = params.level
        def userName = params.userName
        def password = params.Password

        def logn = Login.findById(params.Id)
        println "--------------" + logn


        login = new Login()
        login.UserLevel = userLevel
        login.UserName = userName
        login.Password = password.encodeAsMD5()
        login.save(flush: true, failOnError: true)

        redirect(controller: 'login', action: 'index')

    }

}
