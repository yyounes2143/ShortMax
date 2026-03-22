package c6;

import androidx.annotation.Nullable;
import b7.g0;
import b7.s0;
import c6.i;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
import t5.l;
import t5.q;
import t5.r;
import t5.s;
import t5.t;
import t5.z;
/* compiled from: FlacReader.java */
/* loaded from: classes4.dex */
final class b extends i {
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private t f3161n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private a f3162o;

    /* compiled from: FlacReader.java */
    /* loaded from: classes4.dex */
    private static final class a implements g {

        /* renamed from: a  reason: collision with root package name */
        private t f3163a;

        /* renamed from: b  reason: collision with root package name */
        private t.a f3164b;

        /* renamed from: c  reason: collision with root package name */
        private long f3165c = -1;

        /* renamed from: d  reason: collision with root package name */
        private long f3166d = -1;

        public a(t tVar, t.a aVar) {
            this.f3163a = tVar;
            this.f3164b = aVar;
        }

        @Override // c6.g
        public long a(l lVar) {
            long j10 = this.f3166d;
            if (j10 < 0) {
                return -1L;
            }
            long j11 = -(j10 + 2);
            this.f3166d = -1L;
            return j11;
        }

        public void b(long j10) {
            this.f3165c = j10;
        }

        @Override // c6.g
        public z createSeekMap() {
            boolean z10;
            if (this.f3165c != -1) {
                z10 = true;
            } else {
                z10 = false;
            }
            b7.a.g(z10);
            return new s(this.f3163a, this.f3165c);
        }

        @Override // c6.g
        public void startSeek(long j10) {
            long[] jArr = this.f3164b.f67193a;
            this.f3166d = jArr[s0.i(jArr, j10, true, true)];
        }
    }

    private int n(g0 g0Var) {
        int i10 = (g0Var.d()[2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) >> 4;
        if (i10 == 6 || i10 == 7) {
            g0Var.Q(4);
            g0Var.K();
        }
        int j10 = q.j(g0Var, i10);
        g0Var.P(0);
        return j10;
    }

    private static boolean o(byte[] bArr) {
        if (bArr[0] != -1) {
            return false;
        }
        return true;
    }

    public static boolean p(g0 g0Var) {
        if (g0Var.a() >= 5 && g0Var.D() == 127 && g0Var.F() == 1179402563) {
            return true;
        }
        return false;
    }

    @Override // c6.i
    protected long f(g0 g0Var) {
        if (!o(g0Var.d())) {
            return -1L;
        }
        return n(g0Var);
    }

    @Override // c6.i
    protected boolean h(g0 g0Var, long j10, i.b bVar) {
        byte[] d10 = g0Var.d();
        t tVar = this.f3161n;
        if (tVar == null) {
            t tVar2 = new t(d10, 17);
            this.f3161n = tVar2;
            bVar.f3203a = tVar2.g(Arrays.copyOfRange(d10, 9, g0Var.f()), null);
            return true;
        } else if ((d10[0] & ByteCompanionObject.MAX_VALUE) == 3) {
            t.a f10 = r.f(g0Var);
            t b10 = tVar.b(f10);
            this.f3161n = b10;
            this.f3162o = new a(b10, f10);
            return true;
        } else if (!o(d10)) {
            return true;
        } else {
            a aVar = this.f3162o;
            if (aVar != null) {
                aVar.b(j10);
                bVar.f3204b = this.f3162o;
            }
            b7.a.e(bVar.f3203a);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // c6.i
    public void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f3161n = null;
            this.f3162o = null;
        }
    }
}
