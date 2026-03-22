package np;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
/* compiled from: ConnectionUtils.java */
/* loaded from: classes8.dex */
class b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static InputStream a(@NonNull String str, int i10) throws Exception {
        try {
            URLConnection openConnection = new URL(str).openConnection();
            openConnection.setConnectTimeout(i10);
            openConnection.setReadTimeout(i10);
            b(openConnection);
            openConnection.connect();
            return openConnection.getInputStream();
        } catch (Exception unused) {
            Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            buildUpon.scheme(ProxyConfig.MATCH_HTTP);
            URLConnection openConnection2 = new URL(buildUpon.build().toString()).openConnection();
            openConnection2.setConnectTimeout(i10);
            openConnection2.setReadTimeout(i10);
            openConnection2.connect();
            return openConnection2.getInputStream();
        }
    }

    private static void b(@Nullable URLConnection uRLConnection) {
        try {
            if (uRLConnection instanceof HttpsURLConnection) {
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnection;
                httpsURLConnection.setSSLSocketFactory(new op.c(httpsURLConnection.getSSLSocketFactory()));
            }
        } catch (Exception e10) {
            io.bidmachine.core.a.m(e10);
        }
    }
}
