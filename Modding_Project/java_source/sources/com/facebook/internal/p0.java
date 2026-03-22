package com.facebook.internal;

import android.net.Uri;
import com.facebook.LoggingBehavior;
import com.facebook.internal.i0;
import com.facebook.internal.w;
import java.io.IOException;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UrlRedirectCache.kt */
@Metadata
/* loaded from: classes3.dex */
public final class p0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final p0 f16303a = new p0();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String f16304b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final String f16305c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static w f16306d;

    static {
        String simpleName = Reflection.getOrCreateKotlinClass(p0.class).getSimpleName();
        if (simpleName == null) {
            simpleName = "UrlRedirectCache";
        }
        f16304b = simpleName;
        f16305c = simpleName + "_Redirect";
    }

    private p0() {
    }

    public static final void a(@Nullable Uri uri, @Nullable Uri uri2) {
        if (uri != null && uri2 != null) {
            OutputStream outputStream = null;
            try {
                try {
                    w b10 = b();
                    String uri3 = uri.toString();
                    Intrinsics.checkNotNullExpressionValue(uri3, "fromUri.toString()");
                    outputStream = b10.i(uri3, f16305c);
                    String uri4 = uri2.toString();
                    Intrinsics.checkNotNullExpressionValue(uri4, "toUri.toString()");
                    byte[] bytes = uri4.getBytes(Charsets.UTF_8);
                    Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                    outputStream.write(bytes);
                } catch (IOException e10) {
                    i0.a aVar = i0.f16209e;
                    LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                    String str = f16304b;
                    aVar.a(loggingBehavior, 4, str, "IOException when accessing cache: " + e10.getMessage());
                }
            } finally {
                u0.j(outputStream);
            }
        }
    }

    @NotNull
    public static final synchronized w b() throws IOException {
        w wVar;
        synchronized (p0.class) {
            try {
                wVar = f16306d;
                if (wVar == null) {
                    wVar = new w(f16304b, new w.e());
                }
                f16306d = wVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return wVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005e, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r3, r10) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
        r5 = r6;
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0063, code lost:
        com.facebook.internal.i0.f16209e.a(com.facebook.LoggingBehavior.CACHE, 6, com.facebook.internal.p0.f16304b, "A loop detected in UrlRedirectCache");
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006f, code lost:
        com.facebook.internal.u0.j(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0072, code lost:
        return null;
     */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x0083: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:29:0x0083 */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final android.net.Uri c(@org.jetbrains.annotations.Nullable android.net.Uri r10) {
        /*
            r0 = 0
            if (r10 != 0) goto L4
            return r0
        L4:
            java.lang.String r10 = r10.toString()
            java.lang.String r1 = "uri.toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r1)
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            r1.add(r10)
            com.facebook.internal.w r2 = b()     // Catch: java.lang.Throwable -> L95 java.io.IOException -> L97
            java.lang.String r3 = com.facebook.internal.p0.f16305c     // Catch: java.lang.Throwable -> L95 java.io.IOException -> L97
            java.io.InputStream r3 = r2.f(r10, r3)     // Catch: java.lang.Throwable -> L95 java.io.IOException -> L97
            r4 = 0
            r5 = r0
            r6 = r4
        L22:
            if (r3 == 0) goto L87
            java.io.InputStreamReader r6 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L82 java.io.IOException -> L85
            r6.<init>(r3)     // Catch: java.lang.Throwable -> L82 java.io.IOException -> L85
            r3 = 128(0x80, float:1.794E-43)
            char[] r5 = new char[r3]     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            r7.<init>()     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            int r8 = r6.read(r5, r4, r3)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
        L36:
            if (r8 <= 0) goto L47
            r7.append(r5, r4, r8)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            int r8 = r6.read(r5, r4, r3)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            goto L36
        L40:
            r10 = move-exception
            r0 = r6
            goto Lba
        L44:
            r10 = move-exception
            r5 = r6
            goto L99
        L47:
            com.facebook.internal.u0.j(r6)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            java.lang.String r3 = r7.toString()     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            java.lang.String r5 = "urlBuilder.toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r5)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            boolean r5 = r1.contains(r3)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            r7 = 1
            if (r5 == 0) goto L73
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r10)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            if (r1 == 0) goto L63
            r5 = r6
            r6 = r7
            goto L87
        L63:
            com.facebook.internal.i0$a r10 = com.facebook.internal.i0.f16209e     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            com.facebook.LoggingBehavior r1 = com.facebook.LoggingBehavior.CACHE     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            java.lang.String r2 = com.facebook.internal.p0.f16304b     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            java.lang.String r3 = "A loop detected in UrlRedirectCache"
            r4 = 6
            r10.a(r1, r4, r2, r3)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            com.facebook.internal.u0.j(r6)
            return r0
        L73:
            r1.add(r3)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            java.lang.String r10 = com.facebook.internal.p0.f16305c     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            java.io.InputStream r10 = r2.f(r3, r10)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            r5 = r6
            r6 = r7
            r9 = r3
            r3 = r10
            r10 = r9
            goto L22
        L82:
            r10 = move-exception
            r0 = r5
            goto Lba
        L85:
            r10 = move-exception
            goto L99
        L87:
            if (r6 == 0) goto L91
            android.net.Uri r10 = android.net.Uri.parse(r10)     // Catch: java.lang.Throwable -> L82 java.io.IOException -> L85
            com.facebook.internal.u0.j(r5)
            return r10
        L91:
            com.facebook.internal.u0.j(r5)
            goto Lb9
        L95:
            r10 = move-exception
            goto Lba
        L97:
            r10 = move-exception
            r5 = r0
        L99:
            com.facebook.internal.i0$a r1 = com.facebook.internal.i0.f16209e     // Catch: java.lang.Throwable -> L82
            com.facebook.LoggingBehavior r2 = com.facebook.LoggingBehavior.CACHE     // Catch: java.lang.Throwable -> L82
            java.lang.String r3 = com.facebook.internal.p0.f16304b     // Catch: java.lang.Throwable -> L82
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L82
            r4.<init>()     // Catch: java.lang.Throwable -> L82
            java.lang.String r6 = "IOException when accessing cache: "
            r4.append(r6)     // Catch: java.lang.Throwable -> L82
            java.lang.String r10 = r10.getMessage()     // Catch: java.lang.Throwable -> L82
            r4.append(r10)     // Catch: java.lang.Throwable -> L82
            java.lang.String r10 = r4.toString()     // Catch: java.lang.Throwable -> L82
            r4 = 4
            r1.a(r2, r4, r3, r10)     // Catch: java.lang.Throwable -> L82
            goto L91
        Lb9:
            return r0
        Lba:
            com.facebook.internal.u0.j(r0)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.p0.c(android.net.Uri):android.net.Uri");
    }
}
