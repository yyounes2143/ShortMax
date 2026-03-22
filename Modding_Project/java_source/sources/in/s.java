package in;

import cn.m0;
import com.inmobi.commons.core.configs.AdConfig;
import io.bidmachine.media3.common.audio.AudioProcessor;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: SilenceSkippingAudioProcessor.java */
/* loaded from: classes8.dex */
public final class s extends io.bidmachine.media3.common.audio.b {

    /* renamed from: i  reason: collision with root package name */
    private final float f53507i;

    /* renamed from: j  reason: collision with root package name */
    private final short f53508j;

    /* renamed from: k  reason: collision with root package name */
    private final int f53509k;

    /* renamed from: l  reason: collision with root package name */
    private final long f53510l;

    /* renamed from: m  reason: collision with root package name */
    private final long f53511m;

    /* renamed from: n  reason: collision with root package name */
    private int f53512n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f53513o;

    /* renamed from: p  reason: collision with root package name */
    private int f53514p;

    /* renamed from: q  reason: collision with root package name */
    private long f53515q;

    /* renamed from: r  reason: collision with root package name */
    private int f53516r;

    /* renamed from: s  reason: collision with root package name */
    private byte[] f53517s;

    /* renamed from: t  reason: collision with root package name */
    private int f53518t;

    /* renamed from: u  reason: collision with root package name */
    private int f53519u;

    /* renamed from: v  reason: collision with root package name */
    private byte[] f53520v;

    public s() {
        this(100000L, 0.2f, 2000000L, 10, (short) 1024);
    }

