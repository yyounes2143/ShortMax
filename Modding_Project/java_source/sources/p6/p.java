package p6;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import b7.q;
import b7.s0;
import b7.u;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.v0;
import com.google.common.collect.ImmutableList;
import o5.b0;
import o5.o0;
/* compiled from: TextRenderer.java */
/* loaded from: classes4.dex */
public final class p extends com.google.android.exoplayer2.f implements Handler.Callback {
    private int A;
    private long B;
    private long C;
    private long D;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final Handler f64798n;

    /* renamed from: o  reason: collision with root package name */
    private final o f64799o;

    /* renamed from: p  reason: collision with root package name */
    private final k f64800p;

    /* renamed from: q  reason: collision with root package name */
    private final b0 f64801q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f64802r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f64803s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f64804t;

    /* renamed from: u  reason: collision with root package name */
    private int f64805u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private v0 f64806v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private j f64807w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private m f64808x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private n f64809y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private n f64810z;

    public p(o oVar, @Nullable Looper looper) {
        this(oVar, looper, k.f64783a);
    }

    private void H() {
        S(new f(ImmutableList.A(), K(this.D)));
    }

    private long I(long j10) {
        int nextEventTimeIndex = this.f64809y.getNextEventTimeIndex(j10);
        if (nextEventTimeIndex == 0) {
            return this.f64809y.f65585b;
        }
        if (nextEventTimeIndex == -1) {
            n nVar = this.f64809y;
            return nVar.getEventTime(nVar.getEventTimeCount() - 1);
        }
        return this.f64809y.getEventTime(nextEventTimeIndex - 1);
    }

    private long J() {
        if (this.A == -1) {
            return Long.MAX_VALUE;
        }
        b7.a.e(this.f64809y);
        if (this.A >= this.f64809y.getEventTimeCount()) {
            return Long.MAX_VALUE;
        }
        return this.f64809y.getEventTime(this.A);
    }

