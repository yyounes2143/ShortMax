package com.inmobi.media;

import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class H9 {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f23704a = 0;

    static {
        Intrinsics.checkNotNullExpressionValue(H9.class.getSimpleName(), "getSimpleName(...)");
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x01a1, code lost:
        if (kotlin.collections.CollectionsKt.g0(r1, r3 != null ? r3.f23737a : null) != false) goto L15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0115 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01b1  */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.net.HttpURLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.inmobi.media.C3260yc a(com.inmobi.media.C3196uc r10, kotlin.jvm.functions.Function2 r11) {
        /*
            Method dump skipped, instructions count: 473
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.H9.a(com.inmobi.media.uc, kotlin.jvm.functions.Function2):com.inmobi.media.yc");
    }

    public static HttpURLConnection a(C3196uc c3196uc, String str) {
        URLConnection openConnection = new URL(str).openConnection();
        Intrinsics.checkNotNull(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
        httpURLConnection.setConnectTimeout(c3196uc.f25341i);
        httpURLConnection.setReadTimeout(c3196uc.f25342j);
        httpURLConnection.setUseCaches(false);
        HashMap hashMap = c3196uc.f25335c;
        if (hashMap != null) {
            for (Map.Entry entry : hashMap.entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
        }
        httpURLConnection.setRequestMethod(c3196uc.f25334b.name());
        if (EnumC3148rc.f25246a != c3196uc.f25334b) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
        }
        return httpURLConnection;
    }

    public static void a(String str, HttpURLConnection httpURLConnection, boolean z10) {
        OutputStream bufferedOutputStream;
        OutputStream outputStream = null;
        try {
            if (z10) {
                bufferedOutputStream = new GZIPOutputStream(httpURLConnection.getOutputStream(), 4096);
            } else {
                bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
            }
            outputStream = bufferedOutputStream;
            byte[] bytes = str.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            outputStream.write(bytes);
            outputStream.flush();
            T9.a(outputStream);
        } catch (Throwable th2) {
            T9.a(outputStream);
            throw th2;
        }
    }

    public static C3260yc a(C3196uc c3196uc, HttpURLConnection httpURLConnection) {
        EnumC3093o4 enumC3093o4;
        String str;
        JSONObject jSONObject;
        C3260yc c3260yc = new C3260yc();
        int responseCode = httpURLConnection.getResponseCode();
        c3260yc.f25471d = Integer.valueOf(responseCode);
        c3260yc.f25469b = httpURLConnection.getHeaderFields();
        c3260yc.f25472e = httpURLConnection.getContentLength();
        if (c3196uc.f25343k) {
            return c3260yc;
        }
        if (responseCode == 200) {
            InputStream inputStream = httpURLConnection.getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
            a(c3260yc, inputStream);
        } else {
            EnumC3093o4.f25088b.getClass();
            if (400 <= responseCode && 500 > responseCode) {
                enumC3093o4 = EnumC3093o4.f25095i;
            } else if (200 < responseCode && 300 > responseCode) {
                enumC3093o4 = EnumC3093o4.f25097k;
            } else {
                enumC3093o4 = (EnumC3093o4) EnumC3093o4.f25089c.get(responseCode);
                if (enumC3093o4 == null) {
                    enumC3093o4 = EnumC3093o4.f25091e;
                }
            }
            if (enumC3093o4 == EnumC3093o4.f25095i) {
                InputStream errorStream = httpURLConnection.getErrorStream();
                Intrinsics.checkNotNullExpressionValue(errorStream, "getErrorStream(...)");
                a(c3260yc, errorStream);
                try {
                    jSONObject = new JSONObject(J9.a(c3260yc.f25470c));
                } catch (JSONException unused) {
                }
                if (jSONObject.has("errorMessage")) {
                    str = jSONObject.getString("errorMessage");
                    c3260yc.f25468a = new I9(enumC3093o4, str);
                }
                str = null;
                c3260yc.f25468a = new I9(enumC3093o4, str);
            } else {
                c3260yc.f25468a = new I9(enumC3093o4, "HTTP:" + responseCode);
            }
        }
        return c3260yc;
    }

    public static void a(C3260yc c3260yc, InputStream inputStream) {
        byte[] a10 = T9.a(inputStream);
        T9.a((Closeable) inputStream);
        if (a10 != null) {
            if (!(a10.length == 0)) {
                Intrinsics.checkNotNullParameter(c3260yc, "<this>");
                Map map = c3260yc.f25469b;
                List list = map != null ? (List) map.get("Content-Encoding") : null;
                if (Intrinsics.areEqual(list != null ? (String) list.get(0) : null, "gzip") && (a10 = T9.a(a10)) == null) {
                    c3260yc.f25468a = new I9(EnumC3093o4.f25094h, "Failed to uncompress gzip response");
                }
                if (a10 != null) {
                    c3260yc.f25470c = a10;
                }
            }
        }
    }
}
