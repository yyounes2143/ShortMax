package com.mbridge.msdk.thrid.okhttp;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.IOException;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
/* compiled from: Handshake.java */
/* loaded from: classes6.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f29983a;

    /* renamed from: b  reason: collision with root package name */
    private final f f29984b;

    /* renamed from: c  reason: collision with root package name */
    private final List<Certificate> f29985c;

    /* renamed from: d  reason: collision with root package name */
    private final List<Certificate> f29986d;

    private o(b0 b0Var, f fVar, List<Certificate> list, List<Certificate> list2) {
        this.f29983a = b0Var;
        this.f29984b = fVar;
        this.f29985c = list;
        this.f29986d = list2;
    }

    public static o a(SSLSession sSLSession) throws IOException {
        Certificate[] certificateArr;
        List emptyList;
        List emptyList2;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite != null) {
            if (!"SSL_NULL_WITH_NULL_NULL".equals(cipherSuite)) {
                f a10 = f.a(cipherSuite);
                String protocol = sSLSession.getProtocol();
                if (protocol != null) {
                    if (!"NONE".equals(protocol)) {
                        b0 a11 = b0.a(protocol);
                        try {
                            certificateArr = sSLSession.getPeerCertificates();
                        } catch (SSLPeerUnverifiedException unused) {
                            certificateArr = null;
                        }
                        if (certificateArr != null) {
                            emptyList = com.mbridge.msdk.thrid.okhttp.internal.c.a(certificateArr);
                        } else {
                            emptyList = Collections.emptyList();
                        }
                        Certificate[] localCertificates = sSLSession.getLocalCertificates();
                        if (localCertificates != null) {
                            emptyList2 = com.mbridge.msdk.thrid.okhttp.internal.c.a(localCertificates);
                        } else {
                            emptyList2 = Collections.emptyList();
                        }
                        return new o(a11, a10, emptyList, emptyList2);
                    }
                    throw new IOException("tlsVersion == NONE");
                }
                throw new IllegalStateException("tlsVersion == null");
            }
            throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
        }
        throw new IllegalStateException("cipherSuite == null");
    }

    public List<Certificate> b() {
        return this.f29985c;
    }

    public b0 c() {
        return this.f29983a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (!this.f29983a.equals(oVar.f29983a) || !this.f29984b.equals(oVar.f29984b) || !this.f29985c.equals(oVar.f29985c) || !this.f29986d.equals(oVar.f29986d)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((((((this.f29983a.hashCode() + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + this.f29984b.hashCode()) * 31) + this.f29985c.hashCode()) * 31) + this.f29986d.hashCode();
    }

    public f a() {
        return this.f29984b;
    }
}
