package t5;

import b7.s0;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
/* compiled from: DefaultExtractorInput.java */
/* loaded from: classes4.dex */
public final class e implements l {

    /* renamed from: b  reason: collision with root package name */
    private final a7.f f67129b;

    /* renamed from: c  reason: collision with root package name */
    private final long f67130c;

    /* renamed from: d  reason: collision with root package name */
    private long f67131d;

    /* renamed from: f  reason: collision with root package name */
    private int f67133f;

    /* renamed from: g  reason: collision with root package name */
    private int f67134g;

    /* renamed from: e  reason: collision with root package name */
    private byte[] f67132e = new byte[65536];

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f67128a = new byte[4096];

    static {
        o5.z.a("goog.exo.extractor");
    }

    public e(a7.f fVar, long j10, long j11) {
        this.f67129b = fVar;
        this.f67131d = j10;
        this.f67130c = j11;
    }

    private void d(int i10) {
        if (i10 != -1) {
            this.f67131d += i10;
        }
    }

    private void e(int i10) {
        int i11 = this.f67133f + i10;
        byte[] bArr = this.f67132e;
        if (i11 > bArr.length) {
            this.f67132e = Arrays.copyOf(this.f67132e, s0.p(bArr.length * 2, 65536 + i11, i11 + 524288));
        }
    }

    private int f(byte[] bArr, int i10, int i11) {
        int i12 = this.f67134g;
        if (i12 == 0) {
            return 0;
        }
        int min = Math.min(i12, i11);
        System.arraycopy(this.f67132e, 0, bArr, i10, min);
        j(min);
        return min;
    }

    private int g(byte[] bArr, int i10, int i11, int i12, boolean z10) throws IOException {
        if (!Thread.interrupted()) {
            int read = this.f67129b.read(bArr, i10 + i12, i11 - i12);
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
        int min = Math.min(this.f67134g, i10);
        j(min);
        return min;
    }

    private void j(int i10) {
        byte[] bArr;
        int i11 = this.f67134g - i10;
        this.f67134g = i11;
        this.f67133f = 0;
        byte[] bArr2 = this.f67132e;
        if (i11 < bArr2.length - 524288) {
            bArr = new byte[65536 + i11];
        } else {
            bArr = bArr2;
        }
        System.arraycopy(bArr2, i10, bArr, 0, i11);
        this.f67132e = bArr;
    }

    @Override // t5.l
    public int a(byte[] bArr, int i10, int i11) throws IOException {
        int min;
        e(i11);
        int i12 = this.f67134g;
        int i13 = this.f67133f;
        int i14 = i12 - i13;
        if (i14 == 0) {
            min = g(this.f67132e, i13, i11, 0, true);
            if (min == -1) {
                return -1;
            }
            this.f67134g += min;
        } else {
            min = Math.min(i11, i14);
        }
        System.arraycopy(this.f67132e, this.f67133f, bArr, i10, min);
        this.f67133f += min;
        return min;
    }

    @Override // t5.l
    public boolean advancePeekPosition(int i10, boolean z10) throws IOException {
        e(i10);
        int i11 = this.f67134g - this.f67133f;
        while (i11 < i10) {
            i11 = g(this.f67132e, this.f67133f, i10, i11, z10);
            if (i11 == -1) {
                return false;
            }
            this.f67134g = this.f67133f + i11;
        }
        this.f67133f += i10;
        return true;
    }

    @Override // t5.l
    public long getLength() {
        return this.f67130c;
    }

    @Override // t5.l
    public long getPeekPosition() {
        return this.f67131d + this.f67133f;
    }

    @Override // t5.l
    public long getPosition() {
        return this.f67131d;
    }

    public boolean i(int i10, boolean z10) throws IOException {
        int h10 = h(i10);
        while (h10 < i10 && h10 != -1) {
            h10 = g(this.f67128a, -h10, Math.min(i10, this.f67128a.length + h10), h10, z10);
        }
        d(h10);
        if (h10 != -1) {
            return true;
        }
        return false;
    }

    @Override // t5.l
    public boolean peekFully(byte[] bArr, int i10, int i11, boolean z10) throws IOException {
        if (advancePeekPosition(i11, z10)) {
            System.arraycopy(this.f67132e, this.f67133f - i11, bArr, i10, i11);
            return true;
        }
        return false;
    }

    @Override // t5.l, a7.f
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int f10 = f(bArr, i10, i11);
        if (f10 == 0) {
            f10 = g(bArr, i10, i11, 0, true);
        }
        d(f10);
        return f10;
    }

    @Override // t5.l
    public boolean readFully(byte[] bArr, int i10, int i11, boolean z10) throws IOException {
        int f10 = f(bArr, i10, i11);
        while (f10 < i11 && f10 != -1) {
            f10 = g(bArr, i10, i11, f10, z10);
        }
        d(f10);
        return f10 != -1;
    }

    @Override // t5.l
    public void resetPeekPosition() {
        this.f67133f = 0;
    }

    @Override // t5.l
    public int skip(int i10) throws IOException {
        int h10 = h(i10);
        if (h10 == 0) {
            byte[] bArr = this.f67128a;
            h10 = g(bArr, 0, Math.min(i10, bArr.length), 0, true);
        }
        d(h10);
        return h10;
    }

    @Override // t5.l
    public void skipFully(int i10) throws IOException {
        i(i10, false);
    }

    @Override // t5.l
    public void peekFully(byte[] bArr, int i10, int i11) throws IOException {
        peekFully(bArr, i10, i11, false);
    }

    @Override // t5.l
    public void readFully(byte[] bArr, int i10, int i11) throws IOException {
        readFully(bArr, i10, i11, false);
    }

    @Override // t5.l
    public void advancePeekPosition(int i10) throws IOException {
        advancePeekPosition(i10, false);
    }
}
