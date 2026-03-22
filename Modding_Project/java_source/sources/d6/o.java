package d6;

import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.v0;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import d6.i0;
import java.util.Arrays;
import java.util.Collections;
/* compiled from: H263Reader.java */
/* loaded from: classes4.dex */
public final class o implements m {

    /* renamed from: l  reason: collision with root package name */
    private static final float[] f50021l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final k0 f50022a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final b7.g0 f50023b;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final u f50026e;

    /* renamed from: f  reason: collision with root package name */
    private b f50027f;

    /* renamed from: g  reason: collision with root package name */
    private long f50028g;

    /* renamed from: h  reason: collision with root package name */
    private String f50029h;

    /* renamed from: i  reason: collision with root package name */
    private t5.b0 f50030i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f50031j;

    /* renamed from: c  reason: collision with root package name */
    private final boolean[] f50024c = new boolean[4];

    /* renamed from: d  reason: collision with root package name */
    private final a f50025d = new a(128);

    /* renamed from: k  reason: collision with root package name */
    private long f50032k = -9223372036854775807L;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: H263Reader.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: f  reason: collision with root package name */
        private static final byte[] f50033f = {0, 0, 1};

        /* renamed from: a  reason: collision with root package name */
        private boolean f50034a;

        /* renamed from: b  reason: collision with root package name */
        private int f50035b;

        /* renamed from: c  reason: collision with root package name */
        public int f50036c;

        /* renamed from: d  reason: collision with root package name */
        public int f50037d;

        /* renamed from: e  reason: collision with root package name */
        public byte[] f50038e;

        public a(int i10) {
            this.f50038e = new byte[i10];
        }

        public void a(byte[] bArr, int i10, int i11) {
            if (!this.f50034a) {
                return;
            }
            int i12 = i11 - i10;
            byte[] bArr2 = this.f50038e;
            int length = bArr2.length;
            int i13 = this.f50036c;
            if (length < i13 + i12) {
                this.f50038e = Arrays.copyOf(bArr2, (i13 + i12) * 2);
            }
            System.arraycopy(bArr, i10, this.f50038e, this.f50036c, i12);
            this.f50036c += i12;
        }

