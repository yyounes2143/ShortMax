package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.mbridge.msdk.thrid.okhttp.i;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;
/* compiled from: ConnectionSpecSelector.java */
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final List<i> f29637a;

    /* renamed from: b  reason: collision with root package name */
    private int f29638b = 0;

    /* renamed from: c  reason: collision with root package name */
    private boolean f29639c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f29640d;

    public b(List<i> list) {
        this.f29637a = list;
    }

    private boolean b(SSLSocket sSLSocket) {
        for (int i10 = this.f29638b; i10 < this.f29637a.size(); i10++) {
            if (this.f29637a.get(i10).a(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public i a(SSLSocket sSLSocket) throws IOException {
        i iVar;
        int i10 = this.f29638b;
        int size = this.f29637a.size();
        while (true) {
            if (i10 >= size) {
                iVar = null;
                break;
            }
            iVar = this.f29637a.get(i10);
            if (iVar.a(sSLSocket)) {
                this.f29638b = i10 + 1;
                break;
            }
            i10++;
        }
        if (iVar != null) {
            this.f29639c = b(sSLSocket);
            com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.a(iVar, sSLSocket, this.f29640d);
            return iVar;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f29640d + ", modes=" + this.f29637a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public boolean a(IOException iOException) {
        this.f29640d = true;
        if (!this.f29639c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z10 = iOException instanceof SSLHandshakeException;
        if ((z10 && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return z10 || (iOException instanceof SSLProtocolException) || (iOException instanceof SSLException);
    }
}
