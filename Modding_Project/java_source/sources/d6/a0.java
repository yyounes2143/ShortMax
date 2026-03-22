package d6;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.core.view.InputDeviceCompat;
import b7.o0;
import com.google.android.exoplayer2.ParserException;
import com.inmobi.commons.core.configs.AdConfig;
import d6.i0;
import java.io.IOException;
import t5.z;
/* compiled from: PsExtractor.java */
/* loaded from: classes4.dex */
public final class a0 implements t5.k {

    /* renamed from: l  reason: collision with root package name */
    public static final t5.p f49830l = new t5.p() { // from class: d6.z
        @Override // t5.p
        public final t5.k[] createExtractors() {
            t5.k[] e10;
            e10 = a0.e();
            return e10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final o0 f49831a;

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<a> f49832b;

    /* renamed from: c  reason: collision with root package name */
    private final b7.g0 f49833c;

    /* renamed from: d  reason: collision with root package name */
    private final y f49834d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f49835e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f49836f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f49837g;

    /* renamed from: h  reason: collision with root package name */
    private long f49838h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private x f49839i;

    /* renamed from: j  reason: collision with root package name */
    private t5.m f49840j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f49841k;

    /* compiled from: PsExtractor.java */
    /* loaded from: classes4.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final m f49842a;

        /* renamed from: b  reason: collision with root package name */
        private final o0 f49843b;

        /* renamed from: c  reason: collision with root package name */
        private final b7.f0 f49844c = new b7.f0(new byte[64]);

        /* renamed from: d  reason: collision with root package name */
        private boolean f49845d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f49846e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f49847f;

        /* renamed from: g  reason: collision with root package name */
        private int f49848g;

        /* renamed from: h  reason: collision with root package name */
        private long f49849h;

        public a(m mVar, o0 o0Var) {
            this.f49842a = mVar;
            this.f49843b = o0Var;
        }

        private void b() {
            this.f49844c.r(8);
            this.f49845d = this.f49844c.g();
            this.f49846e = this.f49844c.g();
            this.f49844c.r(6);
            this.f49848g = this.f49844c.h(8);
        }

        private void c() {
            this.f49849h = 0L;
            if (this.f49845d) {
                this.f49844c.r(4);
                this.f49844c.r(1);
                this.f49844c.r(1);
                long h10 = (this.f49844c.h(3) << 30) | (this.f49844c.h(15) << 15) | this.f49844c.h(15);
                this.f49844c.r(1);
                if (!this.f49847f && this.f49846e) {
                    this.f49844c.r(4);
                    this.f49844c.r(1);
                    this.f49844c.r(1);
                    this.f49844c.r(1);
                    this.f49843b.b((this.f49844c.h(3) << 30) | (this.f49844c.h(15) << 15) | this.f49844c.h(15));
                    this.f49847f = true;
                }
                this.f49849h = this.f49843b.b(h10);
            }
        }

        public void a(b7.g0 g0Var) throws ParserException {
            g0Var.j(this.f49844c.f2443a, 0, 3);
            this.f49844c.p(0);
            b();
            g0Var.j(this.f49844c.f2443a, 0, this.f49848g);
            this.f49844c.p(0);
            c();
            this.f49842a.c(this.f49849h, 4);
            this.f49842a.b(g0Var);
            this.f49842a.packetFinished();
        }

        public void d() {
            this.f49847f = false;
            this.f49842a.seek();
        }
    }

    public a0() {
        this(new o0(0L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ t5.k[] e() {
        return new t5.k[]{new a0()};
    }

    private void f(long j10) {
        if (!this.f49841k) {
            this.f49841k = true;
            if (this.f49834d.c() != -9223372036854775807L) {
                x xVar = new x(this.f49834d.d(), this.f49834d.c(), j10);
                this.f49839i = xVar;
                this.f49840j.c(xVar.b());
                return;
            }
            this.f49840j.c(new z.b(this.f49834d.c()));
        }
    }

    @Override // t5.k
    public int b(t5.l lVar, t5.y yVar) throws IOException {
        long j10;
        long j11;
        m mVar;
        b7.a.i(this.f49840j);
        long length = lVar.getLength();
        int i10 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        if (i10 != 0 && !this.f49834d.e()) {
            return this.f49834d.g(lVar, yVar);
        }
        f(length);
        x xVar = this.f49839i;
        if (xVar != null && xVar.d()) {
            return this.f49839i.c(lVar, yVar);
        }
        lVar.resetPeekPosition();
        if (i10 != 0) {
            j10 = length - lVar.getPeekPosition();
        } else {
            j10 = -1;
        }
        if ((j10 != -1 && j10 < 4) || !lVar.peekFully(this.f49833c.d(), 0, 4, true)) {
            return -1;
        }
        this.f49833c.P(0);
        int n10 = this.f49833c.n();
        if (n10 == 441) {
            return -1;
        }
        if (n10 == 442) {
            lVar.peekFully(this.f49833c.d(), 0, 10);
            this.f49833c.P(9);
            lVar.skipFully((this.f49833c.D() & 7) + 14);
            return 0;
        } else if (n10 == 443) {
            lVar.peekFully(this.f49833c.d(), 0, 2);
            this.f49833c.P(0);
            lVar.skipFully(this.f49833c.J() + 6);
            return 0;
        } else if (((n10 & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
            lVar.skipFully(1);
            return 0;
        } else {
            int i11 = n10 & 255;
            a aVar = this.f49832b.get(i11);
            if (!this.f49835e) {
                if (aVar == null) {
                    if (i11 == 189) {
                        mVar = new c();
                        this.f49836f = true;
                        this.f49838h = lVar.getPosition();
                    } else if ((n10 & 224) == 192) {
                        mVar = new t();
                        this.f49836f = true;
                        this.f49838h = lVar.getPosition();
                    } else if ((n10 & 240) == 224) {
                        mVar = new n();
                        this.f49837g = true;
                        this.f49838h = lVar.getPosition();
                    } else {
                        mVar = null;
                    }
                    if (mVar != null) {
                        mVar.d(this.f49840j, new i0.d(i11, 256));
                        aVar = new a(mVar, this.f49831a);
                        this.f49832b.put(i11, aVar);
                    }
                }
                if (this.f49836f && this.f49837g) {
                    j11 = this.f49838h + 8192;
                } else {
                    j11 = 1048576;
                }
                if (lVar.getPosition() > j11) {
                    this.f49835e = true;
                    this.f49840j.endTracks();
                }
            }
            lVar.peekFully(this.f49833c.d(), 0, 2);
            this.f49833c.P(0);
            int J = this.f49833c.J() + 6;
            if (aVar == null) {
                lVar.skipFully(J);
            } else {
                this.f49833c.L(J);
                lVar.readFully(this.f49833c.d(), 0, J);
                this.f49833c.P(6);
                aVar.a(this.f49833c);
                b7.g0 g0Var = this.f49833c;
                g0Var.O(g0Var.b());
            }
            return 0;
        }
    }

    @Override // t5.k
    public boolean c(t5.l lVar) throws IOException {
        byte[] bArr = new byte[14];
        lVar.peekFully(bArr, 0, 14);
        if (442 != (((bArr[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((bArr[1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (bArr[3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        lVar.advancePeekPosition(bArr[13] & 7);
        lVar.peekFully(bArr, 0, 3);
        if (1 != (((bArr[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (bArr[2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED))) {
            return false;
        }
        return true;
    }

    @Override // t5.k
    public void d(t5.m mVar) {
        this.f49840j = mVar;
    }

    @Override // t5.k
    public void seek(long j10, long j11) {
        boolean z10;
        boolean z11 = true;
        if (this.f49831a.e() == -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            long c10 = this.f49831a.c();
            z10 = (c10 == -9223372036854775807L || c10 == 0 || c10 == j11) ? false : false;
        }
        if (z10) {
            this.f49831a.g(j11);
        }
        x xVar = this.f49839i;
        if (xVar != null) {
            xVar.h(j11);
        }
        for (int i10 = 0; i10 < this.f49832b.size(); i10++) {
            this.f49832b.valueAt(i10).d();
        }
    }

    public a0(o0 o0Var) {
        this.f49831a = o0Var;
        this.f49833c = new b7.g0(4096);
        this.f49832b = new SparseArray<>();
        this.f49834d = new y();
    }

    @Override // t5.k
    public void release() {
    }
}
