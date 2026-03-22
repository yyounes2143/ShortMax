package g8;

import androidx.browser.trusted.sharing.ShareTarget;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import z7.g;
/* compiled from: HttpGetRequest.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f52217a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, String> f52218b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, String> f52219c = new HashMap();

    public a(String str, Map<String, String> map) {
        this.f52217a = str;
        this.f52218b = map;
    }

    private String a(Map<String, String> map) throws UnsupportedEncodingException {
        String str;
        String str2;
        StringBuilder sb2 = new StringBuilder();
        Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
        Map.Entry<String, String> next = it.next();
        sb2.append(next.getKey());
        sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
        if (next.getValue() == null) {
            str = "";
        } else {
            str = URLEncoder.encode(next.getValue(), "UTF-8");
        }
        sb2.append(str);
        while (it.hasNext()) {
            Map.Entry<String, String> next2 = it.next();
            sb2.append(ContainerUtils.FIELD_DELIMITER);
            sb2.append(next2.getKey());
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            if (next2.getValue() == null) {
                str2 = "";
            } else {
                str2 = URLEncoder.encode(next2.getValue(), "UTF-8");
            }
            sb2.append(str2);
        }
        return sb2.toString();
    }

    private String b(String str, Map<String, String> map) throws UnsupportedEncodingException {
        String a10 = a(map);
        if (a10.isEmpty()) {
            return str;
        }
        if (str.contains("?")) {
            if (!str.endsWith(ContainerUtils.FIELD_DELIMITER)) {
                a10 = ContainerUtils.FIELD_DELIMITER + a10;
            }
            return str + a10;
        }
        return str + "?" + a10;
    }

    private String e(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        char[] cArr = new char[8192];
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            int read = bufferedReader.read(cArr);
            if (read != -1) {
                sb2.append(cArr, 0, read);
            } else {
                return sb2.toString();
            }
        }
    }

    public c c() throws IOException {
        HttpsURLConnection httpsURLConnection;
        CrashlyticsWorkers.d();
        InputStream inputStream = null;
        String e10 = null;
        inputStream = null;
        try {
            String b10 = b(this.f52217a, this.f52218b);
            g.f().i("GET Request URL: " + b10);
            httpsURLConnection = (HttpsURLConnection) new URL(b10).openConnection();
            try {
                httpsURLConnection.setReadTimeout(10000);
                httpsURLConnection.setConnectTimeout(10000);
                httpsURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                for (Map.Entry<String, String> entry : this.f52219c.entrySet()) {
                    httpsURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
                }
                httpsURLConnection.connect();
                int responseCode = httpsURLConnection.getResponseCode();
                InputStream inputStream2 = httpsURLConnection.getInputStream();
                if (inputStream2 != null) {
                    try {
                        e10 = e(inputStream2);
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream = inputStream2;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        throw th;
                    }
                }
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                httpsURLConnection.disconnect();
                return new c(responseCode, e10);
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            httpsURLConnection = null;
        }
    }

    public a d(String str, String str2) {
        this.f52219c.put(str, str2);
        return this;
    }
}
