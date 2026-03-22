package io.bidmachine.media3.exoplayer.source;

import androidx.annotation.Nullable;
import ao.o0;
import cn.m0;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.source.f0;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
import wn.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SampleDataQueue.java */
/* loaded from: classes8.dex */
public class d0 {

    /* renamed from: a  reason: collision with root package name */
    private final wn.b f56827a;

    /* renamed from: b  reason: collision with root package name */
    private final int f56828b;

    /* renamed from: c  reason: collision with root package name */
    private final cn.b0 f56829c;

    /* renamed from: d  reason: collision with root package name */
    private a f56830d;

    /* renamed from: e  reason: collision with root package name */
    private a f56831e;

    /* renamed from: f  reason: collision with root package name */
    private a f56832f;

    /* renamed from: g  reason: collision with root package name */
    private long f56833g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SampleDataQueue.java */
    /* loaded from: classes8.dex */
    public static final class a implements b.a {

        /* renamed from: a  reason: collision with root package name */
        public long f56834a;

        /* renamed from: b  reason: collision with root package name */
        public long f56835b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public wn.a f56836c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public a f56837d;

        public a(long j10, int i10) {
            d(j10, i10);
        }

        @Override // wn.b.a
        public wn.a a() {
            return (wn.a) cn.a.e(this.f56836c);
        }

        public a b() {
            this.f56836c = null;
            a aVar = this.f56837d;
            this.f56837d = null;
            return aVar;
        }

        public void c(wn.a aVar, a aVar2) {
            this.f56836c = aVar;
            this.f56837d = aVar2;
        }

        public void d(long j10, int i10) {
            boolean z10;
            if (this.f56836c == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.g(z10);
            this.f56834a = j10;
            this.f56835b = j10 + i10;
        }

        public int e(long j10) {
            return ((int) (j10 - this.f56834a)) + this.f56836c.f69976b;
        }

        @Override // wn.b.a
        @Nullable
        public b.a next() {
            a aVar = this.f56837d;
            if (aVar != null && aVar.f56836c != null) {
                return aVar;
            }
            return null;
        }
    }

    public d0(wn.b bVar) {
        this.f56827a = bVar;
        int individualAllocationLength = bVar.getIndividualAllocationLength();
        this.f56828b = individualAllocationLength;
        this.f56829c = new cn.b0(32);
        a aVar = new a(0L, individualAllocationLength);
        this.f56830d = aVar;
        this.f56831e = aVar;
        this.f56832f = aVar;
    }

    private void a(a aVar) {
        if (aVar.f56836c == null) {
            return;
        }
        this.f56827a.b(aVar);
        aVar.b();
    }

    private static a d(a aVar, long j10) {
        while (j10 >= aVar.f56835b) {
            aVar = aVar.f56837d;
        }
        return aVar;
    }

    private void g(int i10) {
        long j10 = this.f56833g + i10;
        this.f56833g = j10;
        a aVar = this.f56832f;
        if (j10 == aVar.f56835b) {
            this.f56832f = aVar.f56837d;
        }
    }

    private int h(int i10) {
        a aVar = this.f56832f;
        if (aVar.f56836c == null) {
            aVar.c(this.f56827a.allocate(), new a(this.f56832f.f56835b, this.f56828b));
        }
        return Math.min(i10, (int) (this.f56832f.f56835b - this.f56833g));
    }

    private static a i(a aVar, long j10, ByteBuffer byteBuffer, int i10) {
        a d10 = d(aVar, j10);
        while (i10 > 0) {
            int min = Math.min(i10, (int) (d10.f56835b - j10));
            byteBuffer.put(d10.f56836c.f69975a, d10.e(j10), min);
            i10 -= min;
            j10 += min;
            if (j10 == d10.f56835b) {
                d10 = d10.f56837d;
            }
        }
        return d10;
    }

    private static a j(a aVar, long j10, byte[] bArr, int i10) {
        a d10 = d(aVar, j10);
        int i11 = i10;
        while (i11 > 0) {
            int min = Math.min(i11, (int) (d10.f56835b - j10));
            System.arraycopy(d10.f56836c.f69975a, d10.e(j10), bArr, i10 - i11, min);
            i11 -= min;
            j10 += min;
            if (j10 == d10.f56835b) {
                d10 = d10.f56837d;
            }
        }
        return d10;
    }

