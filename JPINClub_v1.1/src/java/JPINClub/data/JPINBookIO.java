package JPINClub.data;

import java.io.*;
import java.util.*;

import JPINClub.business.*;

public class JPINBookIO
{
    private static ArrayList<JPINBook> books = null;
    
    public static ArrayList<JPINBook> getBooks(String path)
    {
        books = new ArrayList<JPINBook>();
        File file = new File(path);
        try
        {
            BufferedReader in = 
                new BufferedReader(
                new FileReader(file));

            String line = in.readLine();
            while (line != null)
            {
                StringTokenizer t = new StringTokenizer(line, "|");
                if (t.countTokens() >= 3)
                {
                    String code = t.nextToken();
                    String description = t.nextToken();
                    String qtyAsString = t.nextToken();
                    int qty = Integer.parseInt(qtyAsString);

                    JPINBook book = new JPINBook();
                    book.setCode(code);
                    book.setDescription(description);
                    book.setQuantity(qty);

                    books.add(book);
                }
                line = in.readLine();
            }
            in.close();
            return books;
        }
        catch(IOException e)
        {
            e.printStackTrace();
            return null;
        }
    }

    public static JPINBook getBook(String code, String path)
    {
        books = getBooks(path);
        for (JPINBook book : books)
        {            
            if (code != null &&
                code.equalsIgnoreCase(book.getCode()))
            {
                return book;
            }
        }        
        return null;
    }

    public static boolean exists(String code, String path)
    {
        books = getBooks(path);
        for (JPINBook book : books)
        {            
            if (code != null &&
                code.equalsIgnoreCase(book.getCode()))
            {
                return true;
            }
        }        
        return false;
    }

    private static void saveBooks(ArrayList<JPINBook> books,
            String path)
    {
        try
        {
            File file = new File(path);
            PrintWriter out = 
                new PrintWriter(
                new FileWriter(file));

            for (JPINBook book : books)
            {                        
                out.println(book.getCode() + "|"
                        + book.getDescription() + "|"
                        + book.getQuantity());
            }

            out.close();        
        }
        catch(IOException e)
        {
            e.printStackTrace();
        }
    }
    
    public static void insert(JPINBook product, String path)
    {
        books = getBooks(path);
        books.add(product);
        saveBooks(books, path);
    }

    public static void update(JPINBook book, String path)
    {
        books = getBooks(path);
        for (int i = 0; i < books.size(); i++)
        {
            JPINBook b = books.get(i);
            if (book.getCode() != null &&
                book.getCode().equalsIgnoreCase(b.getCode()))
            {
                books.set(i, book);
            }
        }
        saveBooks(books, path);
    }

    public static void delete(JPINBook book, String path)
    {
        books = getBooks(path);
        for (int i = 0; i < books.size(); i++)
        {
            JPINBook b = books.get(i);
            if (book != null &&
                book.getCode().equalsIgnoreCase(b.getCode()))
            {
                books.remove(i);
            }
        }
        saveBooks(books, path);
    }
}