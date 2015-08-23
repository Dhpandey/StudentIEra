package studentiera

class HostelController {

    def index() {
        def hostel = Hostel.findAll()

        [hostel: Hostel.findAll()]
    }

    def create(){}
    Hostel hostel
    def save(){
        def logn = Hostel.findByHostelId(params.hostelId)
        hostel = new Hostel()
        hostel.properties = params;
        hostel.save(flush: true, failOnError: true)

        //render {'index'}
        redirect(controller: 'Hostel', action: 'index')
    }
    def update() {
        def hostel = Hostel.findByHostelId(params.hostelId)

        [hos: hostel]

    }
    def edit(){
        Hostel hs = Hostel.findByHostelId(params.hostelId)
        if (hs) {
            hs.properties = params;
            hs.save()
            redirect(controller: 'hostel', action: 'index')
        }else {
            redirect(controller: 'hostel', action: 'update')
        }
    }

}






