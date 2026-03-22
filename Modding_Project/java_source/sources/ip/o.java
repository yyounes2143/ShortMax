package ip;

import androidx.annotation.Nullable;
import ao.o0;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.common.a;
import ip.l0;
import java.util.Arrays;
import java.util.Collections;
/* compiled from: H263Reader.java */
/* loaded from: classes8.dex */
public final class o implements m {

    /* renamed from: m  reason: collision with root package name */
    private static final float[] f59867m = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final n0 f59868a;

    /* renamed from: b  reason: collision with root package name */
    private final String f59869b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final cn.b0 f59870c;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final w f59873f;

    /* renamed from: g  reason: collision with root package name */
    private b f59874g;

    /* renamed from: h  reason: collision with root package name */
    private long f59875h;

    /* renamed from: i  reason: collision with root package name */
    private String f59876i;

    /* renamed from: j  reason: collision with root package name */
    private o0 f59877j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f59878k;

    /* renamed from: d  reason: collision with root package name */
    private final boolean[] f59871d = new boolean[4];

    /* renamed from: e  reason: collision with root package name */
    private final a f59872e = new a(128);

    /* renamed from: l  reason: collision with root package name */
    private long f59879l = -9223372036854775807L;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: H263Reader.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: f  reason: collision with root package name */
        private static final byte[] f59880f = {0, 0, 1};

        /* renamed from: a  reason: collision with root package name */
        private boolean f59881a;

        /* renamed from: b  reason: collision with root package name */
        private int f59882b;

        /* renamed from: c  reason: collision with root package name */
        public int f59883c;

        /* renamed from: d  reason: collision with root package name */
        public int f59884d;

        /* renamed from: e  reason: collision with root package name */
        public byte[] f59885e;

        public a(int i10) {
            this.f59885e = new byte[i10];
        }

        public void a(byte[] bArr, int i10, int i11) {
            if (!this.f59881a) {
                return;
            }
            int i12 = i11 - i10;
            byte[] bArr2 = this.f59885e;
            int length = bArr2.length;
            int i13 = this.f59883c;
            if (length < i13 + i12) {
                this.f59885e = Arrays.copyOf(bArr2, (i13 + i12) * 2);
            }
            System.arraycopy(bArr, i10, this.f59885e, this.f59883c, i12);
            this.f59883c += i12;
        }

