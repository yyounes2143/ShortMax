package com.appsflyer.internal;

import android.net.Uri;
import androidx.annotation.NonNull;
import com.appsflyer.AFLogger;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class AFf1zSDK extends AFe1mSDK<Map<String, Object>> {
    private static final int component2 = (int) TimeUnit.SECONDS.toMillis(2);
    private Map<String, Object> areAllFieldsValid;
    private final AFa1mSDK component1;
    private final AFa1jSDK component3;
    private final Uri component4;
    private final List<String> copy;

    public AFf1zSDK(AFa1mSDK aFa1mSDK, @NonNull AFa1jSDK aFa1jSDK, @NonNull Uri uri, @NonNull List<String> list) {
        super(AFe1pSDK.RESOLVE_ESP, new AFe1pSDK[]{AFe1pSDK.RC_CDN}, "ResolveEsp");
        this.component1 = aFa1mSDK;
        this.component3 = aFa1jSDK;
        this.component4 = uri;
        this.copy = list;
    }

    private boolean getMediationNetwork(String str) {
        if (str.contains("af_tranid=")) {
            return false;
        }
        StringBuilder sb2 = new StringBuilder("Validate if link ");
        sb2.append(str);
        sb2.append(" belongs to ESP domains: ");
        sb2.append(this.copy);
        AFLogger.afRDLog(sb2.toString());
        try {
            return this.copy.contains(new URL(str).getHost());
        } catch (MalformedURLException e10) {
            AFLogger.afErrorLogForExcManagerOnly("MalformedURLException ESP link", e10);
            return false;
        }
    }

    private static Map<String, Object> r_(Uri uri) {
        HashMap hashMap = new HashMap();
        try {
            StringBuilder sb2 = new StringBuilder("ESP deeplink resolving is started: ");
            sb2.append(uri.toString());
            AFLogger.afDebugLog(sb2.toString());
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri.toString()).openConnection();
            httpURLConnection.setInstanceFollowRedirects(false);
            int i10 = component2;
            httpURLConnection.setReadTimeout(i10);
            httpURLConnection.setConnectTimeout(i10);
            httpURLConnection.setRequestProperty("User-agent", "Dalvik/2.1.0 (Linux; U; Android 6.0.1; Nexus 5 Build/M4B30Z)");
            httpURLConnection.setRequestProperty("af-esp", "6.17.5");
            int responseCode = httpURLConnection.getResponseCode();
            hashMap.put("status", Integer.valueOf(responseCode));
            if (300 <= responseCode && responseCode <= 305) {
                hashMap.put("res", httpURLConnection.getHeaderField("Location"));
            }
            httpURLConnection.disconnect();
            AFLogger.afDebugLog("ESP deeplink resolving is finished");
        } catch (Throwable th2) {
            hashMap.put("error", th2.getLocalizedMessage());
            AFLogger.afErrorLog(th2.getMessage(), th2);
        }
        return hashMap;
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    public final long AFAdRevenueData() {
        return ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    public final boolean getMonetizationNetwork() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    @NonNull
    public final AFe1uSDK getRevenue() throws Exception {
        String str;
        int i10;
        Uri uri;
        Integer num = null;
        if (!getMediationNetwork(this.component4.toString())) {
            this.component1.j_(this.component3, this.component4, null);
            return AFe1uSDK.SUCCESS;
        }
        long currentTimeMillis = System.currentTimeMillis();
        String obj = this.component4.toString();
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        String str2 = null;
        while (i11 < 5) {
            Map<String, Object> r_ = r_(Uri.parse(obj));
            String str3 = (String) r_.get("res");
            Integer num2 = (Integer) r_.get("status");
            String str4 = (String) r_.get("error");
            if (str3 != null && getMediationNetwork(str3)) {
                if (i11 < 4) {
                    arrayList.add(str3);
                }
                i11++;
                str2 = str4;
                obj = str3;
                num = num2;
            } else {
                str2 = str4;
                obj = str3;
                num = num2;
                break;
            }
        }
        HashMap hashMap = new HashMap();
        if (obj != null) {
            str = obj;
        } else {
            str = "";
        }
        hashMap.put("res", str);
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = -1;
        }
        hashMap.put("status", Integer.valueOf(i10));
        if (str2 != null) {
            hashMap.put("error", str2);
        }
        if (!arrayList.isEmpty()) {
            hashMap.put("redirects", arrayList);
        }
        hashMap.put("latency", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
        synchronized (this.component3) {
            this.component3.getRevenue("af_deeplink_r", hashMap);
            this.component3.getRevenue("af_deeplink", this.component4.toString());
        }
        AFa1mSDK aFa1mSDK = this.component1;
        AFa1jSDK aFa1jSDK = this.component3;
        if (obj != null) {
            uri = Uri.parse(obj);
        } else {
            uri = this.component4;
        }
        aFa1mSDK.j_(aFa1jSDK, uri, this.component4);
        this.areAllFieldsValid = hashMap;
        return AFe1uSDK.SUCCESS;
    }
}
