package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import java.util.Objects;
import javax.net.ssl.SSLSocketFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcdx extends SSLSocketFactory {
    final SSLSocketFactory zza;
    final /* synthetic */ zzcdy zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcdx(zzcdy zzcdyVar) {
        Objects.requireNonNull(zzcdyVar);
        this.zzb = zzcdyVar;
        this.zza = (SSLSocketFactory) SSLSocketFactory.getDefault();
    }

    private final Socket zza(Socket socket) throws SocketException {
        int i10;
        int i11;
        zzcdy zzcdyVar = this.zzb;
        i10 = zzcdyVar.zzq;
        if (i10 > 0) {
            i11 = zzcdyVar.zzq;
            socket.setReceiveBufferSize(i11);
        }
        zzcdyVar.zzr.add(socket);
        return socket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i10) throws IOException {
        Socket createSocket = this.zza.createSocket(str, i10);
        zza(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.zza.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.zza.getSupportedCipherSuites();
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i10, InetAddress inetAddress, int i11) throws IOException {
        Socket createSocket = this.zza.createSocket(str, i10, inetAddress, i11);
        zza(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i10) throws IOException {
        Socket createSocket = this.zza.createSocket(inetAddress, i10);
        zza(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i10, InetAddress inetAddress2, int i11) throws IOException {
        Socket createSocket = this.zza.createSocket(inetAddress, i10, inetAddress2, i11);
        zza(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i10, boolean z10) throws IOException {
        Socket createSocket = this.zza.createSocket(socket, str, i10, z10);
        zza(createSocket);
        return createSocket;
    }
}