        public boolean b(int i10, int i11) {
            int i12 = this.f59882b;
            if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 != 2) {
                        if (i12 != 3) {
                            if (i12 == 4) {
                                if (i10 == 179 || i10 == 181) {
                                    this.f59883c -= i11;
                                    this.f59881a = false;
                                    return true;
                                }
                            } else {
                                throw new IllegalStateException();
                            }
                        } else if ((i10 & 240) != 32) {
                            cn.r.h("H263Reader", "Unexpected start code value");
                            c();
                        } else {
                            this.f59884d = this.f59883c;
                            this.f59882b = 4;
                        }
                    } else if (i10 > 31) {
                        cn.r.h("H263Reader", "Unexpected start code value");
                        c();
                    } else {
                        this.f59882b = 3;
                    }
                } else if (i10 != 181) {
                    cn.r.h("H263Reader", "Unexpected start code value");
                    c();
                } else {
                    this.f59882b = 2;
                }
            } else if (i10 == 176) {
                this.f59882b = 1;
                this.f59881a = true;
            }
            byte[] bArr = f59880f;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f59881a = false;
            this.f59883c = 0;
            this.f59882b = 0;
        }
    }

    /* compiled from: H263Reader.java */
    /* loaded from: classes8.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final o0 f59886a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f59887b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f59888c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f59889d;

        /* renamed from: e  reason: collision with root package name */
        private int f59890e;

        /* renamed from: f  reason: collision with root package name */
        private int f59891f;

        /* renamed from: g  reason: collision with root package name */
        private long f59892g;

        /* renamed from: h  reason: collision with root package name */
        private long f59893h;

        public b(o0 o0Var) {
            this.f59886a = o0Var;
        }

        public void a(byte[] bArr, int i10, int i11) {
            boolean z10;
            if (this.f59888c) {
                int i12 = this.f59891f;
                int i13 = (i10 + 1) - i12;
                if (i13 < i11) {
                    if (((bArr[i13] & 192) >> 6) == 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f59889d = z10;
                    this.f59888c = false;
                    return;
                }
                this.f59891f = i12 + (i11 - i10);
            }
        }

        public void b(long j10, int i10, boolean z10) {
            boolean z11;
            if (this.f59893h != -9223372036854775807L) {
                z11 = true;
            } else {
                z11 = false;
            }
            cn.a.g(z11);
            if (this.f59890e == 182 && z10 && this.f59887b) {
                boolean z12 = this.f59889d;
                this.f59886a.c(this.f59893h, z12 ? 1 : 0, (int) (j10 - this.f59892g), i10, null);
            }
            if (this.f59890e != 179) {
                this.f59892g = j10;
            }
        }

        public void c(int i10, long j10) {
            boolean z10;
            this.f59890e = i10;
            this.f59889d = false;
            boolean z11 = true;
            if (i10 != 182 && i10 != 179) {
                z10 = false;
            } else {
                z10 = true;
            }
            this.f59887b = z10;
            if (i10 != 182) {
                z11 = false;
            }
            this.f59888c = z11;
            this.f59891f = 0;
            this.f59893h = j10;
        }

        public void d() {
            this.f59887b = false;
            this.f59888c = false;
            this.f59889d = false;
            this.f59890e = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(@Nullable n0 n0Var, String str) {
        this.f59868a = n0Var;
        this.f59869b = str;
        if (n0Var != null) {
            this.f59873f = new w(178, 128);
            this.f59870c = new cn.b0();
            return;
        }
        this.f59873f = null;
        this.f59870c = null;
    }

    private static io.bidmachine.media3.common.a e(a aVar, int i10, String str, String str2) {
        byte[] copyOf = Arrays.copyOf(aVar.f59885e, aVar.f59883c);
        cn.a0 a0Var = new cn.a0(copyOf);
        a0Var.s(i10);
        a0Var.s(4);
        a0Var.q();
        a0Var.r(8);
        if (a0Var.g()) {
            a0Var.r(4);
            a0Var.r(3);
        }
        int h10 = a0Var.h(4);
        float f10 = 1.0f;
        if (h10 == 15) {
            int h11 = a0Var.h(8);
            int h12 = a0Var.h(8);
            if (h12 == 0) {
                cn.r.h("H263Reader", "Invalid aspect ratio");
            } else {
                f10 = h11 / h12;
            }
        } else {
            float[] fArr = f59867m;
            if (h10 < fArr.length) {
                f10 = fArr[h10];
            } else {
                cn.r.h("H263Reader", "Invalid aspect ratio");
            }
        }
        if (a0Var.g()) {
            a0Var.r(2);
            a0Var.r(1);
            if (a0Var.g()) {
                a0Var.r(15);
                a0Var.q();
                a0Var.r(15);
                a0Var.q();
                a0Var.r(15);
                a0Var.q();
                a0Var.r(3);
                a0Var.r(11);
                a0Var.q();
                a0Var.r(15);
                a0Var.q();
            }
        }
        if (a0Var.h(2) != 0) {
            cn.r.h("H263Reader", "Unhandled video object layer shape");
        }
        a0Var.q();
        int h13 = a0Var.h(16);
        a0Var.q();
        if (a0Var.g()) {
            if (h13 == 0) {
                cn.r.h("H263Reader", "Invalid vop_increment_time_resolution");
            } else {
                int i11 = 0;
                for (int i12 = h13 - 1; i12 > 0; i12 >>= 1) {
                    i11++;
                }
                a0Var.r(i11);
            }
        }
        a0Var.q();
        int h14 = a0Var.h(13);
        a0Var.q();
        int h15 = a0Var.h(13);
        a0Var.q();
        a0Var.q();
        return new a.b().f0(str).U(str2).u0(MimeTypes.VIDEO_MP4V).B0(h14).d0(h15).q0(f10).g0(Collections.singletonList(copyOf)).N();
    }

    @Override // ip.m
    public void a(cn.b0 b0Var) {
        int i10;
        cn.a.i(this.f59874g);
        cn.a.i(this.f59877j);
        int f10 = b0Var.f();
        int g10 = b0Var.g();
        byte[] e10 = b0Var.e();
        this.f59875h += b0Var.a();
        this.f59877j.a(b0Var, b0Var.a());
        while (true) {
            int e11 = dn.g.e(e10, f10, g10, this.f59871d);
            if (e11 == g10) {
                break;
            }
            int i11 = e11 + 3;
            int i12 = b0Var.e()[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            int i13 = e11 - f10;
            int i14 = 0;
            if (!this.f59878k) {
                if (i13 > 0) {
                    this.f59872e.a(e10, f10, e11);
                }
                if (i13 < 0) {
                    i10 = -i13;
                } else {
                    i10 = 0;
                }
                if (this.f59872e.b(i12, i10)) {
                    o0 o0Var = this.f59877j;
                    a aVar = this.f59872e;
                    o0Var.g(e(aVar, aVar.f59884d, (String) cn.a.e(this.f59876i), this.f59869b));
                    this.f59878k = true;
                }
            }
            this.f59874g.a(e10, f10, e11);
            w wVar = this.f59873f;
            if (wVar != null) {
                if (i13 > 0) {
                    wVar.a(e10, f10, e11);
                } else {
                    i14 = -i13;
                }
                if (this.f59873f.b(i14)) {
                    w wVar2 = this.f59873f;
                    ((cn.b0) cn.m0.i(this.f59870c)).U(this.f59873f.f60049d, dn.g.L(wVar2.f60049d, wVar2.f60050e));
                    ((n0) cn.m0.i(this.f59868a)).a(this.f59879l, this.f59870c);
                }
                if (i12 == 178 && b0Var.e()[e11 + 2] == 1) {
                    this.f59873f.e(i12);
                }
            }
            int i15 = g10 - e11;
            this.f59874g.b(this.f59875h - i15, i15, this.f59878k);
            this.f59874g.c(i12, this.f59879l);
            f10 = i11;
        }
        if (!this.f59878k) {
            this.f59872e.a(e10, f10, g10);
        }
        this.f59874g.a(e10, f10, g10);
        w wVar3 = this.f59873f;
        if (wVar3 != null) {
            wVar3.a(e10, f10, g10);
        }
    }

    @Override // ip.m
    public void b(ao.r rVar, l0.d dVar) {
        dVar.a();
        this.f59876i = dVar.b();
        o0 track = rVar.track(dVar.c(), 2);
        this.f59877j = track;
        this.f59874g = new b(track);
        n0 n0Var = this.f59868a;
        if (n0Var != null) {
            n0Var.b(rVar, dVar);
        }
    }

    @Override // ip.m
    public void c(long j10, int i10) {
        this.f59879l = j10;
    }

    @Override // ip.m
    public void d(boolean z10) {
        cn.a.i(this.f59874g);
        if (z10) {
            this.f59874g.b(this.f59875h, 0, this.f59878k);
            this.f59874g.d();
        }
    }

    @Override // ip.m
    public void seek() {
        dn.g.c(this.f59871d);
        this.f59872e.c();
        b bVar = this.f59874g;
        if (bVar != null) {
            bVar.d();
        }
        w wVar = this.f59873f;
        if (wVar != null) {
            wVar.d();
        }
        this.f59875h = 0L;
        this.f59879l = -9223372036854775807L;
    }
}
