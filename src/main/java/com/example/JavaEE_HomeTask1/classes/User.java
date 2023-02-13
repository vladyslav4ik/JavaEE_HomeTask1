package com.example.JavaEE_HomeTask1.classes;

public class User {
    private String name;
    private String surname;
    private int age;

    private User(String name, String surname, int age) {
        this.name = name;
        this.surname = surname;
        this.age = age;
    }

    public static User newUser(String name, String surname, int age) {
        return new User(name, surname, age);
    }

    @Override
    public String toString() {
        return "User: " + name + " " + surname + " is " + age + " y.o.";
    }
}
