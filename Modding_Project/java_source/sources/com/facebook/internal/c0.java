package com.facebook.internal;

import android.net.Uri;
import com.facebook.LoggingBehavior;
import com.facebook.internal.i0;
import com.facebook.internal.w;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageResponseCache.kt */
@Metadata
/* loaded from: classes3.dex */
public final class c0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c0 f16179a = new c0();

    /* renamed from: b  reason: collision with root package name */
    private static final String f16180b = c0.class.getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    private static w f16181c;

    /* compiled from: ImageResponseCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    private static final class a extends BufferedInputStream {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private HttpURLConnection f16182a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@Nullable InputStream inputStream, @NotNull HttpURLConnection connection) {
            super(inputStream, 8192);
            Intrinsics.checkNotNullParameter(connection, "connection");
            this.f16182a = connection;
        }

        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            u0.r(this.f16182a);
        }
    }

    private c0() {
    }

    @NotNull
    public static final synchronized w a() throws IOException {
        w wVar;
        synchronized (c0.class) {
            try {
                if (f16181c == null) {
                    String TAG = f16180b;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    f16181c = new w(TAG, new w.e());
                }
                wVar = f16181c;
                if (wVar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("imageCache");
                    wVar = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return wVar;
    }

    @Nullable
    public static final InputStream b(@Nullable Uri uri) {
        if (uri == null || !f16179a.d(uri)) {
            return null;
        }
        try {
            w a10 = a();
            String uri2 = uri.toString();
            Intrinsics.checkNotNullExpressionValue(uri2, "uri.toString()");
            return w.g(a10, uri2, null, 2, null);
        } catch (IOException e10) {
            i0.a aVar = i0.f16209e;
            LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
            String TAG = f16180b;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            aVar.a(loggingBehavior, 5, TAG, e10.toString());
            return null;
        }
    }

    @Nullable
    public static final InputStream c(@NotNull HttpURLConnection connection) throws IOException {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (connection.getResponseCode() == 200) {
            Uri parse = Uri.parse(connection.getURL().toString());
            InputStream inputStream = connection.getInputStream();
            try {
                if (f16179a.d(parse)) {
                    w a10 = a();
                    String uri = parse.toString();
                    Intrinsics.checkNotNullExpressionValue(uri, "uri.toString()");
                    return a10.h(uri, new a(inputStream, connection));
                }
                return inputStream;
            } catch (IOException unused) {
                return inputStream;
            }
        }
        return null;
    }

    private final boolean d(Uri uri) {
        String host;
        if (uri == null || (host = uri.getHost()) == null || (!Intrinsics.areEqual(host, "fbcdn.net") && !StringsKt.F(host, ".fbcdn.net", false, 2, null) && (!StringsKt.V(host, "fbcdn", false, 2, null) || !StringsKt.F(host, ".akamaihd.net", false, 2, null)))) {
            return false;
        }
        return true;
    }
}
