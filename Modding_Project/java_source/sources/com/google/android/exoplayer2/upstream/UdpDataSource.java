package com.google.android.exoplayer2.upstream;

import a7.e;
import a7.k;
import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;
/* loaded from: classes4.dex */
public final class UdpDataSource extends e {

    /* renamed from: e  reason: collision with root package name */
    private final int f19106e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f19107f;

    /* renamed from: g  reason: collision with root package name */
    private final DatagramPacket f19108g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Uri f19109h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private DatagramSocket f19110i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private MulticastSocket f19111j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private InetAddress f19112k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f19113l;

    /* renamed from: m  reason: collision with root package name */
    private int f19114m;

    /* loaded from: classes4.dex */
    public static final class UdpDataSourceException extends DataSourceException {
        public UdpDataSourceException(Throwable th2, int i10) {
            super(th2, i10);
        }
    }

    public UdpDataSource() {
        this(2000);
    }

    @Override // a7.h
    public long b(k kVar) throws UdpDataSourceException {
        Uri uri = kVar.f198a;
        this.f19109h = uri;
        String str = (String) b7.a.e(uri.getHost());
        int port = this.f19109h.getPort();
        f(kVar);
        try {
            this.f19112k = InetAddress.getByName(str);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f19112k, port);
            if (this.f19112k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.f19111j = multicastSocket;
                multicastSocket.joinGroup(this.f19112k);
                this.f19110i = this.f19111j;
            } else {
                this.f19110i = new DatagramSocket(inetSocketAddress);
            }
            this.f19110i.setSoTimeout(this.f19106e);
            this.f19113l = true;
            g(kVar);
            return -1L;
        } catch (IOException e10) {
            throw new UdpDataSourceException(e10, 2001);
        } catch (SecurityException e11) {
            throw new UdpDataSourceException(e11, 2006);
        }
    }

    @Override // a7.h
    public void close() {
        this.f19109h = null;
        MulticastSocket multicastSocket = this.f19111j;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup((InetAddress) b7.a.e(this.f19112k));
            } catch (IOException unused) {
            }
            this.f19111j = null;
        }
        DatagramSocket datagramSocket = this.f19110i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f19110i = null;
        }
        this.f19112k = null;
        this.f19114m = 0;
        if (this.f19113l) {
            this.f19113l = false;
            e();
        }
    }

    @Override // a7.h
    @Nullable
    public Uri getUri() {
        return this.f19109h;
    }

    @Override // a7.f
    public int read(byte[] bArr, int i10, int i11) throws UdpDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        if (this.f19114m == 0) {
            try {
                ((DatagramSocket) b7.a.e(this.f19110i)).receive(this.f19108g);
                int length = this.f19108g.getLength();
                this.f19114m = length;
                d(length);
            } catch (SocketTimeoutException e10) {
                throw new UdpDataSourceException(e10, 2002);
            } catch (IOException e11) {
                throw new UdpDataSourceException(e11, 2001);
            }
        }
        int length2 = this.f19108g.getLength();
        int i12 = this.f19114m;
        int min = Math.min(i12, i11);
        System.arraycopy(this.f19107f, length2 - i12, bArr, i10, min);
        this.f19114m -= min;
        return min;
    }

    public UdpDataSource(int i10) {
        this(i10, 8000);
    }

    public UdpDataSource(int i10, int i11) {
        super(true);
        this.f19106e = i11;
        byte[] bArr = new byte[i10];
        this.f19107f = bArr;
        this.f19108g = new DatagramPacket(bArr, 0, i10);
    }
}
