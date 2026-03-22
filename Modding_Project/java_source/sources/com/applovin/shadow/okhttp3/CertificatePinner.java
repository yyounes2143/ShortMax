package com.applovin.shadow.okhttp3;

import androidx.webkit.ProxyConfig;
import com.applovin.shadow.okhttp3.internal.HostnamesKt;
import com.applovin.shadow.okhttp3.internal.tls.CertificateChainCleaner;
import com.applovin.shadow.okio.ByteString;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CertificatePinner.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCertificatePinner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CertificatePinner.kt\nokhttp3/CertificatePinner\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,370:1\n625#2,8:371\n*S KotlinDebug\n*F\n+ 1 CertificatePinner.kt\nokhttp3/CertificatePinner\n*L\n216#1:371,8\n*E\n"})
/* loaded from: classes2.dex */
public final class CertificatePinner {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final CertificatePinner DEFAULT = new Builder().build();
    @Nullable
    private final CertificateChainCleaner certificateChainCleaner;
    @NotNull
    private final Set<Pin> pins;

    /* compiled from: CertificatePinner.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Builder {
        @NotNull
        private final List<Pin> pins = new ArrayList();

        @NotNull
        public final Builder add(@NotNull String pattern, @NotNull String... pins) {
            Intrinsics.checkNotNullParameter(pattern, "pattern");
            Intrinsics.checkNotNullParameter(pins, "pins");
            for (String str : pins) {
                this.pins.add(new Pin(pattern, str));
            }
            return this;
        }

        @NotNull
        public final CertificatePinner build() {
            return new CertificatePinner(CollectionsKt.i1(this.pins), null, 2, null);
        }

        @NotNull
        public final List<Pin> getPins() {
            return this.pins;
        }
    }

    /* compiled from: CertificatePinner.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCertificatePinner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CertificatePinner.kt\nokhttp3/CertificatePinner$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,370:1\n1#2:371\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String pin(@NotNull Certificate certificate) {
            Intrinsics.checkNotNullParameter(certificate, "certificate");
            if (certificate instanceof X509Certificate) {
                return "sha256/" + sha256Hash((X509Certificate) certificate).base64();
            }
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }

        @NotNull
        public final ByteString sha1Hash(@NotNull X509Certificate x509Certificate) {
            Intrinsics.checkNotNullParameter(x509Certificate, "<this>");
            ByteString.Companion companion = ByteString.Companion;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            Intrinsics.checkNotNullExpressionValue(encoded, "publicKey.encoded");
            return ByteString.Companion.of$default(companion, encoded, 0, 0, 3, null).sha1();
        }

        @NotNull
        public final ByteString sha256Hash(@NotNull X509Certificate x509Certificate) {
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
    /* loaded from: classes2.dex */
    public static final class Pin {
        @NotNull
        private final ByteString hash;
        @NotNull
        private final String hashAlgorithm;
        @NotNull
        private final String pattern;

