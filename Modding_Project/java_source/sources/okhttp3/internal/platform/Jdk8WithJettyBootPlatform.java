package okhttp3.internal.platform;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Protocol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Jdk8WithJettyBootPlatform.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Jdk8WithJettyBootPlatform extends Platform {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final Companion f64114i = new Companion(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Method f64115d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Method f64116e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Method f64117f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Class<?> f64118g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final Class<?> f64119h;

    /* compiled from: Jdk8WithJettyBootPlatform.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private static final class AlpnProvider implements InvocationHandler {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f64120a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f64121b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f64122c;

        public AlpnProvider(@NotNull List<String> protocols) {
            Intrinsics.checkNotNullParameter(protocols, "protocols");
            this.f64120a = protocols;
        }

        @Nullable
        public final String a() {
            return this.f64122c;
        }

        public final boolean b() {
            return this.f64121b;
        }

        @Override // java.lang.reflect.InvocationHandler
        @Nullable
        public Object invoke(@NotNull Object proxy, @NotNull Method method, @Nullable Object[] objArr) throws Throwable {
            Intrinsics.checkNotNullParameter(proxy, "proxy");
            Intrinsics.checkNotNullParameter(method, "method");
            if (objArr == null) {
                objArr = new Object[0];
            }
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (Intrinsics.areEqual(name, "supports") && Intrinsics.areEqual(Boolean.TYPE, returnType)) {
                return Boolean.TRUE;
            }
            if (Intrinsics.areEqual(name, "unsupported") && Intrinsics.areEqual(Void.TYPE, returnType)) {
                this.f64121b = true;
                return null;
            } else if (Intrinsics.areEqual(name, "protocols") && objArr.length == 0) {
                return this.f64120a;
            } else {
                if ((Intrinsics.areEqual(name, "selectProtocol") || Intrinsics.areEqual(name, "select")) && Intrinsics.areEqual(String.class, returnType) && objArr.length == 1) {
                    Object obj = objArr[0];
                    if (obj instanceof List) {
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.collections.List<*>");
                        List list = (List) obj;
                        int size = list.size();
                        if (size >= 0) {
                            int i10 = 0;
                            while (true) {
                                Object obj2 = list.get(i10);
                                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                                String str = (String) obj2;
                                if (this.f64120a.contains(str)) {
                                    this.f64122c = str;
                                    return str;
                                } else if (i10 == size) {
                                    break;
                                } else {
                                    i10++;
                                }
                            }
                        }
                        String str2 = this.f64120a.get(0);
                        this.f64122c = str2;
                        return str2;
                    }
                }
                if ((Intrinsics.areEqual(name, "protocolSelected") || Intrinsics.areEqual(name, "selected")) && objArr.length == 1) {
                    Object obj3 = objArr[0];
                    Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
                    this.f64122c = (String) obj3;
                    return null;
                }
                return method.invoke(this, Arrays.copyOf(objArr, objArr.length));
            }
        }
    }

    /* compiled from: Jdk8WithJettyBootPlatform.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final Platform a() {
            String jvmVersion = System.getProperty("java.specification.version", "unknown");
            try {
                Intrinsics.checkNotNullExpressionValue(jvmVersion, "jvmVersion");
                if (Integer.parseInt(jvmVersion) >= 9) {
                    return null;
                }
            } catch (NumberFormatException unused) {
            }
            try {
                Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN", true, null);
                Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider", true, null);
                Class<?> clientProviderClass = Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider", true, null);
                Class<?> serverProviderClass = Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider", true, null);
                Method putMethod = cls.getMethod("put", SSLSocket.class, cls2);
                Method getMethod = cls.getMethod("get", SSLSocket.class);
                Method removeMethod = cls.getMethod("remove", SSLSocket.class);
                Intrinsics.checkNotNullExpressionValue(putMethod, "putMethod");
                Intrinsics.checkNotNullExpressionValue(getMethod, "getMethod");
                Intrinsics.checkNotNullExpressionValue(removeMethod, "removeMethod");
                Intrinsics.checkNotNullExpressionValue(clientProviderClass, "clientProviderClass");
                Intrinsics.checkNotNullExpressionValue(serverProviderClass, "serverProviderClass");
                return new Jdk8WithJettyBootPlatform(putMethod, getMethod, removeMethod, clientProviderClass, serverProviderClass);
            } catch (ClassNotFoundException | NoSuchMethodException unused2) {
                return null;
            }
        }

        private Companion() {
        }
    }

    public Jdk8WithJettyBootPlatform(@NotNull Method putMethod, @NotNull Method getMethod, @NotNull Method removeMethod, @NotNull Class<?> clientProviderClass, @NotNull Class<?> serverProviderClass) {
        Intrinsics.checkNotNullParameter(putMethod, "putMethod");
        Intrinsics.checkNotNullParameter(getMethod, "getMethod");
        Intrinsics.checkNotNullParameter(removeMethod, "removeMethod");
        Intrinsics.checkNotNullParameter(clientProviderClass, "clientProviderClass");
        Intrinsics.checkNotNullParameter(serverProviderClass, "serverProviderClass");
        this.f64115d = putMethod;
        this.f64116e = getMethod;
        this.f64117f = removeMethod;
        this.f64118g = clientProviderClass;
        this.f64119h = serverProviderClass;
    }

    @Override // okhttp3.internal.platform.Platform
    public void b(@NotNull SSLSocket sslSocket) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        try {
            this.f64117f.invoke(null, sslSocket);
        } catch (IllegalAccessException e10) {
            throw new AssertionError("failed to remove ALPN", e10);
        } catch (InvocationTargetException e11) {
            throw new AssertionError("failed to remove ALPN", e11);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public void e(@NotNull SSLSocket sslSocket, @Nullable String str, @NotNull List<? extends Protocol> protocols) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        Intrinsics.checkNotNullParameter(protocols, "protocols");
        try {
            this.f64115d.invoke(null, sslSocket, Proxy.newProxyInstance(Platform.class.getClassLoader(), new Class[]{this.f64118g, this.f64119h}, new AlpnProvider(Platform.f64128a.b(protocols))));
        } catch (IllegalAccessException e10) {
            throw new AssertionError("failed to set ALPN", e10);
        } catch (InvocationTargetException e11) {
            throw new AssertionError("failed to set ALPN", e11);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    @Nullable
    public String h(@NotNull SSLSocket sslSocket) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        try {
            InvocationHandler invocationHandler = Proxy.getInvocationHandler(this.f64116e.invoke(null, sslSocket));
            Intrinsics.checkNotNull(invocationHandler, "null cannot be cast to non-null type okhttp3.internal.platform.Jdk8WithJettyBootPlatform.AlpnProvider");
            AlpnProvider alpnProvider = (AlpnProvider) invocationHandler;
            if (!alpnProvider.b() && alpnProvider.a() == null) {
                Platform.l(this, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", 0, null, 6, null);
                return null;
            } else if (alpnProvider.b()) {
                return null;
            } else {
                return alpnProvider.a();
            }
        } catch (IllegalAccessException e10) {
            throw new AssertionError("failed to get ALPN selected protocol", e10);
        } catch (InvocationTargetException e11) {
            throw new AssertionError("failed to get ALPN selected protocol", e11);
        }
    }
}
