import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Scanner;
import java.util.Random;


@WebServlet(name = "GuessingGame", urlPatterns = "/guessinggame")
public class GuessingGame extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int guess = Integer.parseInt(request.getParameter("guess"));
        int randomNum = (int) (Math.random()*3) + 1;
        if (guess == randomNum) {
            response.sendRedirect("/correct.jsp" + guess);
        } else {
            response.sendRedirect("/incorrect.jsp");
        }



        request.setAttribute("guess", randomNum);
        request.getRequestDispatcher("/correct.jsp").forward(request, response);
        request.getRequestDispatcher("/incorrect.jsp").forward(request, response);


//    public static void diceGame() {
//        Scanner sc = new Scanner(System.in);
//        boolean decision = true;
//        int randomNum = (int) (Math.random() * 3) + 1;
//        int guessCount = 1;
//
//        while (decision) {
//            if (guessCount == 0) {
//
//                System.out.println("You're out of guesses, you LOST!");
//                break;
//            }
//            System.out.println("Guess a number between 1 and 100!!!");
//            int userPick = sc.nextInt();
//            if (userPick == randomNum) {
//                System.out.println("WOW you guessed right!");
//                System.out.println("Would you like to play again?[Y/N]");
//                String userChoice = sc.next();
//                if (userChoice.equalsIgnoreCase("n")) {
//                    decision = false;
//                }
//            } else if (userPick < randomNum) {
//                System.out.println("HIGHER");
//            } else if (userPick > randomNum) {
//                System.out.println("LOWER");
//            }
//            guessCount--;
//            System.out.println("Number of guess left " + guessCount);
//
//
//        }
//    }
//
//    public static void main (String[] args) { diceGame(); }
    }
}