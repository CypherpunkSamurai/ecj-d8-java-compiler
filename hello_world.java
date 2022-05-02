import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class hello_world {

	public static void main(String args[]) throws IOException {
		System.out.println("Hello World");
		Document doc = Jsoup.connect("http://example.com/").get();
		String title = doc.title();
		System.out.println("title is: " + title);
	}

}
