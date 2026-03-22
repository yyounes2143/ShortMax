package okhttp3.internal.authenticator;

import java.io.IOException;
import java.net.Authenticator;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.SocketAddress;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Address;
import okhttp3.Authenticator;
import okhttp3.Challenge;
import okhttp3.Credentials;
import okhttp3.Dns;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JavaNetAuthenticator.kt */
@Metadata
/* loaded from: classes8.dex */
public final class JavaNetAuthenticator implements Authenticator {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Dns f63636d;

    /* compiled from: JavaNetAuthenticator.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public JavaNetAuthenticator() {
        this(null, 1, null);
    }

    private final InetAddress b(Proxy proxy, HttpUrl httpUrl, Dns dns) throws IOException {
        int i10;
        Proxy.Type type = proxy.type();
        if (type == null) {
            i10 = -1;
        } else {
            i10 = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        }
        if (i10 == 1) {
            return (InetAddress) CollectionsKt.r0(dns.lookup(httpUrl.i()));
        }
        SocketAddress address = proxy.address();
        Intrinsics.checkNotNull(address, "null cannot be cast to non-null type java.net.InetSocketAddress");
        InetAddress address2 = ((InetSocketAddress) address).getAddress();
        Intrinsics.checkNotNullExpressionValue(address2, "address() as InetSocketAddress).address");
        return address2;
    }

    @Override // okhttp3.Authenticator
    @Nullable
    public Request a(@Nullable Route route, @NotNull Response response) throws IOException {
        boolean z10;
        Proxy proxy;
        Dns dns;
        PasswordAuthentication requestPasswordAuthentication;
        String str;
        Address a10;
        Intrinsics.checkNotNullParameter(response, "response");
        List<Challenge> m10 = response.m();
        Request W = response.W();
        HttpUrl l10 = W.l();
        if (response.o() == 407) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (route == null || (proxy = route.b()) == null) {
            proxy = Proxy.NO_PROXY;
        }
        for (Challenge challenge : m10) {
            if (StringsKt.G("Basic", challenge.c(), true)) {
                if (route == null || (a10 = route.a()) == null || (dns = a10.c()) == null) {
                    dns = this.f63636d;
                }
                if (z10) {
                    SocketAddress address = proxy.address();
                    Intrinsics.checkNotNull(address, "null cannot be cast to non-null type java.net.InetSocketAddress");
                    InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                    String hostName = inetSocketAddress.getHostName();
                    Intrinsics.checkNotNullExpressionValue(proxy, "proxy");
                    requestPasswordAuthentication = java.net.Authenticator.requestPasswordAuthentication(hostName, b(proxy, l10, dns), inetSocketAddress.getPort(), l10.t(), challenge.b(), challenge.c(), l10.v(), Authenticator.RequestorType.PROXY);
                } else {
                    String i10 = l10.i();
                    Intrinsics.checkNotNullExpressionValue(proxy, "proxy");
                    requestPasswordAuthentication = java.net.Authenticator.requestPasswordAuthentication(i10, b(proxy, l10, dns), l10.o(), l10.t(), challenge.b(), challenge.c(), l10.v(), Authenticator.RequestorType.SERVER);
                }
                if (requestPasswordAuthentication != null) {
                    if (z10) {
                        str = "Proxy-Authorization";
                    } else {
                        str = "Authorization";
                    }
                    String userName = requestPasswordAuthentication.getUserName();
                    Intrinsics.checkNotNullExpressionValue(userName, "auth.userName");
                    char[] password = requestPasswordAuthentication.getPassword();
                    Intrinsics.checkNotNullExpressionValue(password, "auth.password");
                    return W.i().e(str, Credentials.a(userName, new String(password), challenge.a())).b();
                }
            }
        }
        return null;
    }

    public JavaNetAuthenticator(@NotNull Dns defaultDns) {
        Intrinsics.checkNotNullParameter(defaultDns, "defaultDns");
        this.f63636d = defaultDns;
    }

    public /* synthetic */ JavaNetAuthenticator(Dns dns, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? Dns.f63435b : dns);
    }
}
