package io.bidmachine.media3.datasource;

import android.net.Uri;
import androidx.annotation.Nullable;
import en.a;
import en.g;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;
/* loaded from: classes8.dex */
public final class UdpDataSource extends a {

    /* renamed from: e  reason: collision with root package name */
    private final int f55334e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f55335f;

    /* renamed from: g  reason: collision with root package name */
    private final DatagramPacket f55336g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Uri f55337h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private DatagramSocket f55338i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private MulticastSocket f55339j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private InetAddress f55340k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f55341l;

    /* renamed from: m  reason: collision with root package name */
    private int f55342m;

    /* loaded from: classes8.dex */
    public static final class UdpDataSourceException extends DataSourceException {
        public UdpDataSourceException(Throwable th2, int i10) {
            super(th2, i10);
        }
    }

    public UdpDataSource() {
        this(2000);
    }

    @Override // en.d
    public long b(g gVar) throws UdpDataSourceException {
        Uri uri = gVar.f51378a;
        this.f55337h = uri;
        String str = (String) cn.a.e(uri.getHost());
        int port = this.f55337h.getPort();
        f(gVar);
        try {
            this.f55340k = InetAddress.getByName(str);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f55340k, port);
            if (this.f55340k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.f55339j = multicastSocket;
                multicastSocket.joinGroup(this.f55340k);
                this.f55338i = this.f55339j;
            } else {
                this.f55338i = new DatagramSocket(inetSocketAddress);
            }
            this.f55338i.setSoTimeout(this.f55334e);
            this.f55341l = true;
            g(gVar);
            return -1L;
        } catch (IOException e10) {
            throw new UdpDataSourceException(e10, 2001);
        } catch (SecurityException e11) {
            throw new UdpDataSourceException(e11, 2006);
        }
    }

    @Override // en.d
    public void close() {
        this.f55337h = null;
        MulticastSocket multicastSocket = this.f55339j;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup((InetAddress) cn.a.e(this.f55340k));
            } catch (IOException unused) {
            }
            this.f55339j = null;
        }
        DatagramSocket datagramSocket = this.f55338i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f55338i = null;
        }
        this.f55340k = null;
        this.f55342m = 0;
        if (this.f55341l) {
            this.f55341l = false;
            e();
        }
    }

    @Override // en.d
    @Nullable
    public Uri getUri() {
        return this.f55337h;
    }

    @Override // zm.h
    public int read(byte[] bArr, int i10, int i11) throws UdpDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        if (this.f55342m == 0) {
            try {
                ((DatagramSocket) cn.a.e(this.f55338i)).receive(this.f55336g);
                int length = this.f55336g.getLength();
                this.f55342m = length;
                d(length);
            } catch (SocketTimeoutException e10) {
                throw new UdpDataSourceException(e10, 2002);
            } catch (IOException e11) {
                throw new UdpDataSourceException(e11, 2001);
            }
        }
        int length2 = this.f55336g.getLength();
        int i12 = this.f55342m;
        int min = Math.min(i12, i11);
        System.arraycopy(this.f55335f, length2 - i12, bArr, i10, min);
        this.f55342m -= min;
        return min;
    }

    public UdpDataSource(int i10) {
        this(i10, 8000);
    }

    public UdpDataSource(int i10, int i11) {
        super(true);
        this.f55334e = i11;
        byte[] bArr = new byte[i10];
        this.f55335f = bArr;
        this.f55336g = new DatagramPacket(bArr, 0, i10);
    }
}
