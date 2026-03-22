package qa;

import android.util.Log;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public final class b {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
                Log.e("Utils", "Exception when closing the 'Closeable'.");
            }
        }
    }

    public static void b(Reader reader, Writer writer) throws IOException {
        c(reader, writer, new char[4096]);
    }

    public static void c(Reader reader, Writer writer, char[] cArr) throws IOException {
        while (true) {
            int read = reader.read(cArr);
            if (-1 != read) {
                writer.write(cArr, 0, read);
            } else {
                return;
            }
        }
    }

    public static Map<String, String> d(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            hashMap.put(e(entry.getKey()), entry.getValue());
        }
        return hashMap;
    }

    public static String e(String str) {
        int i10 = 0;
        if (str.length() > 0) {
            while (str.charAt(i10) == '/') {
                i10++;
            }
        }
        return DomExceptionUtils.SEPARATOR + str.substring(i10);
    }

    public static oa.b f(String str, String str2) {
        if (str != null) {
            char c10 = 65535;
            switch (str.hashCode()) {
                case 2155:
                    if (str.equals("CN")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 2177:
                    if (str.equals("DE")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 2627:
                    if (str.equals("RU")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 2644:
                    if (str.equals("SG")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    return oa.b.f63156c;
                case 1:
                    return oa.b.f63157d;
                case 2:
                    return oa.b.f63158e;
                case 3:
                    return oa.b.f63159f;
                default:
                    return oa.b.f63155b;
            }
        }
        if (str2 != null) {
            if (str2.contains("connect-drcn")) {
                return oa.b.f63156c;
            }
            if (str2.contains("connect-dre")) {
                return oa.b.f63157d;
            }
            if (str2.contains("connect-drru")) {
                return oa.b.f63158e;
            }
            if (str2.contains("connect-dra")) {
                return oa.b.f63159f;
            }
        }
        return oa.b.f63155b;
    }

    public static String g(InputStream inputStream, String str) throws UnsupportedEncodingException, IOException {
        StringWriter stringWriter = new StringWriter();
        b(new InputStreamReader(inputStream, str), stringWriter);
        return stringWriter.toString();
    }
}
