package com.explorestack.protobuf;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IterableByteBufferInputStream.java */
/* loaded from: classes3.dex */
public class j0 extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private Iterator<ByteBuffer> f14415a;

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer f14416b;

    /* renamed from: c  reason: collision with root package name */
    private int f14417c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f14418d;

    /* renamed from: e  reason: collision with root package name */
    private int f14419e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f14420f;

    /* renamed from: g  reason: collision with root package name */
    private byte[] f14421g;

    /* renamed from: h  reason: collision with root package name */
    private int f14422h;

    /* renamed from: i  reason: collision with root package name */
    private long f14423i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j0(Iterable<ByteBuffer> iterable) {
        this.f14415a = iterable.iterator();
        for (ByteBuffer byteBuffer : iterable) {
            this.f14417c++;
        }
        this.f14418d = -1;
        if (!d()) {
            this.f14416b = i0.f14405d;
            this.f14418d = 0;
            this.f14419e = 0;
            this.f14423i = 0L;
        }
    }

    private boolean d() {
        this.f14418d++;
        if (!this.f14415a.hasNext()) {
            return false;
        }
        ByteBuffer next = this.f14415a.next();
        this.f14416b = next;
        this.f14419e = next.position();
        if (this.f14416b.hasArray()) {
            this.f14420f = true;
            this.f14421g = this.f14416b.array();
            this.f14422h = this.f14416b.arrayOffset();
        } else {
            this.f14420f = false;
            this.f14423i = o2.k(this.f14416b);
            this.f14421g = null;
        }
        return true;
    }

    private void g(int i10) {
        int i11 = this.f14419e + i10;
        this.f14419e = i11;
        if (i11 == this.f14416b.limit()) {
            d();
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f14418d == this.f14417c) {
            return -1;
        }
        if (this.f14420f) {
            int i10 = this.f14421g[this.f14419e + this.f14422h] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            g(1);
            return i10;
        }
        int w10 = o2.w(this.f14419e + this.f14423i) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        g(1);
        return w10;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (this.f14418d == this.f14417c) {
            return -1;
        }
        int limit = this.f14416b.limit();
        int i12 = this.f14419e;
        int i13 = limit - i12;
        if (i11 > i13) {
            i11 = i13;
        }
        if (this.f14420f) {
            System.arraycopy(this.f14421g, i12 + this.f14422h, bArr, i10, i11);
            g(i11);
        } else {
            int position = this.f14416b.position();
            this.f14416b.position(this.f14419e);
            this.f14416b.get(bArr, i10, i11);
            this.f14416b.position(position);
            g(i11);
        }
        return i11;
    }
}
