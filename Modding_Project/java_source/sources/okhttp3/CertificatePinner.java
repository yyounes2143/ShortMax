package okhttp3;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal.tls.CertificateChainCleaner;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CertificatePinner.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCertificatePinner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CertificatePinner.kt\nokhttp3/CertificatePinner\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,370:1\n625#2,8:371\n*S KotlinDebug\n*F\n+ 1 CertificatePinner.kt\nokhttp3/CertificatePinner\n*L\n216#1:371,8\n*E\n"})
/* loaded from: classes8.dex */
public final class CertificatePinner {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final Companion f63307c = new Companion(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final CertificatePinner f63308d = new Builder().a();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Set<Pin> f63309a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final CertificateChainCleaner f63310b;

    /* compiled from: CertificatePinner.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Builder {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<Pin> f63311a = new ArrayList();

        @NotNull
        public final CertificatePinner a() {
            return new CertificatePinner(CollectionsKt.i1(this.f63311a), null, 2, null);
        }
    }

    /* compiled from: CertificatePinner.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCertificatePinner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CertificatePinner.kt\nokhttp3/CertificatePinner$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,370:1\n1#2:371\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String a(@NotNull Certificate certificate) {
            Intrinsics.checkNotNullParameter(certificate, "certificate");
            if (certificate instanceof X509Certificate) {
                return "sha256/" + c((X509Certificate) certificate).base64();
            }
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }

        @NotNull
        public final ByteString b(@NotNull X509Certificate x509Certificate) {
            Intrinsics.checkNotNullParameter(x509Certificate, "<this>");
            ByteString.Companion companion = ByteString.Companion;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            Intrinsics.checkNotNullExpressionValue(encoded, "publicKey.encoded");
            return ByteString.Companion.of$default(companion, encoded, 0, 0, 3, null).sha1();
        }

        @NotNull
        public final ByteString c(@NotNull X509Certificate x509Certificate) {
            Intrinsics.checkNotNullParameter(x509Certificate, "<this>");
            ByteString.Companion companion = ByteString.Companion;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            Intrinsics.checkNotNullExpressionValue(encoded, "publicKey.encoded");
            return ByteString.Companion.of$default(companion, encoded, 0, 0, 3, null).sha256();
        }

        private Companion() {
        }
    }

    /* compiled from: CertificatePinner.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Pin {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f63312a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f63313b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final ByteString f63314c;

        @NotNull
        public final ByteString a() {
            return this.f63314c;
        }

        @NotNull
        public final String b() {
            return this.f63313b;
        }

        public final boolean c(@NotNull String hostname) {
            Intrinsics.checkNotNullParameter(hostname, "hostname");
            if (StringsKt.V(this.f63312a, "**.", false, 2, null)) {
                int length = this.f63312a.length() - 3;
                int length2 = hostname.length() - length;
                if (!StringsKt.K(hostname, hostname.length() - length, this.f63312a, 3, length, false, 16, null)) {
                    return false;
                }
                if (length2 != 0 && hostname.charAt(length2 - 1) != '.') {
                    return false;
                }
            } else if (StringsKt.V(this.f63312a, "*.", false, 2, null)) {
                int length3 = this.f63312a.length() - 1;
                int length4 = hostname.length() - length3;
                if (!StringsKt.K(hostname, hostname.length() - length3, this.f63312a, 1, length3, false, 16, null) || StringsKt.x0(hostname, '.', length4 - 1, false, 4, null) != -1) {
                    return false;
                }
            } else {
                return Intrinsics.areEqual(hostname, this.f63312a);
            }
            return true;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Pin)) {
                return false;
            }
            Pin pin = (Pin) obj;
            if (Intrinsics.areEqual(this.f63312a, pin.f63312a) && Intrinsics.areEqual(this.f63313b, pin.f63313b) && Intrinsics.areEqual(this.f63314c, pin.f63314c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f63312a.hashCode() * 31) + this.f63313b.hashCode()) * 31) + this.f63314c.hashCode();
        }

        @NotNull
        public String toString() {
            return this.f63313b + '/' + this.f63314c.base64();
        }
    }

    public CertificatePinner(@NotNull Set<Pin> pins, @Nullable CertificateChainCleaner certificateChainCleaner) {
        Intrinsics.checkNotNullParameter(pins, "pins");
        this.f63309a = pins;
        this.f63310b = certificateChainCleaner;
    }

    public final void a(@NotNull final String hostname, @NotNull final List<? extends Certificate> peerCertificates) throws SSLPeerUnverifiedException {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        Intrinsics.checkNotNullParameter(peerCertificates, "peerCertificates");
        b(hostname, new Function0<List<? extends X509Certificate>>() { // from class: okhttp3.CertificatePinner$check$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<? extends X509Certificate> invoke() {
                List<Certificate> list;
                CertificateChainCleaner d10 = CertificatePinner.this.d();
                if (d10 == null || (list = d10.a(peerCertificates, hostname)) == null) {
                    list = peerCertificates;
                }
                List<Certificate> list2 = list;
                ArrayList arrayList = new ArrayList(CollectionsKt.z(list2, 10));
                for (Certificate certificate : list2) {
                    Intrinsics.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                    arrayList.add((X509Certificate) certificate);
                }
                return arrayList;
            }
        });
    }

    public final void b(@NotNull String hostname, @NotNull Function0<? extends List<? extends X509Certificate>> cleanedPeerCertificatesFn) {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        Intrinsics.checkNotNullParameter(cleanedPeerCertificatesFn, "cleanedPeerCertificatesFn");
        List<Pin> c10 = c(hostname);
        if (c10.isEmpty()) {
            return;
        }
        List<? extends X509Certificate> invoke = cleanedPeerCertificatesFn.invoke();
        for (X509Certificate x509Certificate : invoke) {
            ByteString byteString = null;
            ByteString byteString2 = null;
            for (Pin pin : c10) {
                String b10 = pin.b();
                if (Intrinsics.areEqual(b10, "sha256")) {
                    if (byteString == null) {
                        byteString = f63307c.c(x509Certificate);
                    }
                    if (Intrinsics.areEqual(pin.a(), byteString)) {
                        return;
                    }
                } else if (Intrinsics.areEqual(b10, "sha1")) {
                    if (byteString2 == null) {
                        byteString2 = f63307c.b(x509Certificate);
                    }
                    if (Intrinsics.areEqual(pin.a(), byteString2)) {
                        return;
                    }
                } else {
                    throw new AssertionError("unsupported hashAlgorithm: " + pin.b());
                }
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Certificate pinning failure!");
        sb2.append("\n  Peer certificate chain:");
        for (X509Certificate x509Certificate2 : invoke) {
            sb2.append("\n    ");
            sb2.append(f63307c.a(x509Certificate2));
            sb2.append(": ");
            sb2.append(x509Certificate2.getSubjectDN().getName());
        }
        sb2.append("\n  Pinned certificates for ");
        sb2.append(hostname);
        sb2.append(":");
        for (Pin pin2 : c10) {
            sb2.append("\n    ");
            sb2.append(pin2);
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        throw new SSLPeerUnverifiedException(sb3);
    }

    @NotNull
    public final List<Pin> c(@NotNull String hostname) {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        List<Pin> n10 = CollectionsKt.n();
        for (Object obj : this.f63309a) {
            if (((Pin) obj).c(hostname)) {
                if (n10.isEmpty()) {
                    n10 = new ArrayList<>();
                }
                Intrinsics.checkNotNull(n10, "null cannot be cast to non-null type kotlin.collections.MutableList<T of okhttp3.internal.Util.filterList>");
                TypeIntrinsics.asMutableList(n10).add(obj);
            }
        }
        return n10;
    }

    @Nullable
    public final CertificateChainCleaner d() {
        return this.f63310b;
    }

    @NotNull
    public final CertificatePinner e(@NotNull CertificateChainCleaner certificateChainCleaner) {
        Intrinsics.checkNotNullParameter(certificateChainCleaner, "certificateChainCleaner");
        if (Intrinsics.areEqual(this.f63310b, certificateChainCleaner)) {
            return this;
        }
        return new CertificatePinner(this.f63309a, certificateChainCleaner);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof CertificatePinner) {
            CertificatePinner certificatePinner = (CertificatePinner) obj;
            if (Intrinsics.areEqual(certificatePinner.f63309a, this.f63309a) && Intrinsics.areEqual(certificatePinner.f63310b, this.f63310b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = (1517 + this.f63309a.hashCode()) * 41;
        CertificateChainCleaner certificateChainCleaner = this.f63310b;
        if (certificateChainCleaner != null) {
            i10 = certificateChainCleaner.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    public /* synthetic */ CertificatePinner(Set set, CertificateChainCleaner certificateChainCleaner, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(set, (i10 & 2) != 0 ? null : certificateChainCleaner);
    }
}
