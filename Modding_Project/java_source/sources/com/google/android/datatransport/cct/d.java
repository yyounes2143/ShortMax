package com.google.android.datatransport.cct;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.autofill.HintConstants;
import androidx.browser.trusted.sharing.ShareTarget;
import c5.h;
import c5.i;
import com.applovin.sdk.AppLovinEventTypes;
import com.appsflyer.AdRevenueScheme;
import com.google.android.datatransport.cct.d;
import com.google.android.datatransport.cct.internal.ClientInfo;
import com.google.android.datatransport.cct.internal.ComplianceData;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
import com.google.android.datatransport.cct.internal.QosTier;
import com.google.android.datatransport.cct.internal.m;
import com.google.android.datatransport.cct.internal.n;
import com.google.android.datatransport.cct.internal.o;
import com.google.android.datatransport.cct.internal.p;
import com.google.android.datatransport.cct.internal.q;
import com.google.android.datatransport.cct.internal.r;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.firebase.encoders.EncodingException;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.foundation.download.Command;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import d5.k;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CctTransportBackend.java */
/* loaded from: classes4.dex */
public final class d implements k {

    /* renamed from: a  reason: collision with root package name */
    private final p8.a f17015a;

    /* renamed from: b  reason: collision with root package name */
    private final ConnectivityManager f17016b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f17017c;

    /* renamed from: d  reason: collision with root package name */
    final URL f17018d;

    /* renamed from: e  reason: collision with root package name */
    private final m5.a f17019e;

    /* renamed from: f  reason: collision with root package name */
    private final m5.a f17020f;

    /* renamed from: g  reason: collision with root package name */
    private final int f17021g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CctTransportBackend.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final URL f17022a;

        /* renamed from: b  reason: collision with root package name */
        final m f17023b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        final String f17024c;

        a(URL url, m mVar, @Nullable String str) {
            this.f17022a = url;
            this.f17023b = mVar;
            this.f17024c = str;
        }

