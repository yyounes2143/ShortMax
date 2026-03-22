package com.mbridge.msdk.thrid.okhttp;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
/* compiled from: CertificatePinner.java */
/* loaded from: classes6.dex */
public final class e {

    /* renamed from: c  reason: collision with root package name */
    public static final e f29498c = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final Set<b> f29499a;

    /* renamed from: b  reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okhttp.internal.tls.c f29500b;

    /* compiled from: CertificatePinner.java */
    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<b> f29501a = new ArrayList();

        public e a() {
            return new e(new LinkedHashSet(this.f29501a), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CertificatePinner.java */
    /* loaded from: classes6.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final String f29502a;

        /* renamed from: b  reason: collision with root package name */
        final String f29503b;

        /* renamed from: c  reason: collision with root package name */
        final String f29504c;

        /* renamed from: d  reason: collision with root package name */
        final com.mbridge.msdk.thrid.okio.f f29505d;

        boolean a(String str) {
            if (this.f29502a.startsWith("*.")) {
                int indexOf = str.indexOf(46);
                if ((str.length() - indexOf) - 1 == this.f29503b.length()) {
                    String str2 = this.f29503b;
                    if (str.regionMatches(false, indexOf + 1, str2, 0, str2.length())) {
                        return true;
                    }
                }
                return false;
            }
            return str.equals(this.f29503b);
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                if (this.f29502a.equals(bVar.f29502a) && this.f29504c.equals(bVar.f29504c) && this.f29505d.equals(bVar.f29505d)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return ((((this.f29502a.hashCode() + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + this.f29504c.hashCode()) * 31) + this.f29505d.hashCode();
        }

        public String toString() {
            return this.f29504c + this.f29505d.a();
        }
    }

    e(Set<b> set, com.mbridge.msdk.thrid.okhttp.internal.tls.c cVar) {
        this.f29499a = set;
        this.f29500b = cVar;
    }

    static com.mbridge.msdk.thrid.okio.f b(X509Certificate x509Certificate) {
        return com.mbridge.msdk.thrid.okio.f.a(x509Certificate.getPublicKey().getEncoded()).d();
    }

    public void a(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<b> a10 = a(str);
        if (a10.isEmpty()) {
            return;
        }
        com.mbridge.msdk.thrid.okhttp.internal.tls.c cVar = this.f29500b;
        if (cVar != null) {
            list = cVar.a(list, str);
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i10);
            int size2 = a10.size();
            com.mbridge.msdk.thrid.okio.f fVar = null;
            com.mbridge.msdk.thrid.okio.f fVar2 = null;
            for (int i11 = 0; i11 < size2; i11++) {
                b bVar = a10.get(i11);
                if (bVar.f29504c.equals("sha256/")) {
                    if (fVar == null) {
                        fVar = b(x509Certificate);
                    }
                    if (bVar.f29505d.equals(fVar)) {
                        return;
                    }
                } else if (bVar.f29504c.equals("sha1/")) {
                    if (fVar2 == null) {
                        fVar2 = a(x509Certificate);
                    }
                    if (bVar.f29505d.equals(fVar2)) {
                        return;
                    }
                } else {
                    throw new AssertionError("unsupported hashAlgorithm: " + bVar.f29504c);
                }
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Certificate pinning failure!");
        sb2.append("\n  Peer certificate chain:");
        int size3 = list.size();
        for (int i12 = 0; i12 < size3; i12++) {
            X509Certificate x509Certificate2 = (X509Certificate) list.get(i12);
            sb2.append("\n    ");
            sb2.append(a((Certificate) x509Certificate2));
            sb2.append(": ");
            sb2.append(x509Certificate2.getSubjectDN().getName());
        }
        sb2.append("\n  Pinned certificates for ");
        sb2.append(str);
        sb2.append(":");
        int size4 = a10.size();
        for (int i13 = 0; i13 < size4; i13++) {
            sb2.append("\n    ");
            sb2.append(a10.get(i13));
        }
        throw new SSLPeerUnverifiedException(sb2.toString());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f29500b, eVar.f29500b) && this.f29499a.equals(eVar.f29499a)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i10;
        com.mbridge.msdk.thrid.okhttp.internal.tls.c cVar = this.f29500b;
        if (cVar != null) {
            i10 = cVar.hashCode();
        } else {
            i10 = 0;
        }
        return (i10 * 31) + this.f29499a.hashCode();
    }

    List<b> a(String str) {
        List<b> emptyList = Collections.emptyList();
        for (b bVar : this.f29499a) {
            if (bVar.a(str)) {
                if (emptyList.isEmpty()) {
                    emptyList = new ArrayList<>();
                }
                emptyList.add(bVar);
            }
        }
        return emptyList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e a(com.mbridge.msdk.thrid.okhttp.internal.tls.c cVar) {
        return com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f29500b, cVar) ? this : new e(this.f29499a, cVar);
    }

    public static String a(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return "sha256/" + b((X509Certificate) certificate).a();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    static com.mbridge.msdk.thrid.okio.f a(X509Certificate x509Certificate) {
        return com.mbridge.msdk.thrid.okio.f.a(x509Certificate.getPublicKey().getEncoded()).c();
    }
}
