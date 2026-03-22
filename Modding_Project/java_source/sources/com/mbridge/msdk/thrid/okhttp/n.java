package com.mbridge.msdk.thrid.okhttp;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
/* compiled from: EventListener.java */
/* loaded from: classes6.dex */
public abstract class n {
    public static final n NONE = new a();

    /* compiled from: EventListener.java */
    /* loaded from: classes6.dex */
    static class a extends n {
        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EventListener.java */
    /* loaded from: classes6.dex */
    public static class b implements c {
        b() {
        }

        @Override // com.mbridge.msdk.thrid.okhttp.n.c
        public n a(d dVar) {
            return n.this;
        }
    }

    /* compiled from: EventListener.java */
    /* loaded from: classes6.dex */
    public interface c {
        n a(d dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c factory(n nVar) {
        return new b();
    }

    public void callEnd(d dVar) {
    }

    public void callStart(d dVar) {
    }

    public void requestBodyStart(d dVar) {
    }

    public void requestHeadersStart(d dVar) {
    }

    public void responseBodyStart(d dVar) {
    }

    public void responseHeadersStart(d dVar) {
    }

    public void secureConnectStart(d dVar) {
    }

    public void callFailed(d dVar, IOException iOException) {
    }

    public void connectionAcquired(d dVar, g gVar) {
    }

    public void connectionReleased(d dVar, g gVar) {
    }

    public void dnsStart(d dVar, String str) {
    }

    public void requestBodyEnd(d dVar, long j10) {
    }

    public void requestHeadersEnd(d dVar, w wVar) {
    }

    public void responseBodyEnd(d dVar, long j10) {
    }

    public void responseHeadersEnd(d dVar, y yVar) {
    }

    public void secureConnectEnd(d dVar, o oVar) {
    }

    public void connectStart(d dVar, InetSocketAddress inetSocketAddress, Proxy proxy) {
    }

    public void dnsEnd(d dVar, String str, List<InetAddress> list) {
    }

    public void connectEnd(d dVar, InetSocketAddress inetSocketAddress, Proxy proxy, u uVar) {
    }

    public void connectFailed(d dVar, InetSocketAddress inetSocketAddress, Proxy proxy, u uVar, IOException iOException) {
    }
}
