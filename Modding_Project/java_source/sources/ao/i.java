package ao;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
/* compiled from: DefaultExtractorInput.java */
/* loaded from: classes8.dex */
public final class i implements q {

    /* renamed from: b  reason: collision with root package name */
    private final zm.h f1849b;

    /* renamed from: c  reason: collision with root package name */
    private final long f1850c;

    /* renamed from: d  reason: collision with root package name */
    private long f1851d;

    /* renamed from: f  reason: collision with root package name */
    private int f1853f;

    /* renamed from: g  reason: collision with root package name */
    private int f1854g;

    /* renamed from: e  reason: collision with root package name */
    private byte[] f1852e = new byte[65536];

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f1848a = new byte[4096];

    static {
        zm.r.a("media3.extractor");
    }

    public i(zm.h hVar, long j10, long j11) {
        this.f1849b = hVar;
        this.f1851d = j10;
        this.f1850c = j11;
    }

    private void d(int i10) {
        if (i10 != -1) {
            this.f1851d += i10;
        }
    }

    private void e(int i10) {
        int i11 = this.f1853f + i10;
        byte[] bArr = this.f1852e;
        if (i11 > bArr.length) {
            this.f1852e = Arrays.copyOf(this.f1852e, cn.m0.p(bArr.length * 2, 65536 + i11, i11 + 524288));
        }
    }

    private int f(byte[] bArr, int i10, int i11) {
        int i12 = this.f1854g;
        if (i12 == 0) {
            return 0;
        }
        int min = Math.min(i12, i11);
        System.arraycopy(this.f1852e, 0, bArr, i10, min);
        j(min);
        return min;
    }

    private int g(byte[] bArr, int i10, int i11, int i12, boolean z10) throws IOException {
        if (!Thread.interrupted()) {
            int read = this.f1849b.read(bArr, i10 + i12, i11 - i12);
            if (read == -1) {
                if (i12 == 0 && z10) {
                    return -1;
                }
                throw new EOFException();
            }
            return i12 + read;
        }
        throw new InterruptedIOException();
    }

    private int h(int i10) {
        int min = Math.min(this.f1854g, i10);
        j(min);
        return min;
    }

    private void j(int i10) {
        byte[] bArr;
        int i11 = this.f1854g - i10;
        this.f1854g = i11;
        this.f1853f = 0;
        byte[] bArr2 = this.f1852e;
        if (i11 < bArr2.length - 524288) {
            bArr = new byte[65536 + i11];
        } else {
            bArr = bArr2;
        }
        System.arraycopy(bArr2, i10, bArr, 0, i11);
        this.f1852e = bArr;
    }

    @Override // ao.q
    public int a(byte[] bArr, int i10, int i11) throws IOException {
        int min;
        e(i11);
        int i12 = this.f1854g;
        int i13 = this.f1853f;
        int i14 = i12 - i13;
        if (i14 == 0) {
            min = g(this.f1852e, i13, i11, 0, true);
            if (min == -1) {
                return -1;
            }
            this.f1854g += min;
        } else {
            min = Math.min(i11, i14);
        }
        System.arraycopy(this.f1852e, this.f1853f, bArr, i10, min);
        this.f1853f += min;
        return min;
    }

    @Override // ao.q
    public boolean advancePeekPosition(int i10, boolean z10) throws IOException {
        e(i10);
        int i11 = this.f1854g - this.f1853f;
        while (i11 < i10) {
            i11 = g(this.f1852e, this.f1853f, i10, i11, z10);
            if (i11 == -1) {
                return false;
            }
            this.f1854g = this.f1853f + i11;
        }
        this.f1853f += i10;
        return true;
    }

    @Override // ao.q
    public long getLength() {
        return this.f1850c;
    }

    @Override // ao.q
    public long getPeekPosition() {
        return this.f1851d + this.f1853f;
    }

    @Override // ao.q
    public long getPosition() {
        return this.f1851d;
    }

    public boolean i(int i10, boolean z10) throws IOException {
        int h10 = h(i10);
        while (h10 < i10 && h10 != -1) {
            h10 = g(this.f1848a, -h10, Math.min(i10, this.f1848a.length + h10), h10, z10);
        }
        d(h10);
        if (h10 != -1) {
            return true;
        }
        return false;
    }

    @Override // ao.q
    public boolean peekFully(byte[] bArr, int i10, int i11, boolean z10) throws IOException {
        if (advancePeekPosition(i11, z10)) {
            System.arraycopy(this.f1852e, this.f1853f - i11, bArr, i10, i11);
            return true;
        }
        return false;
    }

    @Override // ao.q, zm.h
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int f10 = f(bArr, i10, i11);
        if (f10 == 0) {
            f10 = g(bArr, i10, i11, 0, true);
        }
        d(f10);
        return f10;
    }

    @Override // ao.q
    public boolean readFully(byte[] bArr, int i10, int i11, boolean z10) throws IOException {
        int f10 = f(bArr, i10, i11);
        while (f10 < i11 && f10 != -1) {
            f10 = g(bArr, i10, i11, f10, z10);
        }
        d(f10);
        return f10 != -1;
    }

    @Override // ao.q
    public void resetPeekPosition() {
        this.f1853f = 0;
    }

    @Override // ao.q
    public int skip(int i10) throws IOException {
        int h10 = h(i10);
        if (h10 == 0) {
            byte[] bArr = this.f1848a;
            h10 = g(bArr, 0, Math.min(i10, bArr.length), 0, true);
        }
        d(h10);
        return h10;
    }

    @Override // ao.q
    public void skipFully(int i10) throws IOException {
        i(i10, false);
    }

    @Override // ao.q
    public void peekFully(byte[] bArr, int i10, int i11) throws IOException {
        peekFully(bArr, i10, i11, false);
    }

    @Override // ao.q
    public void readFully(byte[] bArr, int i10, int i11) throws IOException {
        readFully(bArr, i10, i11, false);
    }

    @Override // ao.q
    public void advancePeekPosition(int i10) throws IOException {
        advancePeekPosition(i10, false);
    }
}
