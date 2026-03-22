package io.ktor.client.engine.android;

import io.ktor.client.network.sockets.TimeoutExceptionsCommonKt;
import io.ktor.client.plugins.HttpTimeout;
import io.ktor.client.plugins.d;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.jvm.javaio.ReadingKt;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import sr.c;
import zr.a;
/* compiled from: AndroidURLConnectionUtils.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidURLConnectionUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidURLConnectionUtils.kt\nio/ktor/client/engine/android/AndroidURLConnectionUtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,86:1\n1#2:87\n*E\n"})
/* loaded from: classes8.dex */
public final class AndroidURLConnectionUtilsKt {
    @NotNull
    public static final ByteReadChannel a(@NotNull HttpURLConnection httpURLConnection, @NotNull CoroutineContext callContext, @NotNull c request) {
        ByteReadChannel a10;
        ByteReadChannel a11;
        Intrinsics.checkNotNullParameter(httpURLConnection, "<this>");
        Intrinsics.checkNotNullParameter(callContext, "callContext");
        Intrinsics.checkNotNullParameter(request, "request");
        BufferedInputStream bufferedInputStream = null;
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            if (inputStream != null) {
                if (inputStream instanceof BufferedInputStream) {
                    bufferedInputStream = (BufferedInputStream) inputStream;
                } else {
                    bufferedInputStream = new BufferedInputStream(inputStream, 8192);
                }
            }
        } catch (IOException unused) {
            InputStream errorStream = httpURLConnection.getErrorStream();
            if (errorStream != null) {
                if (errorStream instanceof BufferedInputStream) {
                    bufferedInputStream = (BufferedInputStream) errorStream;
                } else {
                    bufferedInputStream = new BufferedInputStream(errorStream, 8192);
                }
            }
        }
        if (bufferedInputStream == null || (a10 = ReadingKt.a(bufferedInputStream, callContext, a.a())) == null || (a11 = TimeoutExceptionsCommonKt.a(i.a(callContext), a10, request)) == null) {
            return ByteReadChannel.f59475a.a();
        }
        return a11;
    }

    private static final boolean b(Throwable th2) {
        boolean z10;
        if (!(th2 instanceof SocketTimeoutException)) {
            if (!(th2 instanceof ConnectException)) {
                return false;
            }
            String message = th2.getMessage();
            if (message != null) {
                z10 = StringsKt.b0(message, "timed out", false, 2, null);
            } else {
                z10 = false;
            }
            if (!z10) {
                return false;
            }
        }
        return true;
    }

    private static final void c(HttpURLConnection httpURLConnection, HttpTimeout.a aVar) {
        Long d10 = aVar.d();
        if (d10 != null) {
            long longValue = d10.longValue();
            if (longValue != Long.MAX_VALUE) {
                if (httpURLConnection.getConnectTimeout() == 0 || httpURLConnection.getConnectTimeout() > longValue) {
                    httpURLConnection.setConnectTimeout(d.d(longValue));
                }
            }
        }
    }

    public static final void d(@NotNull HttpURLConnection httpURLConnection, @NotNull c requestData) {
        Intrinsics.checkNotNullParameter(httpURLConnection, "<this>");
        Intrinsics.checkNotNullParameter(requestData, "requestData");
        HttpTimeout.a aVar = (HttpTimeout.a) requestData.c(HttpTimeout.f59087d);
        if (aVar != null) {
            Long c10 = aVar.c();
            if (c10 != null) {
                httpURLConnection.setConnectTimeout(d.d(c10.longValue()));
            }
            Long e10 = aVar.e();
            if (e10 != null) {
                httpURLConnection.setReadTimeout(d.d(e10.longValue()));
            }
            c(httpURLConnection, aVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object e(@org.jetbrains.annotations.NotNull java.net.HttpURLConnection r4, @org.jetbrains.annotations.NotNull sr.c r5, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super java.net.HttpURLConnection, ? extends T> r6, @org.jetbrains.annotations.NotNull rs.c<? super T> r7) {
        /*
            boolean r0 = r7 instanceof io.ktor.client.engine.android.AndroidURLConnectionUtilsKt$timeoutAwareConnection$1
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.client.engine.android.AndroidURLConnectionUtilsKt$timeoutAwareConnection$1 r0 = (io.ktor.client.engine.android.AndroidURLConnectionUtilsKt$timeoutAwareConnection$1) r0
            int r1 = r0.f58872k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f58872k = r1
            goto L18
        L13:
            io.ktor.client.engine.android.AndroidURLConnectionUtilsKt$timeoutAwareConnection$1 r0 = new io.ktor.client.engine.android.AndroidURLConnectionUtilsKt$timeoutAwareConnection$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f58871j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f58872k
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r4 = r0.f58870i
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            java.lang.Object r5 = r0.f58869h
            sr.c r5 = (sr.c) r5
            kotlin.f.b(r7)
            goto L4f
        L31:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L39:
            kotlin.f.b(r7)
            java.lang.Object r4 = r6.invoke(r4)     // Catch: java.lang.Throwable -> L41
            return r4
        L41:
            r4 = move-exception
            r0.f58869h = r5
            r0.f58870i = r4
            r0.f58872k = r3
            java.lang.Object r6 = gt.a2.a(r0)
            if (r6 != r1) goto L4f
            return r1
        L4f:
            boolean r6 = b(r4)
            if (r6 == 0) goto L59
            io.ktor.client.network.sockets.ConnectTimeoutException r4 = io.ktor.client.plugins.d.a(r5, r4)
        L59:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.android.AndroidURLConnectionUtilsKt.e(java.net.HttpURLConnection, sr.c, kotlin.jvm.functions.Function1, rs.c):java.lang.Object");
    }
}