    private static int A(byte b10, byte b11) {
        return (b10 << 8) | (b11 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
    }

    private int h(float f10) {
        return i((int) f10);
    }

    private int i(int i10) {
        int i11 = this.f53512n;
        return (i10 / i11) * i11;
    }

    private int j(int i10, int i11) {
        int i12 = this.f53509k;
        return i12 + ((((100 - i12) * (i10 * 1000)) / i11) / 1000);
    }

    private int k(int i10, int i11) {
        return (((this.f53509k - 100) * ((i10 * 1000) / i11)) / 1000) + 100;
    }

    private int l(int i10) {
        boolean z10;
        int m10 = ((m(this.f53511m) - this.f53516r) * this.f53512n) - (this.f53517s.length / 2);
        if (m10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        return h(Math.min((i10 * this.f53507i) + 0.5f, m10));
    }

    private int m(long j10) {
        return (int) ((j10 * this.f55225b.f55215a) / 1000000);
    }

    private int n(ByteBuffer byteBuffer) {
        for (int limit = byteBuffer.limit() - 1; limit >= byteBuffer.position(); limit -= 2) {
            if (q(byteBuffer.get(limit), byteBuffer.get(limit - 1))) {
                int i10 = this.f53512n;
                return ((limit / i10) * i10) + i10;
            }
        }
        return byteBuffer.position();
    }

    private int o(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position() + 1; position < byteBuffer.limit(); position += 2) {
            if (q(byteBuffer.get(position), byteBuffer.get(position - 1))) {
                int i10 = this.f53512n;
                return i10 * (position / i10);
            }
        }
        return byteBuffer.limit();
    }

    private boolean q(byte b10, byte b11) {
        if (Math.abs(A(b10, b11)) > this.f53508j) {
            return true;
        }
        return false;
    }

    private void r(byte[] bArr, int i10, int i11) {
        int i12;
        if (i11 == 3) {
            return;
        }
        for (int i13 = 0; i13 < i10; i13 += 2) {
            int A = A(bArr[i13 + 1], bArr[i13]);
            if (i11 == 0) {
                i12 = k(i13, i10 - 1);
            } else if (i11 == 2) {
                i12 = j(i13, i10 - 1);
            } else {
                i12 = this.f53509k;
            }
            x(bArr, i13, (A * i12) / 100);
        }
    }

    private void s(ByteBuffer byteBuffer) {
        g(byteBuffer.remaining()).put(byteBuffer).flip();
    }

    private void t(byte[] bArr, int i10, int i11) {
        boolean z10;
        if (i10 % this.f53512n == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.b(z10, "byteOutput size is not aligned to frame size " + i10);
        r(bArr, i10, i11);
        g(i10).put(bArr, 0, i10).flip();
    }

    private void u(boolean z10) {
        int length;
        int l10;
        boolean z11;
        int i10;
        boolean z12;
        int i11 = this.f53519u;
        byte[] bArr = this.f53517s;
        if (i11 == bArr.length || z10) {
            boolean z13 = false;
            if (this.f53516r == 0) {
                if (z10) {
                    v(i11, 3);
                    length = i11;
                } else {
                    if (i11 >= bArr.length / 2) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    cn.a.g(z12);
                    length = this.f53517s.length / 2;
                    v(length, 0);
                }
                l10 = length;
            } else if (z10) {
                int length2 = i11 - (bArr.length / 2);
                int length3 = (bArr.length / 2) + length2;
                int l11 = l(length2) + (this.f53517s.length / 2);
                v(l11, 2);
                l10 = l11;
                length = length3;
            } else {
                length = i11 - (bArr.length / 2);
                l10 = l(length);
                v(l10, 1);
            }
            if (length % this.f53512n == 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            cn.a.h(z11, "bytesConsumed is not aligned to frame size: %s" + length);
            if (i11 >= l10) {
                z13 = true;
            }
            cn.a.g(z13);
            this.f53519u -= length;
            int i12 = this.f53518t + length;
            this.f53518t = i12;
            this.f53518t = i12 % this.f53517s.length;
            this.f53516r = this.f53516r + (l10 / this.f53512n);
            this.f53515q += (length - l10) / i10;
        }
    }

    private void v(int i10, int i11) {
        boolean z10;
        boolean z11;
        if (i10 == 0) {
            return;
        }
        boolean z12 = true;
        if (this.f53519u >= i10) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        if (i11 == 2) {
            int i12 = this.f53518t;
            int i13 = this.f53519u;
            int i14 = i12 + i13;
            byte[] bArr = this.f53517s;
            if (i14 <= bArr.length) {
                System.arraycopy(bArr, (i12 + i13) - i10, this.f53520v, 0, i10);
            } else {
                int length = i13 - (bArr.length - i12);
                if (length >= i10) {
                    System.arraycopy(bArr, length - i10, this.f53520v, 0, i10);
                } else {
                    int i15 = i10 - length;
                    System.arraycopy(bArr, bArr.length - i15, this.f53520v, 0, i15);
                    System.arraycopy(this.f53517s, 0, this.f53520v, i15, length);
                }
            }
        } else {
            int i16 = this.f53518t;
            int i17 = i16 + i10;
            byte[] bArr2 = this.f53517s;
            if (i17 <= bArr2.length) {
                System.arraycopy(bArr2, i16, this.f53520v, 0, i10);
            } else {
                int length2 = bArr2.length - i16;
                System.arraycopy(bArr2, i16, this.f53520v, 0, length2);
                System.arraycopy(this.f53517s, 0, this.f53520v, length2, i10 - length2);
            }
        }
        if (i10 % this.f53512n == 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        cn.a.b(z11, "sizeToOutput is not aligned to frame size: " + i10);
        if (this.f53518t >= this.f53517s.length) {
            z12 = false;
        }
        cn.a.g(z12);
        t(this.f53520v, i10, i11);
    }

    private void w(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.f53517s.length));
        int n10 = n(byteBuffer);
        if (n10 == byteBuffer.position()) {
            this.f53514p = 1;
        } else {
            byteBuffer.limit(Math.min(n10, byteBuffer.capacity()));
            s(byteBuffer);
        }
        byteBuffer.limit(limit);
    }

    private static void x(byte[] bArr, int i10, int i11) {
        if (i11 >= 32767) {
            bArr[i10] = -1;
            bArr[i10 + 1] = ByteCompanionObject.MAX_VALUE;
        } else if (i11 <= -32768) {
            bArr[i10] = 0;
            bArr[i10 + 1] = ByteCompanionObject.MIN_VALUE;
        } else {
            bArr[i10] = (byte) (i11 & 255);
            bArr[i10 + 1] = (byte) (i11 >> 8);
        }
    }

    private void z(ByteBuffer byteBuffer) {
        boolean z10;
        int i10;
        int i11;
        boolean z11;
        boolean z12;
        boolean z13 = true;
        if (this.f53518t < this.f53517s.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        int limit = byteBuffer.limit();
        int o10 = o(byteBuffer);
        int position = o10 - byteBuffer.position();
        int i12 = this.f53518t;
        int i13 = this.f53519u;
        int i14 = i12 + i13;
        byte[] bArr = this.f53517s;
        if (i14 < bArr.length) {
            i10 = bArr.length - (i13 + i12);
            i11 = i12 + i13;
        } else {
            int length = i13 - (bArr.length - i12);
            i10 = i12 - length;
            i11 = length;
        }
        if (o10 < limit) {
            z11 = true;
        } else {
            z11 = false;
        }
        int min = Math.min(position, i10);
        byteBuffer.limit(byteBuffer.position() + min);
        byteBuffer.get(this.f53517s, i11, min);
        int i15 = this.f53519u + min;
        this.f53519u = i15;
        if (i15 <= this.f53517s.length) {
            z12 = true;
        } else {
            z12 = false;
        }
        cn.a.g(z12);
        if (!z11 || position >= i10) {
            z13 = false;
        }
        u(z13);
        if (z13) {
            this.f53514p = 0;
            this.f53516r = 0;
        }
        byteBuffer.limit(limit);
    }

    @Override // io.bidmachine.media3.common.audio.b
    protected AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f55217c == 2) {
            if (aVar.f55215a == -1) {
                return AudioProcessor.a.f55214e;
            }
            return aVar;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // io.bidmachine.media3.common.audio.b
    public void d() {
        if (isActive()) {
            this.f53512n = this.f55225b.f55216b * 2;
            int i10 = i(m(this.f53510l) / 2) * 2;
            if (this.f53517s.length != i10) {
                this.f53517s = new byte[i10];
                this.f53520v = new byte[i10];
            }
        }
        this.f53514p = 0;
        this.f53515q = 0L;
        this.f53516r = 0;
        this.f53518t = 0;
        this.f53519u = 0;
    }

    @Override // io.bidmachine.media3.common.audio.b
    public void e() {
        if (this.f53519u > 0) {
            u(true);
            this.f53516r = 0;
        }
    }

    @Override // io.bidmachine.media3.common.audio.b
    public void f() {
        this.f53513o = false;
        byte[] bArr = m0.f3619f;
        this.f53517s = bArr;
        this.f53520v = bArr;
    }

    @Override // io.bidmachine.media3.common.audio.b, io.bidmachine.media3.common.audio.AudioProcessor
    public boolean isActive() {
        if (super.isActive() && this.f53513o) {
            return true;
        }
        return false;
    }

    public long p() {
        return this.f53515q;
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !b()) {
            int i10 = this.f53514p;
            if (i10 != 0) {
                if (i10 == 1) {
                    z(byteBuffer);
                } else {
                    throw new IllegalStateException();
                }
            } else {
                w(byteBuffer);
            }
        }
    }

    public void y(boolean z10) {
        this.f53513o = z10;
    }

    public s(long j10, float f10, long j11, int i10, short s10) {
        boolean z10 = false;
        this.f53516r = 0;
        this.f53518t = 0;
        this.f53519u = 0;
        if (f10 >= 0.0f && f10 <= 1.0f) {
            z10 = true;
        }
        cn.a.a(z10);
        this.f53510l = j10;
        this.f53507i = f10;
        this.f53511m = j11;
        this.f53509k = i10;
        this.f53508j = s10;
        byte[] bArr = m0.f3619f;
        this.f53517s = bArr;
        this.f53520v = bArr;
    }
}
