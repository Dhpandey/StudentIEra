package studentiera

class Hostel {
    int hostelId
    String studentName;
    String admittedDate;
    String reporting
    int roomNo
    String roomStatus;
    String incharge;
    static constraints = {
       // studentName(blank: false,maxSize: 50,unique: true);

    }
}
