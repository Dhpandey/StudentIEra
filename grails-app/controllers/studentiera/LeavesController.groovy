package studentiera

class LeavesController {

    def index() {
      //  def leave= Leaves.findAll();
        [leave:Leaves.findAll()]
    }
    def create()
    {
      }
    Leaves leave
                    def save() {
                       Leaves.findBySymbolNumber(params.symbolNumber)

                        /*  def sn = params.symbolNumber
                          def sname = params.studentName
                          def leaveType = params.leaveType
                           def leaveFrom=params.leaveFrom
                                  def leaveTO=params.arrivalDate;
                                  def approvedBy=params.approvedBy;
                                  def approvedWith=params.approvedWith;
                                  println "this is check symbolnumber:>>>>>>>>>"+sn;
                                  leave=new Leaves()
                                  leave.symbolNumber=sn;
                                  leave.studentName=sname;
                                  leave.leaveType=leaveType;
                                  leave.leaveFrom=leaveFrom;
                                  leave.arrivalDate=leaveTO;
                                  leave.approvedBy=approvedBy;
                                  leave.approvedWith=approvedWith;*/
                        leave=new Leaves()
                        leave.properties=params
                        leave.save(flush: true, failOnError: true)
                        redirect(controller: 'leaves', action: 'index')
        }
    def update()
    {
        def leave = Leaves.findBySymbolNumber(params.symbolNumber)

        [lev: leave]
    }
        def edit(){

                Leaves leav = Leaves.findBySymbolNumber(params.symbolNumber)
                if (leav) {
                    leav.properties = params;
                    leav.save()
                    redirect(controller: 'leaves', action: 'index')
                }else {
                    redirect(controller: 'leaves', action: 'update')
                }

    }
    }


