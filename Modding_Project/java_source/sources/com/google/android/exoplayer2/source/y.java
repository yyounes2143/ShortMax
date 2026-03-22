package com.google.android.exoplayer2.source;

import a7.b;
import androidx.annotation.Nullable;
import b7.g0;
import b7.s0;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.source.a0;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
import t5.b0;
/* compiled from: SampleDataQueue.java */
/* loaded from: classes4.dex */
class y {

    /* renamed from: a  reason: collision with root package name */
    private final a7.b f18459a;

    /* renamed from: b  reason: collision with root package name */
    private final int f18460b;

    /* renamed from: c  reason: collision with root package name */
    private final g0 f18461c;

    /* renamed from: d  reason: collision with root package name */
    private a f18462d;

    /* renamed from: e  reason: collision with root package name */
    private a f18463e;

    /* renamed from: f  reason: collision with root package name */
    private a f18464f;

    /* renamed from: g  reason: collision with root package name */
    private long f18465g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SampleDataQueue.java */
    /* loaded from: classes4.dex */
    public static final class a implements b.a {

        /* renamed from: a  reason: collision with root package name */
        public long f18466a;

        /* renamed from: b  reason: collision with root package name */
        public long f18467b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public a7.a f18468c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public a f18469d;

        public a(long j10, int i10) {
            d(j10, i10);
        }

        @Override // a7.b.a
        public a7.a a() {
            return (a7.a) b7.a.e(this.f18468c);
        }

        public a b() {
            this.f18468c = null;
            a aVar = this.f18469d;
            this.f18469d = null;
            return aVar;
        }

        public void c(a7.a aVar, a aVar2) {
            this.f18468c = aVar;
            this.f18469d = aVar2;
        }

        public void d(long j10, int i10) {
            boolean z10;
            if (this.f18468c == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            b7.a.g(z10);
            this.f18466a = j10;
            this.f18467b = j10 + i10;
        }

        public int e(long j10) {
            return ((int) (j10 - this.f18466a)) + this.f18468c.f175b;
        }

        @Override // a7.b.a
        @Nullable
        public b.a next() {
            a aVar = this.f18469d;
            if (aVar != null && aVar.f18468c != null) {
                return aVar;
            }
            return null;
        }
    }

    public y(a7.b bVar) {
        this.f18459a = bVar;
        int individualAllocationLength = bVar.getIndividualAllocationLength();
        this.f18460b = individualAllocationLength;
        this.f18461c = new g0(32);
        a aVar = new a(0L, individualAllocationLength);
        this.f18462d = aVar;
        this.f18463e = aVar;
        this.f18464f = aVar;
    }

    private void a(a aVar) {
        if (aVar.f18468c == null) {
            return;
        }
        this.f18459a.b(aVar);
        aVar.b();
    }

    private static a c(a aVar, long j10) {
        while (j10 >= aVar.f18467b) {
            aVar = aVar.f18469d;
        }
        return aVar;
    }

    private void f(int i10) {
        long j10 = this.f18465g + i10;
        this.f18465g = j10;
        a aVar = this.f18464f;
        if (j10 == aVar.f18467b) {
            this.f18464f = aVar.f18469d;
        }
    }

    private int g(int i10) {
        a aVar = this.f18464f;
        if (aVar.f18468c == null) {
            aVar.c(this.f18459a.allocate(), new a(this.f18464f.f18467b, this.f18460b));
        }
        return Math.min(i10, (int) (this.f18464f.f18467b - this.f18465g));
    }

    private static a h(a aVar, long j10, ByteBuffer byteBuffer, int i10) {
        a c10 = c(aVar, j10);
        while (i10 > 0) {
            int min = Math.min(i10, (int) (c10.f18467b - j10));
            byteBuffer.put(c10.f18468c.f174a, c10.e(j10), min);
            i10 -= min;
            j10 += min;
            if (j10 == c10.f18467b) {
                c10 = c10.f18469d;
            }
        }
        return c10;
    }

    private static a i(a aVar, long j10, byte[] bArr, int i10) {
        a c10 = c(aVar, j10);
        int i11 = i10;
        while (i11 > 0) {
            int min = Math.min(i11, (int) (c10.f18467b - j10));
            System.arraycopy(c10.f18468c.f174a, c10.e(j10), bArr, i10 - i11, min);
            i11 -= min;
            j10 += min;
            if (j10 == c10.f18467b) {
                c10 = c10.f18469d;
            }
        }
        return c10;
    }

