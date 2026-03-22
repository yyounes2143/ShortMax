package com.mbridge.msdk.click;

import android.text.TextUtils;
import android.webkit.URLUtil;
import androidx.browser.trusted.sharing.ShareTarget;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.net.MBridgeHostnameVerifier;
import com.mbridge.msdk.foundation.tools.l0;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
/* compiled from: JavaHttpSpider.java */
/* loaded from: classes4.dex */
public class i {

    /* renamed from: f  reason: collision with root package name */
    private static final String f26021f = "i";

    /* renamed from: a  reason: collision with root package name */
    private com.mbridge.msdk.setting.g f26022a;

    /* renamed from: b  reason: collision with root package name */
    private String f26023b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f26024c = true;

    /* renamed from: d  reason: collision with root package name */
    private final int f26025d = 3145728;

    /* renamed from: e  reason: collision with root package name */
    private com.mbridge.msdk.click.entity.a f26026e;

    public i() {
        com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        this.f26022a = d10;
        if (d10 == null) {
            this.f26022a = com.mbridge.msdk.setting.h.b().a();
        }
    }

    public com.mbridge.msdk.click.entity.a a(String str, boolean z10, boolean z11, CampaignEx campaignEx) {
        HttpsURLConnection httpsURLConnection;
        int i10;
        HttpsURLConnection httpsURLConnection2 = null;
        if (URLUtil.isNetworkUrl(str)) {
            String replace = str.replace(" ", "%20");
            this.f26026e = new com.mbridge.msdk.click.entity.a();
            try {
                httpsURLConnection = (HttpsURLConnection) new URL(replace).openConnection();
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                httpsURLConnection.setHostnameVerifier(new MBridgeHostnameVerifier(replace));
                httpsURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                if ((!z10 && !z11) || campaignEx == null) {
                    httpsURLConnection.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, l0.i());
                }
                if (z10 && campaignEx != null && campaignEx.getcUA() == 1) {
                    httpsURLConnection.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, l0.i());
                }
                if (z11 && campaignEx != null && campaignEx.getImpUA() == 1) {
                    httpsURLConnection.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, l0.i());
                }
                httpsURLConnection.setRequestProperty("Accept-Encoding", "gzip");
                if (this.f26022a.I0() && !TextUtils.isEmpty(this.f26023b)) {
                    httpsURLConnection.setRequestProperty("referer", this.f26023b);
                }
                httpsURLConnection.setConnectTimeout(60000);
                httpsURLConnection.setReadTimeout(60000);
                httpsURLConnection.setInstanceFollowRedirects(false);
                httpsURLConnection.connect();
                this.f26026e.f25999a = httpsURLConnection.getHeaderField("Location");
                this.f26026e.f26002d = httpsURLConnection.getHeaderField("Referer");
                this.f26026e.f26004f = httpsURLConnection.getResponseCode();
                this.f26026e.f26000b = httpsURLConnection.getContentType();
                this.f26026e.f26003e = httpsURLConnection.getContentLength();
                this.f26026e.f26001c = httpsURLConnection.getContentEncoding();
                boolean equalsIgnoreCase = "gzip".equalsIgnoreCase(this.f26026e.f26001c);
                com.mbridge.msdk.click.entity.a aVar = this.f26026e;
                if (aVar.f26004f == 200 && this.f26024c && (i10 = aVar.f26003e) > 0 && i10 < 3145728 && !TextUtils.isEmpty(replace)) {
                    String a10 = a(httpsURLConnection.getInputStream(), equalsIgnoreCase);
                    if (!TextUtils.isEmpty(a10)) {
                        byte[] bytes = a10.getBytes();
                        if (bytes.length > 0 && bytes.length < 3145728) {
                            this.f26026e.f26005g = a10.trim();
                        }
                    }
                }
                this.f26023b = replace;
                httpsURLConnection.disconnect();
                return this.f26026e;
            } catch (Throwable th3) {
                th = th3;
                httpsURLConnection2 = httpsURLConnection;
                try {
                    this.f26026e.f26006h = th.getMessage();
                    return this.f26026e;
                } finally {
                    if (httpsURLConnection2 != null) {
                        httpsURLConnection2.disconnect();
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0036 A[Catch: all -> 0x000f, TryCatch #5 {all -> 0x000f, blocks: (B:4:0x0008, B:9:0x0013, B:23:0x0032, B:25:0x0036, B:26:0x0043), top: B:45:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004e A[Catch: Exception -> 0x002f, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x002f, blocks: (B:18:0x002b, B:28:0x004e), top: B:41:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a(java.io.InputStream r4, boolean r5) {
        /*
            r3 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r1 = 0
            if (r5 == 0) goto L13
            java.util.zip.GZIPInputStream r5 = new java.util.zip.GZIPInputStream     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            r5.<init>(r4)     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            r4 = r5
            goto L13
        Lf:
            r4 = move-exception
            goto L60
        L11:
            r4 = move-exception
            goto L32
        L13:
            java.io.BufferedReader r5 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            r2.<init>(r4)     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            r5.<init>(r2)     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
        L1d:
            java.lang.String r4 = r5.readLine()     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            if (r4 == 0) goto L2b
            r0.append(r4)     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            goto L1d
        L27:
            r4 = move-exception
            goto L61
        L29:
            r4 = move-exception
            goto L31
        L2b:
            r5.close()     // Catch: java.lang.Exception -> L2f
            goto L5b
        L2f:
            r4 = move-exception
            goto L52
        L31:
            r1 = r5
        L32:
            com.mbridge.msdk.click.entity.a r5 = r3.f26026e     // Catch: java.lang.Throwable -> Lf
            if (r5 != 0) goto L43
            com.mbridge.msdk.click.entity.a r5 = new com.mbridge.msdk.click.entity.a     // Catch: java.lang.Throwable -> Lf
            r5.<init>()     // Catch: java.lang.Throwable -> Lf
            r3.f26026e = r5     // Catch: java.lang.Throwable -> Lf
            java.lang.String r2 = r4.getMessage()     // Catch: java.lang.Throwable -> Lf
            r5.f26006h = r2     // Catch: java.lang.Throwable -> Lf
        L43:
            java.lang.String r5 = com.mbridge.msdk.click.i.f26021f     // Catch: java.lang.Throwable -> Lf
            java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Throwable -> Lf
            com.mbridge.msdk.foundation.tools.p0.b(r5, r4)     // Catch: java.lang.Throwable -> Lf
            if (r1 == 0) goto L5b
            r1.close()     // Catch: java.lang.Exception -> L2f
            goto L5b
        L52:
            java.lang.String r5 = com.mbridge.msdk.click.i.f26021f
            java.lang.String r4 = r4.getMessage()
            com.mbridge.msdk.foundation.tools.p0.b(r5, r4)
        L5b:
            java.lang.String r4 = r0.toString()
            return r4
        L60:
            r5 = r1
        L61:
            if (r5 == 0) goto L71
            r5.close()     // Catch: java.lang.Exception -> L67
            goto L71
        L67:
            r5 = move-exception
            java.lang.String r0 = com.mbridge.msdk.click.i.f26021f
            java.lang.String r5 = r5.getMessage()
            com.mbridge.msdk.foundation.tools.p0.b(r0, r5)
        L71:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.i.a(java.io.InputStream, boolean):java.lang.String");
    }
}
