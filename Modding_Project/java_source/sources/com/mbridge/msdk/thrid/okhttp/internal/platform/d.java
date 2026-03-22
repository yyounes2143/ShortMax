package com.mbridge.msdk.thrid.okhttp.internal.platform;

import com.mbridge.msdk.thrid.okhttp.u;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Jdk9Platform.java */
/* loaded from: classes6.dex */
public final class d extends g {

    /* renamed from: c  reason: collision with root package name */
    final Method f29933c;

    /* renamed from: d  reason: collision with root package name */
    final Method f29934d;

    d(Method method, Method method2) {
        this.f29933c = method;
        this.f29934d = method2;
    }

    public static d h() {
        try {
            return new d(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public void a(SSLSocket sSLSocket, String str, List<u> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> a10 = g.a(list);
            this.f29933c.invoke(sSLParameters, a10.toArray(new String[a10.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to set ssl parameters", (Exception) e10);
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public String b(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f29934d.invoke(sSLSocket, new Object[0]);
            if (str != null) {
                if (!str.equals("")) {
                    return str;
                }
            }
            return null;
        } catch (IllegalAccessException e10) {
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("failed to get ALPN selected protocol", (Exception) e10);
        } catch (InvocationTargetException e11) {
            if (e11.getCause() instanceof UnsupportedOperationException) {
                return null;
            }
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("failed to get ALPN selected protocol", (Exception) e11);
        }
    }
}