        public boolean b(int i10, int i11) {
            int i12 = this.f50035b;
            if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 != 2) {
                        if (i12 != 3) {
                            if (i12 == 4) {
                                if (i10 == 179 || i10 == 181) {
                                    this.f50036c -= i11;
                                    this.f50034a = false;
                                    return true;
                                }
                            } else {
                                throw new IllegalStateException();
                            }
                        } else if ((i10 & 240) != 32) {
                            b7.q.i("H263Reader", "Unexpected start code value");
                            c();
                        } else {
                            this.f50037d = this.f50036c;
                            this.f50035b = 4;
                        }
                    } else if (i10 > 31) {
                        b7.q.i("H263Reader", "Unexpected start code value");
                        c();
                    } else {
                        this.f50035b = 3;
                    }
                } else if (i10 != 181) {
                    b7.q.i("H263Reader", "Unexpected start code value");
                    c();
                } else {
                    this.f50035b = 2;
                }
            } else if (i10 == 176) {
                this.f50035b = 1;
                this.f50034a = true;
            }
            byte[] bArr = f50033f;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f50034a = false;
            this.f50036c = 0;
            this.f50035b = 0;
        }
    }

    /* compiled from: H263Reader.java */
    /* loaded from: classes4.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final t5.b0 f50039a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f50040b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f50041c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f50042d;

        /* renamed from: e  reason: collision with root package name */
        private int f50043e;

        /* renamed from: f  reason: collision with root package name */
        private int f50044f;

        /* renamed from: g  reason: collision with root package name */
        private long f50045g;

        /* renamed from: h  reason: collision with root package name */
        private long f50046h;

        public b(t5.b0 b0Var) {
            this.f50039a = b0Var;
        }

        public void a(byte[] bArr, int i10, int i11) {
            boolean z10;
            if (this.f50041c) {
                int i12 = this.f50044f;
                int i13 = (i10 + 1) - i12;
                if (i13 < i11) {
                    if (((bArr[i13] & 192) >> 6) == 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f50042d = z10;
                    this.f50041c = false;
                    return;
                }
                this.f50044f = i12 + (i11 - i10);
            }
        }

        public void b(long j10, int i10, boolean z10) {
            if (this.f50043e == 182 && z10 && this.f50040b) {
                long j11 = this.f50046h;
                if (j11 != -9223372036854775807L) {
                    this.f50039a.e(j11, this.f50042d ? 1 : 0, (int) (j10 - this.f50045g), i10, null);
                }
            }
            if (this.f50043e != 179) {
                this.f50045g = j10;
            }
        }

        public void c(int i10, long j10) {
            boolean z10;
            this.f50043e = i10;
            this.f50042d = false;
            boolean z11 = true;
            if (i10 != 182 && i10 != 179) {
                z10 = false;
            } else {
                z10 = true;
            }
            this.f50040b = z10;
            if (i10 != 182) {
                z11 = false;
            }
            this.f50041c = z11;
            this.f50044f = 0;
            this.f50046h = j10;
        }

        public void d() {
            this.f50040b = false;
            this.f50041c = false;
            this.f50042d = false;
            this.f50043e = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(@Nullable k0 k0Var) {
        this.f50022a = k0Var;
        if (k0Var != null) {
            this.f50026e = new u(178, 128);
            this.f50023b = new b7.g0();
            return;
        }
        this.f50026e = null;
        this.f50023b = null;
    }

    private static v0 a(a aVar, int i10, String str) {
        byte[] copyOf = Arrays.copyOf(aVar.f50038e, aVar.f50036c);
        b7.f0 f0Var = new b7.f0(copyOf);
        f0Var.s(i10);
        f0Var.s(4);
        f0Var.q();
        f0Var.r(8);
        if (f0Var.g()) {
            f0Var.r(4);
            f0Var.r(3);
        }
        int h10 = f0Var.h(4);
        float f10 = 1.0f;
        if (h10 == 15) {
            int h11 = f0Var.h(8);
            int h12 = f0Var.h(8);
            if (h12 == 0) {
                b7.q.i("H263Reader", "Invalid aspect ratio");
            } else {
                f10 = h11 / h12;
            }
        } else {
            float[] fArr = f50021l;
            if (h10 < fArr.length) {
                f10 = fArr[h10];
            } else {
                b7.q.i("H263Reader", "Invalid aspect ratio");
            }
        }
        if (f0Var.g()) {
            f0Var.r(2);
            f0Var.r(1);
            if (f0Var.g()) {
                f0Var.r(15);
                f0Var.q();
                f0Var.r(15);
                f0Var.q();
                f0Var.r(15);
                f0Var.q();
                f0Var.r(3);
                f0Var.r(11);
                f0Var.q();
                f0Var.r(15);
                f0Var.q();
            }
        }
        if (f0Var.h(2) != 0) {
            b7.q.i("H263Reader", "Unhandled video object layer shape");
        }
        f0Var.q();
        int h13 = f0Var.h(16);
        f0Var.q();
        if (f0Var.g()) {
            if (h13 == 0) {
                b7.q.i("H263Reader", "Invalid vop_increment_time_resolution");
            } else {
                int i11 = 0;
                for (int i12 = h13 - 1; i12 > 0; i12 >>= 1) {
                    i11++;
                }
                f0Var.r(i11);
            }
        }
        f0Var.q();
        int h14 = f0Var.h(13);
        f0Var.q();
        int h15 = f0Var.h(13);
        f0Var.q();
        f0Var.q();
        return new v0.b().S(str).e0(MimeTypes.VIDEO_MP4V).j0(h14).Q(h15).a0(f10).T(Collections.singletonList(copyOf)).E();
    }

    @Override // d6.m
    public void b(b7.g0 g0Var) {
        int i10;
        b7.a.i(this.f50027f);
        b7.a.i(this.f50030i);
        int e10 = g0Var.e();
        int f10 = g0Var.f();
        byte[] d10 = g0Var.d();
        this.f50028g += g0Var.a();
        this.f50030i.a(g0Var, g0Var.a());
        while (true) {
            int c10 = b7.v.c(d10, e10, f10, this.f50024c);
            if (c10 == f10) {
                break;
            }
            int i11 = c10 + 3;
            int i12 = g0Var.d()[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            int i13 = c10 - e10;
            int i14 = 0;
            if (!this.f50031j) {
                if (i13 > 0) {
                    this.f50025d.a(d10, e10, c10);
                }
                if (i13 < 0) {
                    i10 = -i13;
                } else {
                    i10 = 0;
                }
                if (this.f50025d.b(i12, i10)) {
                    t5.b0 b0Var = this.f50030i;
                    a aVar = this.f50025d;
                    b0Var.b(a(aVar, aVar.f50037d, (String) b7.a.e(this.f50029h)));
                    this.f50031j = true;
                }
            }
            this.f50027f.a(d10, e10, c10);
            u uVar = this.f50026e;
            if (uVar != null) {
                if (i13 > 0) {
                    uVar.a(d10, e10, c10);
                } else {
                    i14 = -i13;
                }
                if (this.f50026e.b(i14)) {
                    u uVar2 = this.f50026e;
                    ((b7.g0) s0.j(this.f50023b)).N(this.f50026e.f50165d, b7.v.q(uVar2.f50165d, uVar2.f50166e));
                    ((k0) s0.j(this.f50022a)).a(this.f50032k, this.f50023b);
                }
                if (i12 == 178 && g0Var.d()[c10 + 2] == 1) {
                    this.f50026e.e(i12);
                }
            }
            int i15 = f10 - c10;
            this.f50027f.b(this.f50028g - i15, i15, this.f50031j);
            this.f50027f.c(i12, this.f50032k);
            e10 = i11;
        }
        if (!this.f50031j) {
            this.f50025d.a(d10, e10, f10);
        }
        this.f50027f.a(d10, e10, f10);
        u uVar3 = this.f50026e;
        if (uVar3 != null) {
            uVar3.a(d10, e10, f10);
        }
    }

    @Override // d6.m
    public void c(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f50032k = j10;
        }
    }

    @Override // d6.m
    public void d(t5.m mVar, i0.d dVar) {
        dVar.a();
        this.f50029h = dVar.b();
        t5.b0 track = mVar.track(dVar.c(), 2);
        this.f50030i = track;
        this.f50027f = new b(track);
        k0 k0Var = this.f50022a;
        if (k0Var != null) {
            k0Var.b(mVar, dVar);
        }
    }

    @Override // d6.m
    public void seek() {
        b7.v.a(this.f50024c);
        this.f50025d.c();
        b bVar = this.f50027f;
        if (bVar != null) {
            bVar.d();
        }
        u uVar = this.f50026e;
        if (uVar != null) {
            uVar.d();
        }
        this.f50028g = 0L;
        this.f50032k = -9223372036854775807L;
    }

    @Override // d6.m
    public void packetFinished() {
    }
}
