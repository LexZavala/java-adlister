public class Employee {
    private String name;
    private char gender;
    private int heightinCM;

    public Employee(){

    }

    public Employee(String name, char gender, int heightinCM) {
        this.name = name;
        this.gender = gender;
        this.heightinCM = heightinCM;
    }

    public String getName() {
        return name;
    }

    public char getGender() {
        return gender;
    }

    public int getHeightinCM() {
        return heightinCM;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setGender(char gender) {
        this.gender = gender;
    }

    public void setHeightinCM(int heightinCM) {
        this.heightinCM = heightinCM;
    }
}
