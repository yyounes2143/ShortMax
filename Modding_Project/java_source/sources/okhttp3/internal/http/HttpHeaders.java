package okhttp3.internal.http;

import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpHeaders.kt */
@Metadata
/* loaded from: classes8.dex */
public final class HttpHeaders {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final ByteString f63865a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ByteString f63866b;

    static {
        ByteString.Companion companion = ByteString.Companion;
        f63865a = companion.encodeUtf8("\"\\");
        f63866b = companion.encodeUtf8("\t ,=");
    }

    @NotNull
    public static final List<Challenge> a(@NotNull Headers headers, @NotNull String headerName) {
        Intrinsics.checkNotNullParameter(headers, "<this>");
        Intrinsics.checkNotNullParameter(headerName, "headerName");
        ArrayList arrayList = new ArrayList();
        int size = headers.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (StringsKt.G(headerName, headers.d(i10), true)) {
                try {
                    c(new Buffer().writeUtf8(headers.i(i10)), arrayList);
                } catch (EOFException e10) {
                    Platform.f64128a.g().k("Unable to parse challenge", 5, e10);
                }
            }
        }
        return arrayList;
    }

    public static final boolean b(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "<this>");
        if (Intrinsics.areEqual(response.W().h(), "HEAD")) {
            return false;
        }
        int o10 = response.o();
        if (((o10 >= 100 && o10 < 200) || o10 == 204 || o10 == 304) && Util.v(response) == -1 && !StringsKt.G("chunked", Response.t(response, "Transfer-Encoding", null, 2, null), true)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ba, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00ba, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void c(okio.Buffer r7, java.util.List<okhttp3.Challenge> r8) throws java.io.EOFException {
        /*
            r0 = 0
        L1:
            r1 = r0
        L2:
            if (r1 != 0) goto Le
            g(r7)
            java.lang.String r1 = e(r7)
            if (r1 != 0) goto Le
            return
        Le:
            boolean r2 = g(r7)
            java.lang.String r3 = e(r7)
            if (r3 != 0) goto L2c
            boolean r7 = r7.exhausted()
            if (r7 != 0) goto L1f
            return
        L1f:
            okhttp3.Challenge r7 = new okhttp3.Challenge
            java.util.Map r0 = kotlin.collections.p0.i()
            r7.<init>(r1, r0)
            r8.add(r7)
            return
        L2c:
            r4 = 61
            int r5 = okhttp3.internal.Util.L(r7, r4)
            boolean r6 = g(r7)
            if (r2 != 0) goto L67
            if (r6 != 0) goto L40
            boolean r2 = r7.exhausted()
            if (r2 == 0) goto L67
        L40:
            okhttp3.Challenge r2 = new okhttp3.Challenge
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r3)
            java.lang.String r3 = "="
            java.lang.String r3 = kotlin.text.StringsKt.L(r3, r5)
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            java.util.Map r3 = java.util.Collections.singletonMap(r0, r3)
            java.lang.String r4 = "singletonMap<String, Str…ek + \"=\".repeat(eqCount))"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            r2.<init>(r1, r3)
            r8.add(r2)
            goto L1
        L67:
            java.util.LinkedHashMap r2 = new java.util.LinkedHashMap
            r2.<init>()
            int r6 = okhttp3.internal.Util.L(r7, r4)
            int r5 = r5 + r6
        L71:
            if (r3 != 0) goto L81
            java.lang.String r3 = e(r7)
            boolean r5 = g(r7)
            if (r5 != 0) goto Lba
            int r5 = okhttp3.internal.Util.L(r7, r4)
        L81:
            if (r5 == 0) goto Lba
            r6 = 1
            if (r5 <= r6) goto L87
            return
        L87:
            boolean r6 = g(r7)
            if (r6 == 0) goto L8e
            return
        L8e:
            r6 = 34
            boolean r6 = h(r7, r6)
            if (r6 == 0) goto L9b
            java.lang.String r6 = d(r7)
            goto L9f
        L9b:
            java.lang.String r6 = e(r7)
        L9f:
            if (r6 != 0) goto La2
            return
        La2:
            java.lang.Object r3 = r2.put(r3, r6)
            java.lang.String r3 = (java.lang.String) r3
            if (r3 == 0) goto Lab
            return
        Lab:
            boolean r3 = g(r7)
            if (r3 != 0) goto Lb8
            boolean r3 = r7.exhausted()
            if (r3 != 0) goto Lb8
            return
        Lb8:
            r3 = r0
            goto L71
        Lba:
            okhttp3.Challenge r4 = new okhttp3.Challenge
            r4.<init>(r1, r2)
            r8.add(r4)
            r1 = r3
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.HttpHeaders.c(okio.Buffer, java.util.List):void");
    }

    private static final String d(Buffer buffer) throws EOFException {
        if (buffer.readByte() == 34) {
            Buffer buffer2 = new Buffer();
            while (true) {
                long indexOfElement = buffer.indexOfElement(f63865a);
                if (indexOfElement == -1) {
                    return null;
                }
                if (buffer.getByte(indexOfElement) == 34) {
                    buffer2.write(buffer, indexOfElement);
                    buffer.readByte();
                    return buffer2.readUtf8();
                } else if (buffer.size() == indexOfElement + 1) {
                    return null;
                } else {
                    buffer2.write(buffer, indexOfElement);
                    buffer.readByte();
                    buffer2.write(buffer, 1L);
                }
            }
        } else {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    private static final String e(Buffer buffer) {
        long indexOfElement = buffer.indexOfElement(f63866b);
        if (indexOfElement == -1) {
            indexOfElement = buffer.size();
        }
        if (indexOfElement != 0) {
            return buffer.readUtf8(indexOfElement);
        }
        return null;
    }

    public static final void f(@NotNull CookieJar cookieJar, @NotNull HttpUrl url, @NotNull Headers headers) {
        Intrinsics.checkNotNullParameter(cookieJar, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(headers, "headers");
        if (cookieJar == CookieJar.f63424b) {
            return;
        }
        List<Cookie> e10 = Cookie.f63407j.e(url, headers);
        if (e10.isEmpty()) {
            return;
        }
        cookieJar.b(url, e10);
    }

    private static final boolean g(Buffer buffer) {
        boolean z10 = false;
        while (!buffer.exhausted()) {
            byte b10 = buffer.getByte(0L);
            if (b10 == 44) {
                buffer.readByte();
                z10 = true;
            } else if (b10 != 32 && b10 != 9) {
                break;
            } else {
                buffer.readByte();
            }
        }
        return z10;
    }

    private static final boolean h(Buffer buffer, byte b10) {
        if (!buffer.exhausted() && buffer.getByte(0L) == b10) {
            return true;
        }
        return false;
    }
}