        public Pin(@NotNull String pattern, @NotNull String pin) {
            Intrinsics.checkNotNullParameter(pattern, "pattern");
            Intrinsics.checkNotNullParameter(pin, "pin");
            if ((StringsKt.V(pattern, "*.", false, 2, null) && StringsKt.q0(pattern, ProxyConfig.MATCH_ALL_SCHEMES, 1, false, 4, null) == -1) || ((StringsKt.V(pattern, "**.", false, 2, null) && StringsKt.q0(pattern, ProxyConfig.MATCH_ALL_SCHEMES, 2, false, 4, null) == -1) || StringsKt.q0(pattern, ProxyConfig.MATCH_ALL_SCHEMES, 0, false, 6, null) == -1)) {
                String canonicalHost = HostnamesKt.toCanonicalHost(pattern);
                if (canonicalHost != null) {
                    this.pattern = canonicalHost;
                    if (StringsKt.V(pin, "sha1/", false, 2, null)) {
                        this.hashAlgorithm = "sha1";
                        ByteString.Companion companion = ByteString.Companion;
                        String substring = pin.substring(5);
                        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                        ByteString decodeBase64 = companion.decodeBase64(substring);
                        if (decodeBase64 != null) {
                            this.hash = decodeBase64;
                            return;
                        }
                        throw new IllegalArgumentException("Invalid pin hash: " + pin);
                    } else if (StringsKt.V(pin, "sha256/", false, 2, null)) {
                        this.hashAlgorithm = "sha256";
                        ByteString.Companion companion2 = ByteString.Companion;
                        String substring2 = pin.substring(7);
                        Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
                        ByteString decodeBase642 = companion2.decodeBase64(substring2);
                        if (decodeBase642 != null) {
                            this.hash = decodeBase642;
                            return;
                        }
                        throw new IllegalArgumentException("Invalid pin hash: " + pin);
                    } else {
                        throw new IllegalArgumentException("pins must start with 'sha256/' or 'sha1/': " + pin);
                    }
                }
                throw new IllegalArgumentException("Invalid pattern: " + pattern);
            }
            throw new IllegalArgumentException(("Unexpected pattern: " + pattern).toString());
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Pin)) {
                return false;
            }
            Pin pin = (Pin) obj;
            if (Intrinsics.areEqual(this.pattern, pin.pattern) && Intrinsics.areEqual(this.hashAlgorithm, pin.hashAlgorithm) && Intrinsics.areEqual(this.hash, pin.hash)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final ByteString getHash() {
            return this.hash;
        }

        @NotNull
        public final String getHashAlgorithm() {
            return this.hashAlgorithm;
        }

        @NotNull
        public final String getPattern() {
            return this.pattern;
        }

        public int hashCode() {
            return (((this.pattern.hashCode() * 31) + this.hashAlgorithm.hashCode()) * 31) + this.hash.hashCode();
        }

        public final boolean matchesCertificate(@NotNull X509Certificate certificate) {
            Intrinsics.checkNotNullParameter(certificate, "certificate");
            String str = this.hashAlgorithm;
            if (Intrinsics.areEqual(str, "sha256")) {
                return Intrinsics.areEqual(this.hash, CertificatePinner.Companion.sha256Hash(certificate));
            }
            if (Intrinsics.areEqual(str, "sha1")) {
                return Intrinsics.areEqual(this.hash, CertificatePinner.Companion.sha1Hash(certificate));
            }
            return false;
        }

        public final boolean matchesHostname(@NotNull String hostname) {
            Intrinsics.checkNotNullParameter(hostname, "hostname");
            if (StringsKt.V(this.pattern, "**.", false, 2, null)) {
                int length = this.pattern.length() - 3;
                int length2 = hostname.length() - length;
                if (!StringsKt.K(hostname, hostname.length() - length, this.pattern, 3, length, false, 16, null)) {
                    return false;
                }
                if (length2 != 0 && hostname.charAt(length2 - 1) != '.') {
                    return false;
                }
            } else if (StringsKt.V(this.pattern, "*.", false, 2, null)) {
                int length3 = this.pattern.length() - 1;
                int length4 = hostname.length() - length3;
                if (!StringsKt.K(hostname, hostname.length() - length3, this.pattern, 1, length3, false, 16, null) || StringsKt.x0(hostname, '.', length4 - 1, false, 4, null) != -1) {
                    return false;
                }
            } else {
                return Intrinsics.areEqual(hostname, this.pattern);
            }
            return true;
        }

        @NotNull
        public String toString() {
            return this.hashAlgorithm + '/' + this.hash.base64();
        }
    }

    public CertificatePinner(@NotNull Set<Pin> pins, @Nullable CertificateChainCleaner certificateChainCleaner) {
        Intrinsics.checkNotNullParameter(pins, "pins");
        this.pins = pins;
        this.certificateChainCleaner = certificateChainCleaner;
    }

    @NotNull
    public static final String pin(@NotNull Certificate certificate) {
        return Companion.pin(certificate);
    }

    @NotNull
    public static final ByteString sha1Hash(@NotNull X509Certificate x509Certificate) {
        return Companion.sha1Hash(x509Certificate);
    }

    @NotNull
    public static final ByteString sha256Hash(@NotNull X509Certificate x509Certificate) {
        return Companion.sha256Hash(x509Certificate);
    }

