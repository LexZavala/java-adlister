
import java.util.ArrayList;

public class BeanTest {
    public static void main(String[] args) {
        Album testAlb = new Album();

        testAlb.setId(1);
        testAlb.setArtist("Lex Zavala");
        testAlb.setRecord_name("NepTunes");
        testAlb.setGenre("Modern Java");
        testAlb.setSales(405);

        Author testAuth = new Author();

        testAuth.setFirst_name("Mark");
        testAuth.setLast_name("Twain");
        testAuth.setId(1);

        Author testAuth2 = new Author(1, "Ben", "Franklin");

        Quote testQuote = new Quote(1, "Don't believe everything on the internet", testAuth);
        Quote testQuote2 = new Quote(2, "They see me rolling", testAuth);
        Quote testQuote3 = new Quote(3, "There never was a good war or a bad peace.", testAuth2);

        ArrayList <Quote> quotes = new ArrayList<>();
        quotes.add(testQuote);
        quotes.add(testQuote2);
        quotes.add(testQuote3);

        for (Quote quote: quotes) {
            System.out.println("Author: " + quote.getAuthor().getFirst_name() + " " + quote.getAuthor().getLast_name()
                    + " | Content: " + quote.getContent());
        }

    }
}
