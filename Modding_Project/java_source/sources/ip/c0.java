package ip;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.core.view.InputDeviceCompat;
import ao.j0;
import com.inmobi.commons.core.configs.AdConfig;
import io.bidmachine.media3.common.ParserException;
import ip.l0;
import java.io.IOException;
/* compiled from: PsExtractor.java */
/* loaded from: classes8.dex */
public final class c0 implements ao.p {

    /* renamed from: l  reason: collision with root package name */
    public static final ao.u f59673l = new ao.u() { // from class: ip.b0
        @Override // ao.u
        public final ao.p[] createExtractors() {
            ao.p[] g10;
            g10 = c0.g();
            return g10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final cn.h0 f59674a;

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<a> f59675b;

    /* renamed from: c  reason: collision with root package name */
    private final cn.b0 f59676c;

    /* renamed from: d  reason: collision with root package name */
    private final a0 f59677d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f59678e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f59679f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f59680g;

    /* renamed from: h  reason: collision with root package name */
    private long f59681h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private z f59682i;

    /* renamed from: j  reason: collision with root package name */
    private ao.r f59683j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f59684k;

    /* compiled from: PsExtractor.java */
    /* loaded from: classes8.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final m f59685a;

        /* renamed from: b  reason: collision with root package name */
        private final cn.h0 f59686b;

        /* renamed from: c  reason: collision with root package name */
        private final cn.a0 f59687c = new cn.a0(new byte[64]);

        /* renamed from: d  reason: collision with root package name */
        private boolean f59688d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f59689e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f59690f;

        /* renamed from: g  reason: collision with root package name */
        private int f59691g;

        /* renamed from: h  reason: collision with root package name */
        private long f59692h;

        public a(m mVar, cn.h0 h0Var) {
            this.f59685a = mVar;
            this.f59686b = h0Var;
        }

        private void b() {
            this.f59687c.r(8);
            this.f59688d = this.f59687c.g();
            this.f59689e = this.f59687c.g();
            this.f59687c.r(6);
            this.f59691g = this.f59687c.h(8);
        }

        private void c() {
            this.f59692h = 0L;
            if (this.f59688d) {
                this.f59687c.r(4);
                this.f59687c.r(1);
                this.f59687c.r(1);
                long h10 = (this.f59687c.h(3) << 30) | (this.f59687c.h(15) << 15) | this.f59687c.h(15);
                this.f59687c.r(1);
                if (!this.f59690f && this.f59689e) {
                    this.f59687c.r(4);
                    this.f59687c.r(1);
                    this.f59687c.r(1);
                    this.f59687c.r(1);
                    this.f59686b.b((this.f59687c.h(3) << 30) | (this.f59687c.h(15) << 15) | this.f59687c.h(15));
                    this.f59690f = true;
                }
                this.f59692h = this.f59686b.b(h10);
            }
        }

        public void a(cn.b0 b0Var) throws ParserException {
            b0Var.l(this.f59687c.f3559a, 0, 3);
            this.f59687c.p(0);
            b();
            b0Var.l(this.f59687c.f3559a, 0, this.f59691g);
            this.f59687c.p(0);
            c();
            this.f59685a.c(this.f59692h, 4);
            this.f59685a.a(b0Var);
            this.f59685a.d(false);
        }

        public void d() {
            this.f59690f = false;
            this.f59685a.seek();
        }
    }

    public c0() {
        this(new cn.h0(0L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ao.p[] g() {
        return new ao.p[]{new c0()};
    }

    private void h(long j10) {
        if (!this.f59684k) {
            this.f59684k = true;
            if (this.f59677d.c() != -9223372036854775807L) {
                z zVar = new z(this.f59677d.d(), this.f59677d.c(), j10);
                this.f59682i = zVar;
                this.f59683j.d(zVar.b());
                return;
            }
            this.f59683j.d(new j0.b(this.f59677d.c()));
        }
    }

    @Override // ao.p
    public void b(ao.r rVar) {
        this.f59683j = rVar;
    }

    @Override // ao.p
    public boolean e(ao.q qVar) throws IOException {
        byte[] bArr = new byte[14];
        qVar.peekFully(bArr, 0, 14);
        if (442 != (((bArr[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((bArr[1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (bArr[3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        qVar.advancePeekPosition(bArr[13] & 7);
        qVar.peekFully(bArr, 0, 3);
        if (1 != (((bArr[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (bArr[2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED))) {
            return false;
        }
        return true;
    }

    @Override // ao.p
    public int f(ao.q qVar, ao.i0 i0Var) throws IOException {
        long j10;
        long j11;
        m mVar;
        cn.a.i(this.f59683j);
        long length = qVar.getLength();
        int i10 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        if (i10 != 0 && !this.f59677d.e()) {
            return this.f59677d.g(qVar, i0Var);
        }
        h(length);
        z zVar = this.f59682i;
        if (zVar != null && zVar.d()) {
            return this.f59682i.c(qVar, i0Var);
        }
        qVar.resetPeekPosition();
        if (i10 != 0) {
            j10 = length - qVar.getPeekPosition();
        } else {
            j10 = -1;
        }
        if ((j10 != -1 && j10 < 4) || !qVar.peekFully(this.f59676c.e(), 0, 4, true)) {
            return -1;
        }
        this.f59676c.W(0);
        int q10 = this.f59676c.q();
        if (q10 == 441) {
            return -1;
        }
        if (q10 == 442) {
            qVar.peekFully(this.f59676c.e(), 0, 10);
            this.f59676c.W(9);
            qVar.skipFully((this.f59676c.H() & 7) + 14);
            return 0;
        } else if (q10 == 443) {
            qVar.peekFully(this.f59676c.e(), 0, 2);
            this.f59676c.W(0);
            qVar.skipFully(this.f59676c.P() + 6);
            return 0;
        } else if (((q10 & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
            qVar.skipFully(1);
            return 0;
        } else {
            int i11 = q10 & 255;
            a aVar = this.f59675b.get(i11);
            if (!this.f59678e) {
                if (aVar == null) {
                    if (i11 == 189) {
                        mVar = new c("video/mp2p");
                        this.f59679f = true;
                        this.f59681h = qVar.getPosition();
                    } else if ((q10 & 224) == 192) {
                        mVar = new t("video/mp2p");
                        this.f59679f = true;
                        this.f59681h = qVar.getPosition();
                    } else if ((q10 & 240) == 224) {
                        mVar = new n("video/mp2p");
                        this.f59680g = true;
                        this.f59681h = qVar.getPosition();
                    } else {
                        mVar = null;
                    }
                    if (mVar != null) {
                        mVar.b(this.f59683j, new l0.d(i11, 256));
                        aVar = new a(mVar, this.f59674a);
                        this.f59675b.put(i11, aVar);
                    }
                }
                if (this.f59679f && this.f59680g) {
                    j11 = this.f59681h + 8192;
                } else {
                    j11 = 1048576;
                }
                if (qVar.getPosition() > j11) {
                    this.f59678e = true;
                    this.f59683j.endTracks();
                }
            }
            qVar.peekFully(this.f59676c.e(), 0, 2);
            this.f59676c.W(0);
            int P = this.f59676c.P() + 6;
            if (aVar == null) {
                qVar.skipFully(P);
            } else {
                this.f59676c.S(P);
                qVar.readFully(this.f59676c.e(), 0, P);
                this.f59676c.W(6);
                aVar.a(this.f59676c);
                cn.b0 b0Var = this.f59676c;
                b0Var.V(b0Var.b());
            }
            return 0;
        }
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        boolean z10;
        boolean z11 = true;
        if (this.f59674a.f() == -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            long d10 = this.f59674a.d();
            z10 = (d10 == -9223372036854775807L || d10 == 0 || d10 == j11) ? false : false;
        }
        if (z10) {
            this.f59674a.i(j11);
        }
        z zVar = this.f59682i;
        if (zVar != null) {
            zVar.h(j11);
        }
        for (int i10 = 0; i10 < this.f59675b.size(); i10++) {
            this.f59675b.valueAt(i10).d();
        }
    }

    public c0(cn.h0 h0Var) {
        this.f59674a = h0Var;
        this.f59676c = new cn.b0(4096);
        this.f59675b = new SparseArray<>();
        this.f59677d = new a0();
    }

    @Override // ao.p
    public void release() {
    }
}
