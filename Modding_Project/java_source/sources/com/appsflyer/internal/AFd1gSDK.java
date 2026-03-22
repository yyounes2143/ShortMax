package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.internal.components.network.http.exceptions.HttpException;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class AFd1gSDK {
    private final int getRevenue;

    public AFd1gSDK(int i10) {
        this.getRevenue = i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006c  */
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String getMediationNetwork(java.net.HttpURLConnection r11) throws java.io.IOException {
        /*
            java.lang.String r0 = ""
            r1 = 0
            java.io.InputStream r11 = r11.getInputStream()     // Catch: java.lang.Throwable -> L8 java.lang.Exception -> Lb
            goto L27
        L8:
            r11 = move-exception
            r0 = r1
            goto L65
        Lb:
            r5 = move-exception
            java.io.InputStream r11 = r11.getErrorStream()     // Catch: java.lang.Throwable -> L8
            com.appsflyer.AFLogger r2 = com.appsflyer.AFLogger.INSTANCE     // Catch: java.lang.Throwable -> L8
            com.appsflyer.internal.AFg1cSDK r3 = com.appsflyer.internal.AFg1cSDK.HTTP_CLIENT     // Catch: java.lang.Throwable -> L8
            java.lang.String r4 = r5.getMessage()     // Catch: java.lang.Throwable -> L8
            if (r4 == 0) goto L1f
            java.lang.String r4 = r5.getMessage()     // Catch: java.lang.Throwable -> L8
            goto L20
        L1f:
            r4 = r0
        L20:
            r8 = 0
            r9 = 0
            r6 = 0
            r7 = 0
            r2.e(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L8
        L27:
            if (r11 != 0) goto L2a
            return r0
        L2a:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8
            r0.<init>()     // Catch: java.lang.Throwable -> L8
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L8
            java.nio.charset.Charset r3 = java.nio.charset.Charset.defaultCharset()     // Catch: java.lang.Throwable -> L8
            r2.<init>(r11, r3)     // Catch: java.lang.Throwable -> L8
            java.io.BufferedReader r11 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L62
            r11.<init>(r2)     // Catch: java.lang.Throwable -> L62
            r1 = 1
        L3e:
            java.lang.String r3 = r11.readLine()     // Catch: java.lang.Throwable -> L4c
            if (r3 == 0) goto L57
            if (r1 != 0) goto L52
            r1 = 10
            r0.append(r1)     // Catch: java.lang.Throwable -> L4c
            goto L52
        L4c:
            r0 = move-exception
            r1 = r2
            r10 = r0
            r0 = r11
            r11 = r10
            goto L65
        L52:
            r0.append(r3)     // Catch: java.lang.Throwable -> L4c
            r1 = 0
            goto L3e
        L57:
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L4c
            r2.close()
            r11.close()
            return r0
        L62:
            r11 = move-exception
            r0 = r1
            r1 = r2
        L65:
            if (r1 == 0) goto L6a
            r1.close()
        L6a:
            if (r0 == 0) goto L6f
            r0.close()
        L6f:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1gSDK.getMediationNetwork(java.net.HttpURLConnection):java.lang.String");
    }

    public final AFe1wSDK<String> getCurrencyIso4217Code(AFd1bSDK aFd1bSDK) throws IOException {
        HttpURLConnection httpURLConnection;
        String str;
        boolean z10;
        String str2;
        BufferedOutputStream bufferedOutputStream;
        String str3;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            byte[] revenue = aFd1bSDK.getRevenue();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(aFd1bSDK.getMonetizationNetwork);
            sb2.append(":");
            sb2.append(aFd1bSDK.getMediationNetwork);
            StringBuilder sb3 = new StringBuilder(sb2.toString());
            byte[] revenue2 = aFd1bSDK.getRevenue();
            if (aFd1bSDK.getMonetizationNetwork() && revenue2 != null) {
                try {
                    if (aFd1bSDK.getMediationNetwork()) {
                        str3 = "<encrypted>";
                    } else {
                        str3 = new String(revenue2, Charset.defaultCharset());
                    }
                    sb3.append("\n payload: ");
                    sb3.append(str3);
                } catch (Throwable th2) {
                    th = th2;
                    httpURLConnection = null;
                    try {
                        AFd1aSDK aFd1aSDK = new AFd1aSDK(System.currentTimeMillis() - currentTimeMillis);
                        StringBuilder sb4 = new StringBuilder("error: ");
                        sb4.append(th);
                        sb4.append("\n took ");
                        sb4.append(aFd1aSDK.getMediationNetwork);
                        sb4.append("ms");
                        String obj = sb4.toString();
                        AFLogger aFLogger = AFLogger.INSTANCE;
                        AFg1cSDK aFg1cSDK = AFg1cSDK.HTTP_CLIENT;
                        StringBuilder sb5 = new StringBuilder("[");
                        sb5.append(aFd1bSDK.hashCode());
                        sb5.append("] ");
                        sb5.append(obj);
                        aFLogger.e(aFg1cSDK, sb5.toString(), th, false, false, false);
                        throw new HttpException(th, aFd1aSDK);
                    } catch (Throwable th3) {
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        throw th3;
                    }
                }
            }
            for (Map.Entry<String, String> entry : aFd1bSDK.AFAdRevenueData.entrySet()) {
                sb3.append("\n ");
                sb3.append(entry.getKey());
                sb3.append(": ");
                sb3.append(entry.getValue());
            }
            StringBuilder sb6 = new StringBuilder("[");
            sb6.append(aFd1bSDK.hashCode());
            sb6.append("] ");
            sb6.append((Object) sb3);
            AFLogger.INSTANCE.d(AFg1cSDK.HTTP_CLIENT, sb6.toString());
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(aFd1bSDK.getMediationNetwork).openConnection();
            try {
                httpURLConnection2.setRequestMethod(aFd1bSDK.getMonetizationNetwork);
                if (aFd1bSDK.getCurrencyIso4217Code()) {
                    httpURLConnection2.setUseCaches(false);
                }
                if (!aFd1bSDK.component1()) {
                    httpURLConnection2.setInstanceFollowRedirects(false);
                }
                try {
                    int i10 = this.getRevenue;
                    int i11 = aFd1bSDK.component4;
                    if (i11 != -1) {
                        i10 = i11;
                    }
                    httpURLConnection2.setConnectTimeout(i10);
                    httpURLConnection2.setReadTimeout(i10);
                    if (aFd1bSDK.getMediationNetwork()) {
                        str = "application/octet-stream";
                    } else {
                        str = "application/json";
                    }
                    httpURLConnection2.addRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, str);
                    for (Map.Entry<String, String> entry2 : aFd1bSDK.AFAdRevenueData.entrySet()) {
                        httpURLConnection2.setRequestProperty(entry2.getKey(), entry2.getValue());
                    }
                    if (revenue != null) {
                        httpURLConnection2.setDoOutput(true);
                        StringBuilder sb7 = new StringBuilder();
                        sb7.append(revenue.length);
                        httpURLConnection2.setRequestProperty("Content-Length", sb7.toString());
                        try {
                            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(httpURLConnection2.getOutputStream());
                            try {
                                bufferedOutputStream2.write(revenue);
                                bufferedOutputStream2.close();
                            } catch (Throwable th4) {
                                th = th4;
                                bufferedOutputStream = bufferedOutputStream2;
                                if (bufferedOutputStream != null) {
                                    bufferedOutputStream.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            bufferedOutputStream = null;
                        }
                    }
                    if (httpURLConnection2.getResponseCode() / 100 == 2) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (!aFd1bSDK.AFAdRevenueData()) {
                        str2 = "";
                    } else {
                        str2 = getMediationNetwork(httpURLConnection2);
                    }
                    AFd1aSDK aFd1aSDK2 = new AFd1aSDK(System.currentTimeMillis() - currentTimeMillis);
                    StringBuilder sb8 = new StringBuilder("response code:");
                    sb8.append(httpURLConnection2.getResponseCode());
                    sb8.append(" ");
                    sb8.append(httpURLConnection2.getResponseMessage());
                    sb8.append("\n body:");
                    sb8.append(str2);
                    sb8.append("\n took ");
                    sb8.append(aFd1aSDK2.getMediationNetwork);
                    sb8.append("ms");
                    String obj2 = sb8.toString();
                    AFLogger aFLogger2 = AFLogger.INSTANCE;
                    AFg1cSDK aFg1cSDK2 = AFg1cSDK.HTTP_CLIENT;
                    StringBuilder sb9 = new StringBuilder("[");
                    sb9.append(aFd1bSDK.hashCode());
                    sb9.append("] ");
                    sb9.append(obj2);
                    aFLogger2.d(aFg1cSDK2, sb9.toString());
                    HashMap hashMap = new HashMap(httpURLConnection2.getHeaderFields());
                    hashMap.remove(null);
                    AFe1wSDK<String> aFe1wSDK = new AFe1wSDK<>(str2, httpURLConnection2.getResponseCode(), z10, hashMap, aFd1aSDK2);
                    httpURLConnection2.disconnect();
                    return aFe1wSDK;
                } catch (Throwable th6) {
                    th = th6;
                    httpURLConnection = httpURLConnection2;
                    AFd1aSDK aFd1aSDK3 = new AFd1aSDK(System.currentTimeMillis() - currentTimeMillis);
                    StringBuilder sb42 = new StringBuilder("error: ");
                    sb42.append(th);
                    sb42.append("\n took ");
                    sb42.append(aFd1aSDK3.getMediationNetwork);
                    sb42.append("ms");
                    String obj3 = sb42.toString();
                    AFLogger aFLogger3 = AFLogger.INSTANCE;
                    AFg1cSDK aFg1cSDK3 = AFg1cSDK.HTTP_CLIENT;
                    StringBuilder sb52 = new StringBuilder("[");
                    sb52.append(aFd1bSDK.hashCode());
                    sb52.append("] ");
                    sb52.append(obj3);
                    aFLogger3.e(aFg1cSDK3, sb52.toString(), th, false, false, false);
                    throw new HttpException(th, aFd1aSDK3);
                }
            } catch (Throwable th7) {
                th = th7;
            }
        } catch (Throwable th8) {
            th = th8;
            httpURLConnection = null;
        }
    }
}
