package okhttp3.internal.platform.android;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okhttp3.Protocol;
import okhttp3.internal.platform.AndroidPlatform;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.platform.android.DeferredSocketAdapter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidSocketAdapter.kt */
@Metadata
/* loaded from: classes8.dex */
public class AndroidSocketAdapter implements SocketAdapter {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final Companion f64139f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final DeferredSocketAdapter.Factory f64140g;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Class<? super SSLSocket> f64141a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Method f64142b;

    /* renamed from: c  reason: collision with root package name */
    private final Method f64143c;

    /* renamed from: d  reason: collision with root package name */
    private final Method f64144d;

    /* renamed from: e  reason: collision with root package name */
    private final Method f64145e;

    /* compiled from: AndroidSocketAdapter.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final AndroidSocketAdapter b(Class<? super SSLSocket> cls) {
            Class<? super SSLSocket> cls2 = cls;
            while (cls2 != null && !Intrinsics.areEqual(cls2.getSimpleName(), "OpenSSLSocketImpl")) {
                cls2 = cls2.getSuperclass();
                if (cls2 == null) {
                    throw new AssertionError("No OpenSSLSocketImpl superclass of socket of type " + cls);
                }
            }
            Intrinsics.checkNotNull(cls2);
            return new AndroidSocketAdapter(cls2);
        }

        @NotNull
        public final DeferredSocketAdapter.Factory c(@NotNull final String packageName) {
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            return new DeferredSocketAdapter.Factory() { // from class: okhttp3.internal.platform.android.AndroidSocketAdapter$Companion$factory$1
                @Override // okhttp3.internal.platform.android.DeferredSocketAdapter.Factory
                @NotNull
                public SocketAdapter create(@NotNull SSLSocket sslSocket) {
                    AndroidSocketAdapter b10;
                    Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
                    b10 = AndroidSocketAdapter.f64139f.b(sslSocket.getClass());
                    return b10;
                }

                @Override // okhttp3.internal.platform.android.DeferredSocketAdapter.Factory
                public boolean matchesSocket(@NotNull SSLSocket sslSocket) {
                    Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
                    String name = sslSocket.getClass().getName();
                    Intrinsics.checkNotNullExpressionValue(name, "sslSocket.javaClass.name");
                    return StringsKt.V(name, packageName + '.', false, 2, null);
                }
            };
        }

        @NotNull
        public final DeferredSocketAdapter.Factory d() {
            return AndroidSocketAdapter.f64140g;
        }

        private Companion() {
        }
    }

    static {
        Companion companion = new Companion(null);
        f64139f = companion;
        f64140g = companion.c("com.google.android.gms.org.conscrypt");
    }

    public AndroidSocketAdapter(@NotNull Class<? super SSLSocket> sslSocketClass) {
        Intrinsics.checkNotNullParameter(sslSocketClass, "sslSocketClass");
        this.f64141a = sslSocketClass;
        Method declaredMethod = sslSocketClass.getDeclaredMethod("setUseSessionTickets", Boolean.TYPE);
        Intrinsics.checkNotNullExpressionValue(declaredMethod, "sslSocketClass.getDeclar…:class.javaPrimitiveType)");
        this.f64142b = declaredMethod;
        this.f64143c = sslSocketClass.getMethod("setHostname", String.class);
        this.f64144d = sslSocketClass.getMethod("getAlpnSelectedProtocol", new Class[0]);
        this.f64145e = sslSocketClass.getMethod("setAlpnProtocols", byte[].class);
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public void configureTlsExtensions(@NotNull SSLSocket sslSocket, @Nullable String str, @NotNull List<? extends Protocol> protocols) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        Intrinsics.checkNotNullParameter(protocols, "protocols");
        if (matchesSocket(sslSocket)) {
            try {
                this.f64142b.invoke(sslSocket, Boolean.TRUE);
                if (str != null) {
                    this.f64143c.invoke(sslSocket, str);
                }
                this.f64145e.invoke(sslSocket, Platform.f64128a.c(protocols));
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (InvocationTargetException e11) {
                throw new AssertionError(e11);
            }
        }
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    @Nullable
    public String getSelectedProtocol(@NotNull SSLSocket sslSocket) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        if (!matchesSocket(sslSocket)) {
            return null;
        }
        try {
            byte[] bArr = (byte[]) this.f64144d.invoke(sslSocket, new Object[0]);
            if (bArr == null) {
                return null;
            }
            return new String(bArr, Charsets.UTF_8);
        } catch (IllegalAccessException e10) {
            throw new AssertionError(e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if ((cause instanceof NullPointerException) && Intrinsics.areEqual(((NullPointerException) cause).getMessage(), "ssl == null")) {
                return null;
            }
            throw new AssertionError(e11);
        }
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public boolean isSupported() {
        return AndroidPlatform.f64101f.b();
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public boolean matchesSocket(@NotNull SSLSocket sslSocket) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        return this.f64141a.isInstance(sslSocket);
    }
}
