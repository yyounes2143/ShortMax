package com.amazonaws.http;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2.dex */
public class TLS12SocketFactory extends SSLSocketFactory {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f5014a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f5015b = {"TLSv1", "TLSv1.1", "TLSv1.2"};

    /* renamed from: c  reason: collision with root package name */
    private static SSLContext f5016c = null;

    @Nullable
    public static TLS12SocketFactory a() {
        return b(null);
    }

    @Nullable
    public static TLS12SocketFactory b(@Nullable SSLContext sSLContext) {
        return null;
    }

    public static void c(@NonNull HttpsURLConnection httpsURLConnection, @Nullable TLS12SocketFactory tLS12SocketFactory) {
    }
}
