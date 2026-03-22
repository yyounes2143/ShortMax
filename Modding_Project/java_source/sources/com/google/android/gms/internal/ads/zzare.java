package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import androidx.browser.trusted.sharing.ShareTarget;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzare extends zzaqr {
    public zzare() {
        throw null;
    }

    @VisibleForTesting
    static List zzb(Map map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getKey() != null) {
                for (String str : (List) entry.getValue()) {
                    arrayList.add(new zzapv((String) entry.getKey(), str));
                }
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzaqr
    public final zzarb zza(zzaqd zzaqdVar, Map map) throws IOException, zzapl {
        String zzk = zzaqdVar.zzk();
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        hashMap.putAll(zzaqdVar.zzl());
        URL url = new URL(zzk);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int zzb = zzaqdVar.zzb();
        httpURLConnection.setConnectTimeout(zzb);
        httpURLConnection.setReadTimeout(zzb);
        boolean z10 = false;
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        "https".equals(url.getProtocol());
        try {
            for (String str : hashMap.keySet()) {
                httpURLConnection.setRequestProperty(str, (String) hashMap.get(str));
            }
            if (zzaqdVar.zza() != 0) {
                httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
                byte[] zzx = zzaqdVar.zzx();
                if (zzx != null) {
                    httpURLConnection.setDoOutput(true);
                    if (!httpURLConnection.getRequestProperties().containsKey(CommonGatewayClient.HEADER_CONTENT_TYPE)) {
                        httpURLConnection.setRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/x-www-form-urlencoded; charset=UTF-8");
                    }
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.write(zzx);
                    dataOutputStream.close();
                }
            } else {
                httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode != -1) {
                zzaqdVar.zza();
                if ((responseCode < 100 || responseCode >= 200) && responseCode != 204 && responseCode != 304) {
                    try {
                        return new zzarb(responseCode, zzb(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), new zzarc(httpURLConnection));
                    } catch (Throwable th2) {
                        th = th2;
                        z10 = true;
                        if (!z10) {
                            httpURLConnection.disconnect();
                        }
                        throw th;
                    }
                }
                zzarb zzarbVar = new zzarb(responseCode, zzb(httpURLConnection.getHeaderFields()), -1, null);
                httpURLConnection.disconnect();
                return zzarbVar;
            }
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public zzare(zzard zzardVar, SSLSocketFactory sSLSocketFactory) {
    }
}
