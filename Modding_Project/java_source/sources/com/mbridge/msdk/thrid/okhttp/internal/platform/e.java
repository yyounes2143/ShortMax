package com.mbridge.msdk.thrid.okhttp.internal.platform;

import com.mbridge.msdk.thrid.okhttp.u;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.net.ssl.SSLSocket;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JdkWithJettyBootPlatform.java */
/* loaded from: classes6.dex */
public class e extends g {

    /* renamed from: c  reason: collision with root package name */
    private final Method f29935c;

    /* renamed from: d  reason: collision with root package name */
    private final Method f29936d;

    /* renamed from: e  reason: collision with root package name */
    private final Method f29937e;

    /* renamed from: f  reason: collision with root package name */
    private final Class<?> f29938f;

    /* renamed from: g  reason: collision with root package name */
    private final Class<?> f29939g;

    /* compiled from: JdkWithJettyBootPlatform.java */
    /* loaded from: classes6.dex */
    private static class a implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f29940a;

        /* renamed from: b  reason: collision with root package name */
        boolean f29941b;

        /* renamed from: c  reason: collision with root package name */
        String f29942c;

        a(List<String> list) {
            this.f29940a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = com.mbridge.msdk.thrid.okhttp.internal.c.f29602b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f29941b = true;
                return null;
            } else if (name.equals("protocols") && objArr.length == 0) {
                return this.f29940a;
            } else {
                if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1) {
                    Object obj2 = objArr[0];
                    if (obj2 instanceof List) {
                        List list = (List) obj2;
                        int size = list.size();
                        for (int i10 = 0; i10 < size; i10++) {
                            if (this.f29940a.contains(list.get(i10))) {
                                String str = (String) list.get(i10);
                                this.f29942c = str;
                                return str;
                            }
                        }
                        String str2 = this.f29940a.get(0);
                        this.f29942c = str2;
                        return str2;
                    }
                }
                if ((name.equals("protocolSelected") || name.equals("selected")) && objArr.length == 1) {
                    this.f29942c = (String) objArr[0];
                    return null;
                }
                return method.invoke(this, objArr);
            }
        }
    }

    e(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f29935c = method;
        this.f29936d = method2;
        this.f29937e = method3;
        this.f29938f = cls;
        this.f29939g = cls2;
    }

    public static g h() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            Class<?> cls3 = Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider");
            return new e(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), cls3, Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public void a(SSLSocket sSLSocket, String str, List<u> list) {
        try {
            this.f29935c.invoke(null, sSLSocket, Proxy.newProxyInstance(g.class.getClassLoader(), new Class[]{this.f29938f, this.f29939g}, new a(g.a(list))));
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to set alpn", (Exception) e10);
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public String b(SSLSocket sSLSocket) {
        try {
            a aVar = (a) Proxy.getInvocationHandler(this.f29936d.invoke(null, sSLSocket));
            boolean z10 = aVar.f29941b;
            if (!z10 && aVar.f29942c == null) {
                g.d().a(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
                return null;
            } else if (z10) {
                return null;
            } else {
                return aVar.f29942c;
            }
        } catch (IllegalAccessException e10) {
            e = e10;
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to get selected protocol", e);
        } catch (InvocationTargetException e11) {
            e = e11;
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to get selected protocol", e);
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public void a(SSLSocket sSLSocket) {
        try {
            this.f29937e.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to remove alpn", (Exception) e10);
        }
    }
}
