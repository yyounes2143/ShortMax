package okhttp3;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import kotlin.Metadata;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Handshake.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHandshake.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Handshake.kt\nokhttp3/Handshake\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,200:1\n1549#2:201\n1620#2,3:202\n1549#2:205\n1620#2,3:206\n*S KotlinDebug\n*F\n+ 1 Handshake.kt\nokhttp3/Handshake\n*L\n129#1:201\n129#1:202,3\n134#1:205\n134#1:206,3\n*E\n"})
/* loaded from: classes8.dex */
public final class Handshake {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final Companion f63446e = new Companion(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final TlsVersion f63447a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final CipherSuite f63448b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final List<Certificate> f63449c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final i f63450d;

    /* compiled from: Handshake.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHandshake.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Handshake.kt\nokhttp3/Handshake$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,200:1\n1#2:201\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final List<Certificate> c(Certificate[] certificateArr) {
            if (certificateArr != null) {
                return Util.w(Arrays.copyOf(certificateArr, certificateArr.length));
            }
            return CollectionsKt.n();
        }

        @NotNull
        public final Handshake a(@NotNull SSLSession sSLSession) throws IOException {
            boolean areEqual;
            final List<Certificate> n10;
            Intrinsics.checkNotNullParameter(sSLSession, "<this>");
            String cipherSuite = sSLSession.getCipherSuite();
            if (cipherSuite != null) {
                if (Intrinsics.areEqual(cipherSuite, "TLS_NULL_WITH_NULL_NULL")) {
                    areEqual = true;
                } else {
                    areEqual = Intrinsics.areEqual(cipherSuite, "SSL_NULL_WITH_NULL_NULL");
                }
                if (!areEqual) {
                    CipherSuite b10 = CipherSuite.f63322b.b(cipherSuite);
                    String protocol = sSLSession.getProtocol();
                    if (protocol != null) {
                        if (!Intrinsics.areEqual("NONE", protocol)) {
                            TlsVersion a10 = TlsVersion.Companion.a(protocol);
                            try {
                                n10 = c(sSLSession.getPeerCertificates());
                            } catch (SSLPeerUnverifiedException unused) {
                                n10 = CollectionsKt.n();
                            }
                            return new Handshake(a10, b10, c(sSLSession.getLocalCertificates()), new Function0<List<? extends Certificate>>() { // from class: okhttp3.Handshake$Companion$handshake$1
                                /* JADX INFO: Access modifiers changed from: package-private */
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(0);
                                }

                                @Override // kotlin.jvm.functions.Function0
                                @NotNull
                                public final List<? extends Certificate> invoke() {
                                    return n10;
                                }
                            });
                        }
                        throw new IOException("tlsVersion == NONE");
                    }
                    throw new IllegalStateException("tlsVersion == null");
                }
                throw new IOException("cipherSuite == " + cipherSuite);
            }
            throw new IllegalStateException("cipherSuite == null");
        }

        @NotNull
        public final Handshake b(@NotNull TlsVersion tlsVersion, @NotNull CipherSuite cipherSuite, @NotNull List<? extends Certificate> peerCertificates, @NotNull List<? extends Certificate> localCertificates) {
            Intrinsics.checkNotNullParameter(tlsVersion, "tlsVersion");
            Intrinsics.checkNotNullParameter(cipherSuite, "cipherSuite");
            Intrinsics.checkNotNullParameter(peerCertificates, "peerCertificates");
            Intrinsics.checkNotNullParameter(localCertificates, "localCertificates");
            final List V = Util.V(peerCertificates);
            return new Handshake(tlsVersion, cipherSuite, Util.V(localCertificates), new Function0<List<? extends Certificate>>() { // from class: okhttp3.Handshake$Companion$get$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final List<? extends Certificate> invoke() {
                    return V;
                }
            });
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Handshake(@NotNull TlsVersion tlsVersion, @NotNull CipherSuite cipherSuite, @NotNull List<? extends Certificate> localCertificates, @NotNull final Function0<? extends List<? extends Certificate>> peerCertificatesFn) {
        Intrinsics.checkNotNullParameter(tlsVersion, "tlsVersion");
        Intrinsics.checkNotNullParameter(cipherSuite, "cipherSuite");
        Intrinsics.checkNotNullParameter(localCertificates, "localCertificates");
        Intrinsics.checkNotNullParameter(peerCertificatesFn, "peerCertificatesFn");
        this.f63447a = tlsVersion;
        this.f63448b = cipherSuite;
        this.f63449c = localCertificates;
        this.f63450d = c.b(new Function0<List<? extends Certificate>>() { // from class: okhttp3.Handshake$peerCertificates$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<? extends Certificate> invoke() {
                try {
                    return peerCertificatesFn.invoke();
                } catch (SSLPeerUnverifiedException unused) {
                    return CollectionsKt.n();
                }
            }
        });
    }

    private final String b(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return ((X509Certificate) certificate).getSubjectDN().toString();
        }
        String type = certificate.getType();
        Intrinsics.checkNotNullExpressionValue(type, "type");
        return type;
    }

    @NotNull
    public final CipherSuite a() {
        return this.f63448b;
    }

    @NotNull
    public final List<Certificate> c() {
        return this.f63449c;
    }

    @NotNull
    public final List<Certificate> d() {
        return (List) this.f63450d.getValue();
    }

    @NotNull
    public final TlsVersion e() {
        return this.f63447a;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Handshake) {
            Handshake handshake = (Handshake) obj;
            if (handshake.f63447a == this.f63447a && Intrinsics.areEqual(handshake.f63448b, this.f63448b) && Intrinsics.areEqual(handshake.d(), d()) && Intrinsics.areEqual(handshake.f63449c, this.f63449c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f63447a.hashCode()) * 31) + this.f63448b.hashCode()) * 31) + d().hashCode()) * 31) + this.f63449c.hashCode();
    }

    @NotNull
    public String toString() {
        List<Certificate> d10 = d();
        ArrayList arrayList = new ArrayList(CollectionsKt.z(d10, 10));
        for (Certificate certificate : d10) {
            arrayList.add(b(certificate));
        }
        String obj = arrayList.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Handshake{tlsVersion=");
        sb2.append(this.f63447a);
        sb2.append(" cipherSuite=");
        sb2.append(this.f63448b);
        sb2.append(" peerCertificates=");
        sb2.append(obj);
        sb2.append(" localCertificates=");
        List<Certificate> list = this.f63449c;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.z(list, 10));
        for (Certificate certificate2 : list) {
            arrayList2.add(b(certificate2));
        }
        sb2.append(arrayList2);
        sb2.append('}');
        return sb2.toString();
    }
}