        a a(URL url) {
            return new a(url, this.f17023b, this.f17024c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CctTransportBackend.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final int f17025a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        final URL f17026b;

        /* renamed from: c  reason: collision with root package name */
        final long f17027c;

        b(int i10, @Nullable URL url, long j10) {
            this.f17025a = i10;
            this.f17026b = url;
            this.f17027c = j10;
        }
    }

    d(Context context, m5.a aVar, m5.a aVar2, int i10) {
        this.f17015a = m.b();
        this.f17017c = context;
        this.f17016b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f17018d = o(com.google.android.datatransport.cct.a.f17006c);
        this.f17019e = aVar2;
        this.f17020f = aVar;
        this.f17021g = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b e(a aVar) throws IOException {
        g5.a.f("CctTransportBackend", "Making request to: %s", aVar.f17022a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) aVar.f17022a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(this.f17021g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
        httpURLConnection.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, String.format("datatransport/%s android/", "3.3.0"));
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = aVar.f17024c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                this.f17015a.a(aVar.f17023b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                gZIPOutputStream.close();
                if (outputStream != null) {
                    outputStream.close();
                }
                int responseCode = httpURLConnection.getResponseCode();
                g5.a.f("CctTransportBackend", "Status Code: %d", Integer.valueOf(responseCode));
                g5.a.b("CctTransportBackend", "Content-Type: %s", httpURLConnection.getHeaderField(CommonGatewayClient.HEADER_CONTENT_TYPE));
                g5.a.b("CctTransportBackend", "Content-Encoding: %s", httpURLConnection.getHeaderField("Content-Encoding"));
                if (responseCode != 302 && responseCode != 301 && responseCode != 307) {
                    if (responseCode != 200) {
                        return new b(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream n10 = n(inputStream, httpURLConnection.getHeaderField("Content-Encoding"));
                        b bVar = new b(responseCode, null, b5.b.b(new BufferedReader(new InputStreamReader(n10))).c());
                        if (n10 != null) {
                            n10.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        return bVar;
                    } catch (Throwable th2) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
                return new b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
            } catch (Throwable th4) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th5) {
                        th4.addSuppressed(th5);
                    }
                }
                throw th4;
            }
        } catch (EncodingException e10) {
            e = e10;
            g5.a.d("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b(400, null, 0L);
        } catch (ConnectException e11) {
            e = e11;
            g5.a.d("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (UnknownHostException e12) {
            e = e12;
            g5.a.d("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (IOException e13) {
            e = e13;
            g5.a.d("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b(400, null, 0L);
        }
    }

    private static String f(Context context) {
        String simOperator = k(context).getSimOperator();
        if (simOperator != null) {
            return simOperator;
        }
        return "";
    }

    private static int g(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return NetworkConnectionInfo.MobileSubtype.UNKNOWN_MOBILE_SUBTYPE.getValue();
        }
        int subtype = networkInfo.getSubtype();
        if (subtype == -1) {
            return NetworkConnectionInfo.MobileSubtype.COMBINED.getValue();
        }
        if (NetworkConnectionInfo.MobileSubtype.forNumber(subtype) == null) {
            return 0;
        }
        return subtype;
    }

    private static int h(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return NetworkConnectionInfo.NetworkType.NONE.getValue();
        }
        return networkInfo.getType();
    }

    private static int i(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e10) {
            g5.a.d("CctTransportBackend", "Unable to find version code for package", e10);
            return -1;
        }
    }

    private m j(d5.e eVar) {
        q.a l10;
        HashMap hashMap = new HashMap();
        for (i iVar : eVar.b()) {
            String n10 = iVar.n();
            if (!hashMap.containsKey(n10)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(iVar);
                hashMap.put(n10, arrayList);
            } else {
                ((List) hashMap.get(n10)).add(iVar);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            i iVar2 = (i) ((List) entry.getValue()).get(0);
            r.a b10 = r.a().f(QosTier.DEFAULT).g(this.f17020f.getTime()).h(this.f17019e.getTime()).b(ClientInfo.a().c(ClientInfo.ClientType.ANDROID_FIREBASE).b(com.google.android.datatransport.cct.internal.a.a().m(Integer.valueOf(iVar2.i("sdk-version"))).j(iVar2.b("model")).f(iVar2.b("hardware")).d(iVar2.b("device")).l(iVar2.b(AppLovinEventTypes.USER_VIEWED_PRODUCT)).k(iVar2.b("os-uild")).h(iVar2.b("manufacturer")).e(iVar2.b(HiAnalyticsConstant.HaKey.BI_KEY_FINGERPRINT)).c(iVar2.b(AdRevenueScheme.COUNTRY)).g(iVar2.b("locale")).i(iVar2.b("mcc_mnc")).b(iVar2.b("application_build")).a()).a());
            try {
                b10.i(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException unused) {
                b10.j((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (i iVar3 : (List) entry.getValue()) {
                h e10 = iVar3.e();
                a5.c b11 = e10.b();
                if (b11.equals(a5.c.b("proto"))) {
                    l10 = q.l(e10.a());
                } else if (b11.equals(a5.c.b("json"))) {
                    l10 = q.k(new String(e10.a(), Charset.forName("UTF-8")));
                } else {
                    g5.a.g("CctTransportBackend", "Received event of unsupported encoding %s. Skipping...", b11);
                }
                l10.d(iVar3.f()).e(iVar3.o()).j(iVar3.j("tz-offset")).g(NetworkConnectionInfo.a().c(NetworkConnectionInfo.NetworkType.forNumber(iVar3.i("net-type"))).b(NetworkConnectionInfo.MobileSubtype.forNumber(iVar3.i("mobile-subtype"))).a());
                if (iVar3.d() != null) {
                    l10.c(iVar3.d());
                }
                if (iVar3.l() != null) {
                    l10.b(ComplianceData.a().b(p.a().b(o.a().b(iVar3.l()).a()).a()).c(ComplianceData.ProductIdOrigin.EVENT_OVERRIDE).a());
                }
                if (iVar3.g() != null || iVar3.h() != null) {
                    n.a a10 = n.a();
                    if (iVar3.g() != null) {
                        a10.b(iVar3.g());
                    }
                    if (iVar3.h() != null) {
                        a10.c(iVar3.h());
                    }
                    l10.f(a10.a());
                }
                arrayList3.add(l10.a());
            }
            b10.c(arrayList3);
            arrayList2.add(b10.a());
        }
        return m.a(arrayList2);
    }

    private static TelephonyManager k(Context context) {
        return (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
    }

    @VisibleForTesting
    static long l() {
        Calendar.getInstance();
        return TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a m(a aVar, b bVar) {
        URL url = bVar.f17026b;
        if (url != null) {
            g5.a.b("CctTransportBackend", "Following redirect to: %s", url);
            return aVar.a(bVar.f17026b);
        }
        return null;
    }

    private static InputStream n(InputStream inputStream, String str) throws IOException {
        if ("gzip".equals(str)) {
            return new GZIPInputStream(inputStream);
        }
        return inputStream;
    }

    private static URL o(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e10) {
            throw new IllegalArgumentException("Invalid url: " + str, e10);
        }
    }

    @Override // d5.k
    public i a(i iVar) {
        NetworkInfo activeNetworkInfo = this.f17016b.getActiveNetworkInfo();
        return iVar.p().a("sdk-version", Build.VERSION.SDK_INT).c("model", Build.MODEL).c("hardware", Build.HARDWARE).c("device", Build.DEVICE).c(AppLovinEventTypes.USER_VIEWED_PRODUCT, Build.PRODUCT).c("os-uild", Build.ID).c("manufacturer", Build.MANUFACTURER).c(HiAnalyticsConstant.HaKey.BI_KEY_FINGERPRINT, Build.FINGERPRINT).b("tz-offset", l()).a("net-type", h(activeNetworkInfo)).a("mobile-subtype", g(activeNetworkInfo)).c(AdRevenueScheme.COUNTRY, Locale.getDefault().getCountry()).c("locale", Locale.getDefault().getLanguage()).c("mcc_mnc", f(this.f17017c)).c("application_build", Integer.toString(i(this.f17017c))).d();
    }

    @Override // d5.k
    public BackendResponse b(d5.e eVar) {
        m j10 = j(eVar);
        URL url = this.f17018d;
        String str = null;
        if (eVar.c() != null) {
            try {
                com.google.android.datatransport.cct.a c10 = com.google.android.datatransport.cct.a.c(eVar.c());
                if (c10.d() != null) {
                    str = c10.d();
                }
                if (c10.e() != null) {
                    url = o(c10.e());
                }
            } catch (IllegalArgumentException unused) {
                return BackendResponse.a();
            }
        }
        try {
            b bVar = (b) h5.b.a(5, new a(url, j10, str), new h5.a() { // from class: com.google.android.datatransport.cct.b
                @Override // h5.a
                public final Object apply(Object obj) {
                    d.b e10;
                    e10 = d.this.e((d.a) obj);
                    return e10;
                }
            }, new h5.c() { // from class: com.google.android.datatransport.cct.c
                @Override // h5.c
                public final Object a(Object obj, Object obj2) {
                    d.a m10;
                    m10 = d.m((d.a) obj, (d.b) obj2);
                    return m10;
                }
            });
            int i10 = bVar.f17025a;
            if (i10 == 200) {
                return BackendResponse.e(bVar.f17027c);
            }
            if (i10 < 500 && i10 != 404) {
                if (i10 == 400) {
                    return BackendResponse.d();
                }
                return BackendResponse.a();
            }
            return BackendResponse.f();
        } catch (IOException e10) {
            g5.a.d("CctTransportBackend", "Could not make request to the backend", e10);
            return BackendResponse.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context, m5.a aVar, m5.a aVar2) {
        this(context, aVar, aVar2, 130000);
    }
}