    public final void check(@NotNull final String hostname, @NotNull final List<? extends Certificate> peerCertificates) throws SSLPeerUnverifiedException {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        Intrinsics.checkNotNullParameter(peerCertificates, "peerCertificates");
        check$okhttp(hostname, new Function0<List<? extends X509Certificate>>() { // from class: com.applovin.shadow.okhttp3.CertificatePinner$check$1
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
                CertificateChainCleaner certificateChainCleaner$okhttp = CertificatePinner.this.getCertificateChainCleaner$okhttp();
                if (certificateChainCleaner$okhttp == null || (list = certificateChainCleaner$okhttp.clean(peerCertificates, hostname)) == null) {
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

    public final void check$okhttp(@NotNull String hostname, @NotNull Function0<? extends List<? extends X509Certificate>> cleanedPeerCertificatesFn) {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        Intrinsics.checkNotNullParameter(cleanedPeerCertificatesFn, "cleanedPeerCertificatesFn");
        List<Pin> findMatchingPins = findMatchingPins(hostname);
        if (findMatchingPins.isEmpty()) {
            return;
        }
        List<? extends X509Certificate> invoke = cleanedPeerCertificatesFn.invoke();
        for (X509Certificate x509Certificate : invoke) {
            ByteString byteString = null;
            ByteString byteString2 = null;
            for (Pin pin : findMatchingPins) {
                String hashAlgorithm = pin.getHashAlgorithm();
                if (Intrinsics.areEqual(hashAlgorithm, "sha256")) {
                    if (byteString == null) {
                        byteString = Companion.sha256Hash(x509Certificate);
                    }
                    if (Intrinsics.areEqual(pin.getHash(), byteString)) {
                        return;
                    }
                } else if (Intrinsics.areEqual(hashAlgorithm, "sha1")) {
                    if (byteString2 == null) {
                        byteString2 = Companion.sha1Hash(x509Certificate);
                    }
                    if (Intrinsics.areEqual(pin.getHash(), byteString2)) {
                        return;
                    }
                } else {
                    throw new AssertionError("unsupported hashAlgorithm: " + pin.getHashAlgorithm());
                }
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Certificate pinning failure!");
        sb2.append("\n  Peer certificate chain:");
        for (X509Certificate x509Certificate2 : invoke) {
            sb2.append("\n    ");
            sb2.append(Companion.pin(x509Certificate2));
            sb2.append(": ");
            sb2.append(x509Certificate2.getSubjectDN().getName());
        }
        sb2.append("\n  Pinned certificates for ");
        sb2.append(hostname);
        sb2.append(":");
        for (Pin pin2 : findMatchingPins) {
            sb2.append("\n    ");
            sb2.append(pin2);
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        throw new SSLPeerUnverifiedException(sb3);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof CertificatePinner) {
            CertificatePinner certificatePinner = (CertificatePinner) obj;
            if (Intrinsics.areEqual(certificatePinner.pins, this.pins) && Intrinsics.areEqual(certificatePinner.certificateChainCleaner, this.certificateChainCleaner)) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final List<Pin> findMatchingPins(@NotNull String hostname) {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        List<Pin> n10 = CollectionsKt.n();
        for (Object obj : this.pins) {
            if (((Pin) obj).matchesHostname(hostname)) {
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
    public final CertificateChainCleaner getCertificateChainCleaner$okhttp() {
        return this.certificateChainCleaner;
    }

    @NotNull
    public final Set<Pin> getPins() {
        return this.pins;
    }

    public int hashCode() {
        int i10;
        int hashCode = (1517 + this.pins.hashCode()) * 41;
        CertificateChainCleaner certificateChainCleaner = this.certificateChainCleaner;
        if (certificateChainCleaner != null) {
            i10 = certificateChainCleaner.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    @NotNull
    public final CertificatePinner withCertificateChainCleaner$okhttp(@NotNull CertificateChainCleaner certificateChainCleaner) {
        Intrinsics.checkNotNullParameter(certificateChainCleaner, "certificateChainCleaner");
        if (Intrinsics.areEqual(this.certificateChainCleaner, certificateChainCleaner)) {
            return this;
        }
        return new CertificatePinner(this.pins, certificateChainCleaner);
    }

    @ms.c
    public final void check(@NotNull String hostname, @NotNull Certificate... peerCertificates) throws SSLPeerUnverifiedException {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        Intrinsics.checkNotNullParameter(peerCertificates, "peerCertificates");
        check(hostname, n.x1(peerCertificates));
    }

    public /* synthetic */ CertificatePinner(Set set, CertificateChainCleaner certificateChainCleaner, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(set, (i10 & 2) != 0 ? null : certificateChainCleaner);
    }
}
