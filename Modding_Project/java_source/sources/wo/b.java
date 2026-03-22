package wo;

import androidx.annotation.Nullable;
import ao.j0;
import ao.q;
import ao.v;
import ao.w;
import ao.x;
import ao.y;
import cn.b0;
import cn.m0;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
import wo.i;
/* compiled from: FlacReader.java */
/* loaded from: classes8.dex */
final class b extends i {
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private y f70047n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private a f70048o;

    /* compiled from: FlacReader.java */
    /* loaded from: classes8.dex */
    private static final class a implements g {

        /* renamed from: a  reason: collision with root package name */
        private y f70049a;

        /* renamed from: b  reason: collision with root package name */
        private y.a f70050b;

        /* renamed from: c  reason: collision with root package name */
        private long f70051c = -1;

        /* renamed from: d  reason: collision with root package name */
        private long f70052d = -1;

        public a(y yVar, y.a aVar) {
            this.f70049a = yVar;
            this.f70050b = aVar;
        }

        @Override // wo.g
        public long a(q qVar) {
            long j10 = this.f70052d;
            if (j10 < 0) {
                return -1L;
            }
            long j11 = -(j10 + 2);
            this.f70052d = -1L;
            return j11;
        }

        public void b(long j10) {
            this.f70051c = j10;
        }

        @Override // wo.g
        public j0 createSeekMap() {
            boolean z10;
            if (this.f70051c != -1) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.g(z10);
            return new x(this.f70049a, this.f70051c);
        }

        @Override // wo.g
        public void startSeek(long j10) {
            long[] jArr = this.f70050b.f1963a;
            this.f70052d = jArr[m0.h(jArr, j10, true, true)];
        }
    }

    private int n(b0 b0Var) {
        int i10 = (b0Var.e()[2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) >> 4;
        if (i10 == 6 || i10 == 7) {
            b0Var.X(4);
            b0Var.Q();
        }
        int j10 = v.j(b0Var, i10);
        b0Var.W(0);
        return j10;
    }

    private static boolean o(byte[] bArr) {
        if (bArr[0] != -1) {
            return false;
        }
        return true;
    }

    public static boolean p(b0 b0Var) {
        if (b0Var.a() >= 5 && b0Var.H() == 127 && b0Var.J() == 1179402563) {
            return true;
        }
        return false;
    }

    @Override // wo.i
    protected long f(b0 b0Var) {
        if (!o(b0Var.e())) {
            return -1L;
        }
        return n(b0Var);
    }

    @Override // wo.i
    protected boolean i(b0 b0Var, long j10, i.b bVar) {
        byte[] e10 = b0Var.e();
        y yVar = this.f70047n;
        if (yVar == null) {
            y yVar2 = new y(e10, 17);
            this.f70047n = yVar2;
            bVar.f70089a = yVar2.g(Arrays.copyOfRange(e10, 9, b0Var.g()), null).b().U("audio/ogg").N();
            return true;
        } else if ((e10[0] & ByteCompanionObject.MAX_VALUE) == 3) {
            y.a g10 = w.g(b0Var);
            y b10 = yVar.b(g10);
            this.f70047n = b10;
            this.f70048o = new a(b10, g10);
            return true;
        } else if (!o(e10)) {
            return true;
        } else {
            a aVar = this.f70048o;
            if (aVar != null) {
                aVar.b(j10);
                bVar.f70090b = this.f70048o;
            }
            cn.a.e(bVar.f70089a);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // wo.i
    public void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f70047n = null;
            this.f70048o = null;
        }
    }
}