    private static a k(a aVar, DecoderInputBuffer decoderInputBuffer, f0.b bVar, cn.b0 b0Var) {
        boolean z10;
        long j10 = bVar.f56869b;
        int i10 = 1;
        b0Var.S(1);
        a j11 = j(aVar, j10, b0Var.e(), 1);
        long j12 = j10 + 1;
        byte b10 = b0Var.e()[0];
        if ((b10 & ByteCompanionObject.MIN_VALUE) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        int i11 = b10 & ByteCompanionObject.MAX_VALUE;
        fn.c cVar = decoderInputBuffer.f55344c;
        byte[] bArr = cVar.f51829a;
        if (bArr == null) {
            cVar.f51829a = new byte[16];
        } else {
            Arrays.fill(bArr, (byte) 0);
        }
        a j13 = j(j11, j12, cVar.f51829a, i11);
        long j14 = j12 + i11;
        if (z10) {
            b0Var.S(2);
            j13 = j(j13, j14, b0Var.e(), 2);
            j14 += 2;
            i10 = b0Var.P();
        }
        int i12 = i10;
        int[] iArr = cVar.f51832d;
        if (iArr == null || iArr.length < i12) {
            iArr = new int[i12];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = cVar.f51833e;
        if (iArr3 == null || iArr3.length < i12) {
            iArr3 = new int[i12];
        }
        int[] iArr4 = iArr3;
        if (z10) {
            int i13 = i12 * 6;
            b0Var.S(i13);
            j13 = j(j13, j14, b0Var.e(), i13);
            j14 += i13;
            b0Var.W(0);
            for (int i14 = 0; i14 < i12; i14++) {
                iArr2[i14] = b0Var.P();
                iArr4[i14] = b0Var.L();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = bVar.f56868a - ((int) (j14 - bVar.f56869b));
        }
        o0.a aVar2 = (o0.a) m0.i(bVar.f56870c);
        cVar.c(i12, iArr2, iArr4, aVar2.f1915b, cVar.f51829a, aVar2.f1914a, aVar2.f1916c, aVar2.f1917d);
        long j15 = bVar.f56869b;
        int i15 = (int) (j14 - j15);
        bVar.f56869b = j15 + i15;
        bVar.f56868a -= i15;
        return j13;
    }

    private static a l(a aVar, DecoderInputBuffer decoderInputBuffer, f0.b bVar, cn.b0 b0Var) {
        if (decoderInputBuffer.o()) {
            aVar = k(aVar, decoderInputBuffer, bVar, b0Var);
        }
        if (decoderInputBuffer.e()) {
            b0Var.S(4);
            a j10 = j(aVar, bVar.f56869b, b0Var.e(), 4);
            int L = b0Var.L();
            bVar.f56869b += 4;
            bVar.f56868a -= 4;
            decoderInputBuffer.m(L);
            a i10 = i(j10, bVar.f56869b, decoderInputBuffer.f55345d, L);
            bVar.f56869b += L;
            int i11 = bVar.f56868a - L;
            bVar.f56868a = i11;
            decoderInputBuffer.q(i11);
            return i(i10, bVar.f56869b, decoderInputBuffer.f55348g, bVar.f56868a);
        }
        decoderInputBuffer.m(bVar.f56868a);
        return i(aVar, bVar.f56869b, decoderInputBuffer.f55345d, bVar.f56868a);
    }

    public void b(long j10) {
        a aVar;
        if (j10 == -1) {
            return;
        }
        while (true) {
            aVar = this.f56830d;
            if (j10 < aVar.f56835b) {
                break;
            }
            this.f56827a.a(aVar.f56836c);
            this.f56830d = this.f56830d.b();
        }
        if (this.f56831e.f56834a < aVar.f56834a) {
            this.f56831e = aVar;
        }
    }

    public void c(long j10) {
        boolean z10;
        if (j10 <= this.f56833g) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        this.f56833g = j10;
        if (j10 != 0) {
            a aVar = this.f56830d;
            if (j10 != aVar.f56834a) {
                while (this.f56833g > aVar.f56835b) {
                    aVar = aVar.f56837d;
                }
                a aVar2 = (a) cn.a.e(aVar.f56837d);
                a(aVar2);
                a aVar3 = new a(aVar.f56835b, this.f56828b);
                aVar.f56837d = aVar3;
                if (this.f56833g == aVar.f56835b) {
                    aVar = aVar3;
                }
                this.f56832f = aVar;
                if (this.f56831e == aVar2) {
                    this.f56831e = aVar3;
                    return;
                }
                return;
            }
        }
        a(this.f56830d);
        a aVar4 = new a(this.f56833g, this.f56828b);
        this.f56830d = aVar4;
        this.f56831e = aVar4;
        this.f56832f = aVar4;
    }

    public long e() {
        return this.f56833g;
    }

    public void f(DecoderInputBuffer decoderInputBuffer, f0.b bVar) {
        l(this.f56831e, decoderInputBuffer, bVar, this.f56829c);
    }

    public void m(DecoderInputBuffer decoderInputBuffer, f0.b bVar) {
        this.f56831e = l(this.f56831e, decoderInputBuffer, bVar, this.f56829c);
    }

    public void n() {
        a(this.f56830d);
        this.f56830d.d(0L, this.f56828b);
        a aVar = this.f56830d;
        this.f56831e = aVar;
        this.f56832f = aVar;
        this.f56833g = 0L;
        this.f56827a.trim();
    }

    public void o() {
        this.f56831e = this.f56830d;
    }

    public int p(zm.h hVar, int i10, boolean z10) throws IOException {
        int h10 = h(i10);
        a aVar = this.f56832f;
        int read = hVar.read(aVar.f56836c.f69975a, aVar.e(this.f56833g), h10);
        if (read == -1) {
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }
        g(read);
        return read;
    }

    public void q(cn.b0 b0Var, int i10) {
        while (i10 > 0) {
            int h10 = h(i10);
            a aVar = this.f56832f;
            b0Var.l(aVar.f56836c.f69975a, aVar.e(this.f56833g), h10);
            i10 -= h10;
            g(h10);
        }
    }
}
