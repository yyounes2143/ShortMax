package okhttp3;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.c;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ps.a;
/* compiled from: ConnectionSpec.kt */
@Metadata
@SourceDebugExtension({"SMAP\nConnectionSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,350:1\n11065#2:351\n11400#2,3:352\n11065#2:355\n11400#2,3:356\n*S KotlinDebug\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec\n*L\n59#1:351\n59#1:352,3\n75#1:355\n75#1:356,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ConnectionSpec {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final Companion f63392e = new Companion(null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final CipherSuite[] f63393f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final CipherSuite[] f63394g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final ConnectionSpec f63395h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final ConnectionSpec f63396i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final ConnectionSpec f63397j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final ConnectionSpec f63398k;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f63399a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f63400b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String[] f63401c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String[] f63402d;

    /* compiled from: ConnectionSpec.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        CipherSuite cipherSuite = CipherSuite.f63363o1;
        CipherSuite cipherSuite2 = CipherSuite.f63366p1;
        CipherSuite cipherSuite3 = CipherSuite.f63369q1;
        CipherSuite cipherSuite4 = CipherSuite.f63321a1;
        CipherSuite cipherSuite5 = CipherSuite.f63333e1;
        CipherSuite cipherSuite6 = CipherSuite.f63324b1;
        CipherSuite cipherSuite7 = CipherSuite.f63336f1;
        CipherSuite cipherSuite8 = CipherSuite.f63354l1;
        CipherSuite cipherSuite9 = CipherSuite.f63351k1;
        CipherSuite[] cipherSuiteArr = {cipherSuite, cipherSuite2, cipherSuite3, cipherSuite4, cipherSuite5, cipherSuite6, cipherSuite7, cipherSuite8, cipherSuite9};
        f63393f = cipherSuiteArr;
        CipherSuite[] cipherSuiteArr2 = {cipherSuite, cipherSuite2, cipherSuite3, cipherSuite4, cipherSuite5, cipherSuite6, cipherSuite7, cipherSuite8, cipherSuite9, CipherSuite.L0, CipherSuite.M0, CipherSuite.f63347j0, CipherSuite.f63350k0, CipherSuite.H, CipherSuite.L, CipherSuite.f63352l};
        f63394g = cipherSuiteArr2;
        Builder c10 = new Builder(true).c((CipherSuite[]) Arrays.copyOf(cipherSuiteArr, cipherSuiteArr.length));
        TlsVersion tlsVersion = TlsVersion.TLS_1_3;
        TlsVersion tlsVersion2 = TlsVersion.TLS_1_2;
        f63395h = c10.f(tlsVersion, tlsVersion2).d(true).a();
        f63396i = new Builder(true).c((CipherSuite[]) Arrays.copyOf(cipherSuiteArr2, cipherSuiteArr2.length)).f(tlsVersion, tlsVersion2).d(true).a();
        f63397j = new Builder(true).c((CipherSuite[]) Arrays.copyOf(cipherSuiteArr2, cipherSuiteArr2.length)).f(tlsVersion, tlsVersion2, TlsVersion.TLS_1_1, TlsVersion.TLS_1_0).d(true).a();
        f63398k = new Builder(false).a();
    }

    public ConnectionSpec(boolean z10, boolean z11, @Nullable String[] strArr, @Nullable String[] strArr2) {
        this.f63399a = z10;
        this.f63400b = z11;
        this.f63401c = strArr;
        this.f63402d = strArr2;
    }

    private final ConnectionSpec g(SSLSocket sSLSocket, boolean z10) {
        String[] cipherSuitesIntersection;
        String[] tlsVersionsIntersection;
        if (this.f63401c != null) {
            String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
            Intrinsics.checkNotNullExpressionValue(enabledCipherSuites, "sslSocket.enabledCipherSuites");
            cipherSuitesIntersection = Util.E(enabledCipherSuites, this.f63401c, CipherSuite.f63322b.c());
        } else {
            cipherSuitesIntersection = sSLSocket.getEnabledCipherSuites();
        }
        if (this.f63402d != null) {
            String[] enabledProtocols = sSLSocket.getEnabledProtocols();
            Intrinsics.checkNotNullExpressionValue(enabledProtocols, "sslSocket.enabledProtocols");
            tlsVersionsIntersection = Util.E(enabledProtocols, this.f63402d, a.d());
        } else {
            tlsVersionsIntersection = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        Intrinsics.checkNotNullExpressionValue(supportedCipherSuites, "supportedCipherSuites");
        int x10 = Util.x(supportedCipherSuites, "TLS_FALLBACK_SCSV", CipherSuite.f63322b.c());
        if (z10 && x10 != -1) {
            Intrinsics.checkNotNullExpressionValue(cipherSuitesIntersection, "cipherSuitesIntersection");
            String str = supportedCipherSuites[x10];
            Intrinsics.checkNotNullExpressionValue(str, "supportedCipherSuites[indexOfFallbackScsv]");
            cipherSuitesIntersection = Util.o(cipherSuitesIntersection, str);
        }
        Builder builder = new Builder(this);
        Intrinsics.checkNotNullExpressionValue(cipherSuitesIntersection, "cipherSuitesIntersection");
        Builder b10 = builder.b((String[]) Arrays.copyOf(cipherSuitesIntersection, cipherSuitesIntersection.length));
        Intrinsics.checkNotNullExpressionValue(tlsVersionsIntersection, "tlsVersionsIntersection");
        return b10.e((String[]) Arrays.copyOf(tlsVersionsIntersection, tlsVersionsIntersection.length)).a();
    }

    public final void c(@NotNull SSLSocket sslSocket, boolean z10) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        ConnectionSpec g10 = g(sslSocket, z10);
        if (g10.i() != null) {
            sslSocket.setEnabledProtocols(g10.f63402d);
        }
        if (g10.d() != null) {
            sslSocket.setEnabledCipherSuites(g10.f63401c);
        }
    }

    @Nullable
    public final List<CipherSuite> d() {
        String[] strArr = this.f63401c;
        if (strArr != null) {
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str : strArr) {
                arrayList.add(CipherSuite.f63322b.b(str));
            }
            return CollectionsKt.d1(arrayList);
        }
        return null;
    }

    public final boolean e(@NotNull SSLSocket socket) {
        Intrinsics.checkNotNullParameter(socket, "socket");
        if (!this.f63399a) {
            return false;
        }
        String[] strArr = this.f63402d;
        if (strArr != null && !Util.u(strArr, socket.getEnabledProtocols(), a.d())) {
            return false;
        }
        String[] strArr2 = this.f63401c;
        if (strArr2 != null && !Util.u(strArr2, socket.getEnabledCipherSuites(), CipherSuite.f63322b.c())) {
            return false;
        }
        return true;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof ConnectionSpec)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        boolean z10 = this.f63399a;
        ConnectionSpec connectionSpec = (ConnectionSpec) obj;
        if (z10 != connectionSpec.f63399a) {
            return false;
        }
        if (z10 && (!Arrays.equals(this.f63401c, connectionSpec.f63401c) || !Arrays.equals(this.f63402d, connectionSpec.f63402d) || this.f63400b != connectionSpec.f63400b)) {
            return false;
        }
        return true;
    }

    public final boolean f() {
        return this.f63399a;
    }

    public final boolean h() {
        return this.f63400b;
    }

    public int hashCode() {
        int i10;
        if (this.f63399a) {
            String[] strArr = this.f63401c;
            int i11 = 0;
            if (strArr != null) {
                i10 = Arrays.hashCode(strArr);
            } else {
                i10 = 0;
            }
            int i12 = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + i10) * 31;
            String[] strArr2 = this.f63402d;
            if (strArr2 != null) {
                i11 = Arrays.hashCode(strArr2);
            }
            return ((i12 + i11) * 31) + (!this.f63400b ? 1 : 0);
        }
        return 17;
    }

    @Nullable
    public final List<TlsVersion> i() {
        String[] strArr = this.f63402d;
        if (strArr != null) {
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str : strArr) {
                arrayList.add(TlsVersion.Companion.a(str));
            }
            return CollectionsKt.d1(arrayList);
        }
        return null;
    }

    @NotNull
    public String toString() {
        if (!this.f63399a) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + Objects.toString(d(), "[all enabled]") + ", tlsVersions=" + Objects.toString(i(), "[all enabled]") + ", supportsTlsExtensions=" + this.f63400b + ')';
    }

    /* compiled from: ConnectionSpec.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nConnectionSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,350:1\n1#2:351\n11065#3:352\n11400#3,3:353\n11065#3:358\n11400#3,3:359\n37#4,2:356\n37#4,2:362\n*S KotlinDebug\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec$Builder\n*L\n225#1:352\n225#1:353,3\n244#1:358\n244#1:359,3\n225#1:356,2\n244#1:362,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private boolean f63403a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private String[] f63404b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String[] f63405c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f63406d;

        public Builder(boolean z10) {
            this.f63403a = z10;
        }

        @NotNull
        public final ConnectionSpec a() {
            return new ConnectionSpec(this.f63403a, this.f63406d, this.f63404b, this.f63405c);
        }

        @NotNull
        public final Builder b(@NotNull String... cipherSuites) {
            boolean z10;
            Intrinsics.checkNotNullParameter(cipherSuites, "cipherSuites");
            if (this.f63403a) {
                if (cipherSuites.length == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    this.f63404b = (String[]) cipherSuites.clone();
                    return this;
                }
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            throw new IllegalArgumentException("no cipher suites for cleartext connections");
        }

        @NotNull
        public final Builder c(@NotNull CipherSuite... cipherSuites) {
            Intrinsics.checkNotNullParameter(cipherSuites, "cipherSuites");
            if (this.f63403a) {
                ArrayList arrayList = new ArrayList(cipherSuites.length);
                for (CipherSuite cipherSuite : cipherSuites) {
                    arrayList.add(cipherSuite.c());
                }
                String[] strArr = (String[]) arrayList.toArray(new String[0]);
                return b((String[]) Arrays.copyOf(strArr, strArr.length));
            }
            throw new IllegalArgumentException("no cipher suites for cleartext connections");
        }

        @c
        @NotNull
        public final Builder d(boolean z10) {
            if (this.f63403a) {
                this.f63406d = z10;
                return this;
            }
            throw new IllegalArgumentException("no TLS extensions for cleartext connections");
        }

        @NotNull
        public final Builder e(@NotNull String... tlsVersions) {
            boolean z10;
            Intrinsics.checkNotNullParameter(tlsVersions, "tlsVersions");
            if (this.f63403a) {
                if (tlsVersions.length == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    this.f63405c = (String[]) tlsVersions.clone();
                    return this;
                }
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            throw new IllegalArgumentException("no TLS versions for cleartext connections");
        }

        @NotNull
        public final Builder f(@NotNull TlsVersion... tlsVersions) {
            Intrinsics.checkNotNullParameter(tlsVersions, "tlsVersions");
            if (this.f63403a) {
                ArrayList arrayList = new ArrayList(tlsVersions.length);
                for (TlsVersion tlsVersion : tlsVersions) {
                    arrayList.add(tlsVersion.javaName());
                }
                String[] strArr = (String[]) arrayList.toArray(new String[0]);
                return e((String[]) Arrays.copyOf(strArr, strArr.length));
            }
            throw new IllegalArgumentException("no TLS versions for cleartext connections");
        }

        public Builder(@NotNull ConnectionSpec connectionSpec) {
            Intrinsics.checkNotNullParameter(connectionSpec, "connectionSpec");
            this.f63403a = connectionSpec.f();
            this.f63404b = connectionSpec.f63401c;
            this.f63405c = connectionSpec.f63402d;
            this.f63406d = connectionSpec.h();
        }
    }
}
