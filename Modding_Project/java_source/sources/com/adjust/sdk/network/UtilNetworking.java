package com.adjust.sdk.network;

import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.ILogger;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class UtilNetworking {

    /* loaded from: classes2.dex */
    public interface IConnectionOptions {
        void applyConnectionOptions(HttpsURLConnection httpsURLConnection, String str, int i10);
    }

    /* loaded from: classes2.dex */
    public interface IHttpsURLConnectionProvider {
        HttpsURLConnection generateHttpsURLConnection(URL url);
    }

    /* loaded from: classes2.dex */
    public class a implements IConnectionOptions {
        @Override // com.adjust.sdk.network.UtilNetworking.IConnectionOptions
        public final void applyConnectionOptions(HttpsURLConnection httpsURLConnection, String str, int i10) {
            httpsURLConnection.setRequestProperty("Client-SDK", str);
            httpsURLConnection.setConnectTimeout(i10);
            httpsURLConnection.setReadTimeout(i10);
        }
    }

    /* loaded from: classes2.dex */
    public class b implements IHttpsURLConnectionProvider {
        @Override // com.adjust.sdk.network.UtilNetworking.IHttpsURLConnectionProvider
        public final HttpsURLConnection generateHttpsURLConnection(URL url) {
            return (HttpsURLConnection) url.openConnection();
        }
    }

    public static IConnectionOptions createDefaultConnectionOptions() {
        return new a();
    }

    public static IHttpsURLConnectionProvider createDefaultHttpsURLConnectionProvider() {
        return new b();
    }

    public static int extractJsonInt(JSONObject jSONObject, String str) {
        Object opt = jSONObject.opt(str);
        if (opt instanceof Integer) {
            return ((Integer) opt).intValue();
        }
        return -1;
    }

    public static Long extractJsonLong(JSONObject jSONObject, String str) {
        Object opt = jSONObject.opt(str);
        if (opt instanceof Long) {
            return (Long) opt;
        }
        if (opt instanceof Number) {
            return Long.valueOf(((Number) opt).longValue());
        }
        if (opt instanceof String) {
            try {
                return Long.valueOf((long) Double.parseDouble((String) opt));
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        return null;
    }

    public static String extractJsonString(JSONObject jSONObject, String str) {
        Object opt = jSONObject.opt(str);
        if (opt instanceof String) {
            return (String) opt;
        }
        if (opt != null) {
            return opt.toString();
        }
        return null;
    }

    private static ILogger getLogger() {
        return AdjustFactory.getLogger();
    }
}
