package okhttp3;

import androidx.webkit.ProxyConfig;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Address.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Address {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Dns f63233a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final SocketFactory f63234b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final SSLSocketFactory f63235c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final HostnameVerifier f63236d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final CertificatePinner f63237e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Authenticator f63238f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final Proxy f63239g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final ProxySelector f63240h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final HttpUrl f63241i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final List<Protocol> f63242j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final List<ConnectionSpec> f63243k;

    public Address(@NotNull String uriHost, int i10, @NotNull Dns dns, @NotNull SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable CertificatePinner certificatePinner, @NotNull Authenticator proxyAuthenticator, @Nullable Proxy proxy, @NotNull List<? extends Protocol> protocols, @NotNull List<ConnectionSpec> connectionSpecs, @NotNull ProxySelector proxySelector) {
        String str;
        Intrinsics.checkNotNullParameter(uriHost, "uriHost");
        Intrinsics.checkNotNullParameter(dns, "dns");
        Intrinsics.checkNotNullParameter(socketFactory, "socketFactory");
        Intrinsics.checkNotNullParameter(proxyAuthenticator, "proxyAuthenticator");
        Intrinsics.checkNotNullParameter(protocols, "protocols");
        Intrinsics.checkNotNullParameter(connectionSpecs, "connectionSpecs");
        Intrinsics.checkNotNullParameter(proxySelector, "proxySelector");
        this.f63233a = dns;
        this.f63234b = socketFactory;
        this.f63235c = sSLSocketFactory;
        this.f63236d = hostnameVerifier;
        this.f63237e = certificatePinner;
        this.f63238f = proxyAuthenticator;
        this.f63239g = proxy;
        this.f63240h = proxySelector;
        HttpUrl.Builder builder = new HttpUrl.Builder();
        if (sSLSocketFactory != null) {
            str = "https";
        } else {
            str = ProxyConfig.MATCH_HTTP;
        }
        this.f63241i = builder.q(str).g(uriHost).m(i10).c();
        this.f63242j = Util.V(protocols);
        this.f63243k = Util.V(connectionSpecs);
    }

    @Nullable
    public final CertificatePinner a() {
        return this.f63237e;
    }

    @NotNull
    public final List<ConnectionSpec> b() {
        return this.f63243k;
    }

    @NotNull
    public final Dns c() {
        return this.f63233a;
    }

    public final boolean d(@NotNull Address that) {
        Intrinsics.checkNotNullParameter(that, "that");
        if (Intrinsics.areEqual(this.f63233a, that.f63233a) && Intrinsics.areEqual(this.f63238f, that.f63238f) && Intrinsics.areEqual(this.f63242j, that.f63242j) && Intrinsics.areEqual(this.f63243k, that.f63243k) && Intrinsics.areEqual(this.f63240h, that.f63240h) && Intrinsics.areEqual(this.f63239g, that.f63239g) && Intrinsics.areEqual(this.f63235c, that.f63235c) && Intrinsics.areEqual(this.f63236d, that.f63236d) && Intrinsics.areEqual(this.f63237e, that.f63237e) && this.f63241i.o() == that.f63241i.o()) {
            return true;
        }
        return false;
    }

    @Nullable
    public final HostnameVerifier e() {
        return this.f63236d;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Address) {
            Address address = (Address) obj;
            if (Intrinsics.areEqual(this.f63241i, address.f63241i) && d(address)) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final List<Protocol> f() {
        return this.f63242j;
    }

    @Nullable
    public final Proxy g() {
        return this.f63239g;
    }

    @NotNull
    public final Authenticator h() {
        return this.f63238f;
    }

    public int hashCode() {
        return ((((((((((((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f63241i.hashCode()) * 31) + this.f63233a.hashCode()) * 31) + this.f63238f.hashCode()) * 31) + this.f63242j.hashCode()) * 31) + this.f63243k.hashCode()) * 31) + this.f63240h.hashCode()) * 31) + Objects.hashCode(this.f63239g)) * 31) + Objects.hashCode(this.f63235c)) * 31) + Objects.hashCode(this.f63236d)) * 31) + Objects.hashCode(this.f63237e);
    }

    @NotNull
    public final ProxySelector i() {
        return this.f63240h;
    }

    @NotNull
    public final SocketFactory j() {
        return this.f63234b;
    }

    @Nullable
    public final SSLSocketFactory k() {
        return this.f63235c;
    }

    @NotNull
    public final HttpUrl l() {
        return this.f63241i;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2;
        Object obj;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Address{");
        sb3.append(this.f63241i.i());
        sb3.append(':');
        sb3.append(this.f63241i.o());
        sb3.append(", ");
        if (this.f63239g != null) {
            sb2 = new StringBuilder();
            sb2.append("proxy=");
            obj = this.f63239g;
        } else {
            sb2 = new StringBuilder();
            sb2.append("proxySelector=");
            obj = this.f63240h;
        }
        sb2.append(obj);
        sb3.append(sb2.toString());
        sb3.append('}');
        return sb3.toString();
    }
}