    private long K(long j10) {
        boolean z10;
        boolean z11 = false;
        if (j10 != -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        if (this.C != -9223372036854775807L) {
            z11 = true;
        }
        b7.a.g(z11);
        return j10 - this.C;
    }

    private void L(SubtitleDecoderException subtitleDecoderException) {
        q.d("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.f64806v, subtitleDecoderException);
        H();
        Q();
    }

    private void M() {
        this.f64804t = true;
        this.f64807w = this.f64800p.b((v0) b7.a.e(this.f64806v));
    }

    private void N(f fVar) {
        this.f64799o.onCues(fVar.f64771a);
        this.f64799o.r(fVar);
    }

    private void O() {
        this.f64808x = null;
        this.A = -1;
        n nVar = this.f64809y;
        if (nVar != null) {
            nVar.l();
            this.f64809y = null;
        }
        n nVar2 = this.f64810z;
        if (nVar2 != null) {
            nVar2.l();
            this.f64810z = null;
        }
    }

    private void P() {
        O();
        ((j) b7.a.e(this.f64807w)).release();
        this.f64807w = null;
        this.f64805u = 0;
    }

    private void Q() {
        P();
        M();
    }

    private void S(f fVar) {
        Handler handler = this.f64798n;
        if (handler != null) {
            handler.obtainMessage(0, fVar).sendToTarget();
        } else {
            N(fVar);
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void D(v0[] v0VarArr, long j10, long j11) {
        this.C = j11;
        this.f64806v = v0VarArr[0];
        if (this.f64807w != null) {
            this.f64805u = 1;
        } else {
            M();
        }
    }

    public void R(long j10) {
        b7.a.g(isCurrentStreamFinal());
        this.B = j10;
    }

    @Override // o5.o0
    public int a(v0 v0Var) {
        int i10;
        if (this.f64800p.a(v0Var)) {
            if (v0Var.E == 0) {
                i10 = 4;
            } else {
                i10 = 2;
            }
            return o0.k(i10);
        } else if (u.n(v0Var.f19157l)) {
            return o0.k(1);
        } else {
            return o0.k(0);
        }
    }

    @Override // com.google.android.exoplayer2.p1, o5.o0
    public String getName() {
        return "TextRenderer";
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            N((f) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.p1
    public boolean isEnded() {
        return this.f64803s;
    }

    @Override // com.google.android.exoplayer2.p1
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.p1
    public void render(long j10, long j11) {
        boolean z10;
        this.D = j10;
        if (isCurrentStreamFinal()) {
            long j12 = this.B;
            if (j12 != -9223372036854775807L && j10 >= j12) {
                O();
                this.f64803s = true;
            }
        }
        if (this.f64803s) {
            return;
        }
        if (this.f64810z == null) {
            ((j) b7.a.e(this.f64807w)).setPositionUs(j10);
            try {
                this.f64810z = ((j) b7.a.e(this.f64807w)).dequeueOutputBuffer();
            } catch (SubtitleDecoderException e10) {
                L(e10);
                return;
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.f64809y != null) {
            long J = J();
            z10 = false;
            while (J <= j10) {
                this.A++;
                J = J();
                z10 = true;
            }
        } else {
            z10 = false;
        }
        n nVar = this.f64810z;
        if (nVar != null) {
            if (nVar.h()) {
                if (!z10 && J() == Long.MAX_VALUE) {
                    if (this.f64805u == 2) {
                        Q();
                    } else {
                        O();
                        this.f64803s = true;
                    }
                }
            } else if (nVar.f65585b <= j10) {
                n nVar2 = this.f64809y;
                if (nVar2 != null) {
                    nVar2.l();
                }
                this.A = nVar.getNextEventTimeIndex(j10);
                this.f64809y = nVar;
                this.f64810z = null;
                z10 = true;
            }
        }
        if (z10) {
            b7.a.e(this.f64809y);
            S(new f(this.f64809y.getCues(j10), K(I(j10))));
        }
        if (this.f64805u == 2) {
            return;
        }
        while (!this.f64802r) {
            try {
                m mVar = this.f64808x;
                if (mVar == null) {
                    mVar = ((j) b7.a.e(this.f64807w)).dequeueInputBuffer();
                    if (mVar == null) {
                        return;
                    }
                    this.f64808x = mVar;
                }
                if (this.f64805u == 1) {
                    mVar.k(4);
                    ((j) b7.a.e(this.f64807w)).queueInputBuffer(mVar);
                    this.f64808x = null;
                    this.f64805u = 2;
                    return;
                }
                int E = E(this.f64801q, mVar, 0);
                if (E == -4) {
                    if (mVar.h()) {
                        this.f64802r = true;
                        this.f64804t = false;
                    } else {
                        v0 v0Var = this.f64801q.f63093b;
                        if (v0Var == null) {
                            return;
                        }
                        mVar.f64795i = v0Var.f19161p;
                        mVar.n();
                        this.f64804t &= !mVar.j();
                    }
                    if (!this.f64804t) {
                        ((j) b7.a.e(this.f64807w)).queueInputBuffer(mVar);
                        this.f64808x = null;
                    }
                } else if (E == -3) {
                    return;
                }
            } catch (SubtitleDecoderException e11) {
                L(e11);
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void x() {
        this.f64806v = null;
        this.B = -9223372036854775807L;
        H();
        this.C = -9223372036854775807L;
        this.D = -9223372036854775807L;
        P();
    }

    @Override // com.google.android.exoplayer2.f
    protected void z(long j10, boolean z10) {
        this.D = j10;
        H();
        this.f64802r = false;
        this.f64803s = false;
        this.B = -9223372036854775807L;
        if (this.f64805u != 0) {
            Q();
            return;
        }
        O();
        ((j) b7.a.e(this.f64807w)).flush();
    }

    public p(o oVar, @Nullable Looper looper, k kVar) {
        super(3);
        this.f64799o = (o) b7.a.e(oVar);
        this.f64798n = looper == null ? null : s0.t(looper, this);
        this.f64800p = kVar;
        this.f64801q = new b0();
        this.B = -9223372036854775807L;
        this.C = -9223372036854775807L;
        this.D = -9223372036854775807L;
    }
}
