package studentiera

class LibraryController {

   def index() {
    def library = Library.findAll()

    [library: Library.findAll()]
}

def create(){}
Library library
def save(){
    def logn = Library.findByLibId(params.libId)
    library = new Library()
    library.properties = params;
    library.save(flush: true, failOnError: true)

    //render {'index'}
    redirect(controller: 'Library', action: 'index')
}
def update() {
    def library = Library.findByLibId(params.libId)

    [lib: library]

}
def edit(){
    Library lb = Library.findByLibId(params.libId)
    if (lb) {
        lb.properties = params;
        lb.save()
        redirect(controller: 'library', action: 'index')
    }else {
        redirect(controller: 'library', action: 'update')
    }
}

}

