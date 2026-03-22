package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.facebook.ads.redexgen.X.df  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2131df extends InputStream {
    public int A00;
    public long A01;
    public InterfaceC2731nl A02;
    public final Uri A03;
    public final InterfaceC11194w A04;
    public final C2085cu A05;
    public final String A06;

    public C2131df(C2085cu c2085cu, Uri uri, InterfaceC11194w interfaceC11194w) throws IOException {
        this.A05 = c2085cu;
        this.A04 = interfaceC11194w;
        this.A03 = uri;
        this.A06 = C2170eJ.A09(this.A05, this.A03);
        A00(0);
    }

    private void A00(int i10) throws IOException {
        if (this.A02 != null) {
            this.A02.close();
        }
        this.A02 = this.A04.A5A();
        this.A01 = (int) this.A02.AFy(new AnonymousClass56(this.A03, i10, -1L, this.A06));
    }

    @Override // java.io.InputStream
    public final int available() {
        return ((int) this.A01) - this.A00;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.A02.close();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        byte[] b10 = new byte[1];
        return read(b10);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int read = this.A02.read(bArr, i10, i11);
        int read2 = this.A00;
        this.A00 = read2 + read;
        return read;
    }

    @Override // java.io.InputStream
    public final long skip(long j10) throws IOException {
        long j11 = this.A01 - this.A00;
        if (j11 <= 0) {
            return 0L;
        }
        if (j10 > j11) {
            j10 = j11;
        }
        this.A00 = (int) (this.A00 + j10);
        A00(this.A00);
        return j10;
    }
}