    private static a j(a aVar, DecoderInputBuffer decoderInputBuffer, a0.b bVar, g0 g0Var) {
        boolean z10;
        long j10 = bVar.f18247b;
        int i10 = 1;
        g0Var.L(1);
        a i11 = i(aVar, j10, g0Var.d(), 1);
        long j11 = j10 + 1;
        byte b10 = g0Var.d()[0];
        if ((b10 & ByteCompanionObject.MIN_VALUE) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        int i12 = b10 & ByteCompanionObject.MAX_VALUE;
        r5.c cVar = decoderInputBuffer.f17472b;
        byte[] bArr = cVar.f65561a;
        if (bArr == null) {
            cVar.f65561a = new byte[16];
        } else {
            Arrays.fill(bArr, (byte) 0);
        }
        a i13 = i(i11, j11, cVar.f65561a, i12);
        long j12 = j11 + i12;
        if (z10) {
            g0Var.L(2);
            i13 = i(i13, j12, g0Var.d(), 2);
            j12 += 2;
            i10 = g0Var.J();
        }
        int i14 = i10;
        int[] iArr = cVar.f65564d;
        if (iArr == null || iArr.length < i14) {
            iArr = new int[i14];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = cVar.f65565e;
        if (iArr3 == null || iArr3.length < i14) {
            iArr3 = new int[i14];
        }
        int[] iArr4 = iArr3;
        if (z10) {
            int i15 = i14 * 6;
            g0Var.L(i15);
            i13 = i(i13, j12, g0Var.d(), i15);
            j12 += i15;
            g0Var.P(0);
            for (int i16 = 0; i16 < i14; i16++) {
                iArr2[i16] = g0Var.J();
                iArr4[i16] = g0Var.H();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = bVar.f18246a - ((int) (j12 - bVar.f18247b));
        }
        b0.a aVar2 = (b0.a) s0.j(bVar.f18248c);
        cVar.c(i14, iArr2, iArr4, aVar2.f67101b, cVar.f65561a, aVar2.f67100a, aVar2.f67102c, aVar2.f67103d);
        long j13 = bVar.f18247b;
        int i17 = (int) (j12 - j13);
        bVar.f18247b = j13 + i17;
        bVar.f18246a -= i17;
        return i13;
    }

    private static a k(a aVar, DecoderInputBuffer decoderInputBuffer, a0.b bVar, g0 g0Var) {
        if (decoderInputBuffer.o()) {
            aVar = j(aVar, decoderInputBuffer, bVar, g0Var);
        }
        if (decoderInputBuffer.f()) {
            g0Var.L(4);
            a i10 = i(aVar, bVar.f18247b, g0Var.d(), 4);
            int H = g0Var.H();
            bVar.f18247b += 4;
            bVar.f18246a -= 4;
            decoderInputBuffer.m(H);
            a h10 = h(i10, bVar.f18247b, decoderInputBuffer.f17473c, H);
            bVar.f18247b += H;
            int i11 = bVar.f18246a - H;
            bVar.f18246a = i11;
            decoderInputBuffer.q(i11);
            return h(h10, bVar.f18247b, decoderInputBuffer.f17476f, bVar.f18246a);
        }
        decoderInputBuffer.m(bVar.f18246a);
        return h(aVar, bVar.f18247b, decoderInputBuffer.f17473c, bVar.f18246a);
    }

    public void b(long j10) {
        a aVar;
        if (j10 == -1) {
            return;
        }
        while (true) {
            aVar = this.f18462d;
            if (j10 < aVar.f18467b) {
                break;
            }
            this.f18459a.a(aVar.f18468c);
            this.f18462d = this.f18462d.b();
        }
        if (this.f18463e.f18466a < aVar.f18466a) {
            this.f18463e = aVar;
        }
    }

    public long d() {
        return this.f18465g;
    }

    public void e(DecoderInputBuffer decoderInputBuffer, a0.b bVar) {
        k(this.f18463e, decoderInputBuffer, bVar, this.f18461c);
    }

    public void l(DecoderInputBuffer decoderInputBuffer, a0.b bVar) {
        this.f18463e = k(this.f18463e, decoderInputBuffer, bVar, this.f18461c);
    }

    public void m() {
        a(this.f18462d);
        this.f18462d.d(0L, this.f18460b);
        a aVar = this.f18462d;
        this.f18463e = aVar;
        this.f18464f = aVar;
        this.f18465g = 0L;
        this.f18459a.trim();
    }

    public void n() {
        this.f18463e = this.f18462d;
    }

    public int o(a7.f fVar, int i10, boolean z10) throws IOException {
        int g10 = g(i10);
        a aVar = this.f18464f;
        int read = fVar.read(aVar.f18468c.f174a, aVar.e(this.f18465g), g10);
        if (read == -1) {
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }
        f(read);
        return read;
    }

    public void p(g0 g0Var, int i10) {
        while (i10 > 0) {
            int g10 = g(i10);
            a aVar = this.f18464f;
            g0Var.j(aVar.f18468c.f174a, aVar.e(this.f18465g), g10);
            i10 -= g10;
            f(g10);
        }
    }
}
