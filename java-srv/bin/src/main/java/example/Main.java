package example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication

// Main class
public class Main
{
    // Method 2
    // Main driver method
    public static void main(String[] args) 
    {

        // Calling run() method to execute SpringBootApplication by
        // invoking run() inside main() method
        SpringApplication.run(Main.class, args);
    }
}
