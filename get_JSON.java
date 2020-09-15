import org.jsoup.*;
import org.json.*;
public class get_JSON{
    public static String web_get(String url) throws Exception {
        String response = "";
        response = Jsoup.connect(url).ignoreContentType(true).execute().body();
        return response;
    }
    

    public static void main(String[] args) throws Exception {
        String url = "http://140.128.87.192/NCUTair/ShowAllLast";
        String res = "";
        res = web_get(url);
        JSONArray res_arr=new JSONArray(res);

        int hid=1;
        JSONObject js=new JSONObject(res_arr.getString(hid));
        String temp=js.getString("T");
        System.out.print(temp);
        
    }
}
