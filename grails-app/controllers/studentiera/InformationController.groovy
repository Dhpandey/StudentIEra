package studentiera

class InformationController {

    def index() {

        def information = Information.findAll()

        [information: Information.findAll()]
    }
    def create() {}
    Information information

    def save() {
        def info = Information.findBySymbolNumber(params.symbolNumber)
        println "------------->>>>>>>>>>>>>>>>>>>>>>>>>>>-" + info
        information = new Information()
        information.properties = params;
        information.save(flush: true, failOnError: true)

        //render {'index'}
        redirect(controller: 'information', action: 'index')
    }

    def update() {
        def information = Information.findBySymbolNumber(params.symbolNumber)

        [info: information]

    }

    def edit() {
        Information info = Information.findBySymbolNumber(params.symbolNumber)
        if (info) {
            info.properties = params;
            info.save()
            redirect(controller: 'information', action: 'index')
        } else {
            redirect(controller: 'information', action: 'update')
        }
    }
}








