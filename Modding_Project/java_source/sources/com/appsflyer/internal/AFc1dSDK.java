package com.appsflyer.internal;

import androidx.annotation.WorkerThread;
import androidx.browser.trusted.sharing.ShareTarget;
import com.appsflyer.AFLogger;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
@SourceDebugExtension({"SMAP\nMonitorHttpRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MonitorHttpRequest.kt\ncom/appsflyer/internal/components/monitorsdk/MonitorHttpRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n215#2,2:135\n215#2,2:138\n1#3:137\n*S KotlinDebug\n*F\n+ 1 MonitorHttpRequest.kt\ncom/appsflyer/internal/components/monitorsdk/MonitorHttpRequest\n*L\n58#1:135,2\n104#1:138,2\n*E\n"})
/* loaded from: classes2.dex */
public abstract class AFc1dSDK {
    public int AFAdRevenueData;
    private final boolean getCurrencyIso4217Code;
    @Nullable
    public Map<String, String> getMonetizationNetwork;
    @NotNull
    public byte[] getRevenue;

    public AFc1dSDK(@NotNull byte[] bArr, @Nullable Map<String, String> map, int i10) {
        Intrinsics.checkNotNullParameter(bArr, "");
        this.getRevenue = bArr;
        this.getMonetizationNetwork = map;
        this.AFAdRevenueData = i10;
        this.getCurrencyIso4217Code = true;
    }

    private static String getMonetizationNetwork(HttpURLConnection httpURLConnection) throws IOException {
        InputStream errorStream;
        try {
            errorStream = httpURLConnection.getInputStream();
        } catch (Throwable th2) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.HTTP_CLIENT;
            String message = th2.getMessage();
            if (message == null) {
                message = "";
            }
            AFh1ySDK.e$default(aFLogger, aFg1cSDK, message, th2, false, false, false, false, 96, null);
            errorStream = httpURLConnection.getErrorStream();
        }
        if (errorStream == null) {
            return "";
        }
        Intrinsics.checkNotNullExpressionValue(errorStream, "");
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, Charsets.UTF_8), 8192);
        String A0 = CollectionsKt.A0(ws.n.f(bufferedReader), null, null, null, 0, null, null, 63, null);
        bufferedReader.close();
        if (A0 == null) {
            return "";
        }
        return A0;
    }

    @NotNull
    public abstract String AFAdRevenueData(@NotNull String str);

    @WorkerThread
    public final boolean AFAdRevenueData() {
        long currentTimeMillis = System.currentTimeMillis();
        HttpURLConnection httpURLConnection = null;
        try {
            String currencyIso4217Code = getCurrencyIso4217Code();
            Intrinsics.checkNotNullParameter(currencyIso4217Code, "");
            URLConnection openConnection = new URL(currencyIso4217Code).openConnection();
            Intrinsics.checkNotNull(openConnection, "");
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) openConnection;
            try {
                boolean revenue = getRevenue(httpURLConnection2, currentTimeMillis);
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                    return revenue;
                }
                return revenue;
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection = httpURLConnection2;
                try {
                    String str = "error: " + th + "\n\ttook " + (System.currentTimeMillis() - currentTimeMillis) + "ms\n\t" + th.getMessage();
                    String AFAdRevenueData = AFAdRevenueData("HTTP: [" + (httpURLConnection != null ? httpURLConnection.hashCode() : 0) + "] " + str);
                    if (getRevenue()) {
                        AFLogger.afRDLog(AFAdRevenueData);
                    } else {
                        AFLogger.afVerboseLog(AFAdRevenueData);
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return false;
                } catch (Throwable th3) {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @NotNull
    public abstract String getCurrencyIso4217Code();

    @NotNull
    public abstract AFd1jSDK getMediationNetwork();

    public boolean getRevenue() {
        return this.getCurrencyIso4217Code;
    }

    private final boolean getRevenue(HttpURLConnection httpURLConnection, long j10) {
        httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
        StringBuilder sb2 = new StringBuilder(httpURLConnection.getRequestMethod() + ":" + httpURLConnection.getURL());
        sb2.append("\n length: ");
        sb2.append(new String(this.getRevenue, Charsets.UTF_8).length());
        Map<String, String> map = this.getMonetizationNetwork;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb2.append("\n ");
                sb2.append(entry.getKey());
                sb2.append(": ");
                sb2.append(entry.getValue());
            }
        }
        String AFAdRevenueData = AFAdRevenueData("HTTP: [" + httpURLConnection.hashCode() + "] " + ((Object) sb2));
        if (getRevenue()) {
            AFLogger.afRDLog(AFAdRevenueData);
        } else {
            AFLogger.afVerboseLog(AFAdRevenueData);
        }
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setReadTimeout(this.AFAdRevenueData);
        httpURLConnection.setConnectTimeout(this.AFAdRevenueData);
        httpURLConnection.addRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, getMediationNetwork().getCurrencyIso4217Code);
        Map<String, String> map2 = this.getMonetizationNetwork;
        if (map2 != null) {
            for (Map.Entry<String, String> entry2 : map2.entrySet()) {
                httpURLConnection.addRequestProperty(entry2.getKey(), entry2.getValue());
            }
        }
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestProperty("Content-Length", String.valueOf(this.getRevenue.length));
        OutputStream outputStream = httpURLConnection.getOutputStream();
        Intrinsics.checkNotNullExpressionValue(outputStream, "");
        BufferedOutputStream bufferedOutputStream = outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, 8192);
        bufferedOutputStream.write(this.getRevenue);
        bufferedOutputStream.close();
        String monetizationNetwork = getMonetizationNetwork(httpURLConnection);
        long currentTimeMillis = System.currentTimeMillis() - j10;
        String str = "response code:" + httpURLConnection.getResponseCode() + " " + httpURLConnection.getResponseMessage() + "\n\tbody:" + monetizationNetwork + "\n\ttook " + currentTimeMillis + "ms";
        String AFAdRevenueData2 = AFAdRevenueData("HTTP: [" + httpURLConnection.hashCode() + "] " + str);
        if (getRevenue()) {
            AFLogger.afRDLog(AFAdRevenueData2);
        } else {
            AFLogger.afVerboseLog(AFAdRevenueData2);
        }
        return AFd1qSDK.getCurrencyIso4217Code(httpURLConnection);
    }
}
