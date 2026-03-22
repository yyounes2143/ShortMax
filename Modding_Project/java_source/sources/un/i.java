package un;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import cn.m0;
import cn.r;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import gn.c0;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.i2;
import io.bidmachine.media3.exoplayer.source.r;
import io.bidmachine.media3.extractor.text.SubtitleDecoderException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;
import yo.k;
import yo.l;
import yo.o;
import yo.p;
import zm.u;
/* compiled from: TextRenderer.java */
/* loaded from: classes8.dex */
public final class i extends io.bidmachine.media3.exoplayer.h implements Handler.Callback {
    @Nullable
    private p A;
    private int B;
    @Nullable
    private final Handler C;
    private final h D;
    private final c0 E;
    private boolean F;
    private boolean G;
    @Nullable
    private io.bidmachine.media3.common.a H;
    private long I;
    private long J;
    private boolean K;
    @Nullable
    private IOException L;

    /* renamed from: r  reason: collision with root package name */
    private final yo.b f68505r;

    /* renamed from: s  reason: collision with root package name */
    private final DecoderInputBuffer f68506s;

    /* renamed from: t  reason: collision with root package name */
    private a f68507t;

    /* renamed from: u  reason: collision with root package name */
    private final g f68508u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f68509v;

    /* renamed from: w  reason: collision with root package name */
    private int f68510w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private l f68511x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private o f68512y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private p f68513z;

    public i(h hVar, @Nullable Looper looper) {
        this(hVar, looper, g.f68503a);
    }

    private void b0() {
        boolean z10;
        if (!this.K && !Objects.equals(this.H.f55174o, MimeTypes.APPLICATION_CEA608) && !Objects.equals(this.H.f55174o, MimeTypes.APPLICATION_MP4CEA608) && !Objects.equals(this.H.f55174o, MimeTypes.APPLICATION_CEA708)) {
            z10 = false;
        } else {
            z10 = true;
        }
        cn.a.h(z10, "Legacy decoding is disabled, can't handle " + this.H.f55174o + " samples (expected application/x-media3-cues).");
    }

    private void c0() {
        s0(new bn.b(ImmutableList.A(), f0(this.I)));
    }

    private long d0(long j10) {
        int nextEventTimeIndex = this.f68513z.getNextEventTimeIndex(j10);
        if (nextEventTimeIndex != 0 && this.f68513z.getEventTimeCount() != 0) {
            if (nextEventTimeIndex == -1) {
                p pVar = this.f68513z;
                return pVar.getEventTime(pVar.getEventTimeCount() - 1);
            }
            return this.f68513z.getEventTime(nextEventTimeIndex - 1);
        }
        return this.f68513z.f51841b;
    }

    private long e0() {
        if (this.B == -1) {
            return Long.MAX_VALUE;
        }
        cn.a.e(this.f68513z);
        if (this.B >= this.f68513z.getEventTimeCount()) {
            return Long.MAX_VALUE;
        }
        return this.f68513z.getEventTime(this.B);
    }

    private long f0(long j10) {
        boolean z10;
        if (j10 != -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        return j10 - K();
    }

    private void g0(SubtitleDecoderException subtitleDecoderException) {
        r.d("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.H, subtitleDecoderException);
        c0();
        q0();
    }

    private static boolean h0(@Nullable k kVar, long j10) {
        if (kVar == null || kVar.getEventTime(kVar.getEventTimeCount() - 1) <= j10) {
            return true;
        }
        return false;
    }

    private void i0() {
        this.f68509v = true;
        l b10 = this.f68508u.b((io.bidmachine.media3.common.a) cn.a.e(this.H));
        this.f68511x = b10;
        b10.a(H());
    }

    private void j0(bn.b bVar) {
        this.D.onCues(bVar.f2737a);
        this.D.C(bVar);
    }

    private static boolean k0(io.bidmachine.media3.common.a aVar) {
        return Objects.equals(aVar.f55174o, "application/x-media3-cues");
    }

    private boolean l0(long j10) {
        if (this.F || Y(this.E, this.f68506s, 0) != -4) {
            return false;
        }
        if (this.f68506s.f()) {
            this.F = true;
            return false;
        }
        this.f68506s.n();
        ByteBuffer byteBuffer = (ByteBuffer) cn.a.e(this.f68506s.f55345d);
        yo.e a10 = this.f68505r.a(this.f68506s.f55347f, byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
        this.f68506s.b();
        return this.f68507t.a(a10, j10);
    }

    private void m0() {
        this.f68512y = null;
        this.B = -1;
        p pVar = this.f68513z;
        if (pVar != null) {
            pVar.l();
            this.f68513z = null;
        }
        p pVar2 = this.A;
        if (pVar2 != null) {
            pVar2.l();
            this.A = null;
        }
    }

    private void n0() {
        m0();
        ((l) cn.a.e(this.f68511x)).release();
        this.f68511x = null;
        this.f68510w = 0;
    }

    private void o0(long j10) {
        boolean l02 = l0(j10);
        long c10 = this.f68507t.c(this.I);
        int i10 = (c10 > Long.MIN_VALUE ? 1 : (c10 == Long.MIN_VALUE ? 0 : -1));
        if (i10 == 0 && this.F && !l02) {
            this.G = true;
        }
        if (i10 != 0 && c10 <= j10) {
            l02 = true;
        }
        if (l02) {
            ImmutableList<bn.a> b10 = this.f68507t.b(j10);
            long e10 = this.f68507t.e(j10);
            s0(new bn.b(b10, f0(e10)));
            this.f68507t.d(e10);
        }
        this.I = j10;
    }

    private void p0(long j10) {
        boolean z10;
        this.I = j10;
        if (this.A == null) {
            ((l) cn.a.e(this.f68511x)).setPositionUs(j10);
            try {
                this.A = ((l) cn.a.e(this.f68511x)).dequeueOutputBuffer();
            } catch (SubtitleDecoderException e10) {
                g0(e10);
                return;
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.f68513z != null) {
            long e02 = e0();
            z10 = false;
            while (e02 <= j10) {
                this.B++;
                e02 = e0();
                z10 = true;
            }
        } else {
            z10 = false;
        }
        p pVar = this.A;
        if (pVar != null) {
            if (pVar.f()) {
                if (!z10 && e0() == Long.MAX_VALUE) {
                    if (this.f68510w == 2) {
                        q0();
                    } else {
                        m0();
                        this.G = true;
                    }
                }
            } else if (pVar.f51841b <= j10) {
                p pVar2 = this.f68513z;
                if (pVar2 != null) {
                    pVar2.l();
                }
                this.B = pVar.getNextEventTimeIndex(j10);
                this.f68513z = pVar;
                this.A = null;
                z10 = true;
            }
        }
        if (z10) {
            cn.a.e(this.f68513z);
            s0(new bn.b(this.f68513z.getCues(j10), f0(d0(j10))));
        }
        if (this.f68510w == 2) {
            return;
        }
        while (!this.F) {
            try {
                o oVar = this.f68512y;
                if (oVar == null) {
                    oVar = ((l) cn.a.e(this.f68511x)).dequeueInputBuffer();
                    if (oVar == null) {
                        return;
                    }
                    this.f68512y = oVar;
                }
                if (this.f68510w == 1) {
                    oVar.k(4);
                    ((l) cn.a.e(this.f68511x)).queueInputBuffer(oVar);
                    this.f68512y = null;
                    this.f68510w = 2;
                    return;
                }
                int Y = Y(this.E, oVar, 0);
                if (Y == -4) {
                    if (oVar.f()) {
                        this.F = true;
                        this.f68509v = false;
                    } else {
                        io.bidmachine.media3.common.a aVar = this.E.f52440b;
                        if (aVar == null) {
                            return;
                        }
                        oVar.f71096j = aVar.f55179t;
                        oVar.n();
                        this.f68509v &= !oVar.h();
                    }
                    if (!this.f68509v) {
                        ((l) cn.a.e(this.f68511x)).queueInputBuffer(oVar);
                        this.f68512y = null;
                    }
                } else if (Y == -3) {
                    return;
                }
            } catch (SubtitleDecoderException e11) {
                g0(e11);
                return;
            }
        }
    }

    private void q0() {
        n0();
        i0();
    }

    private void s0(bn.b bVar) {
        Handler handler = this.C;
        if (handler != null) {
            handler.obtainMessage(1, bVar).sendToTarget();
        } else {
            j0(bVar);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.h
    protected void N() {
        this.H = null;
        this.J = -9223372036854775807L;
        c0();
        this.I = -9223372036854775807L;
        if (this.f68511x != null) {
            n0();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.h
    protected void Q(long j10, boolean z10) {
        this.I = j10;
        a aVar = this.f68507t;
        if (aVar != null) {
            aVar.clear();
        }
        c0();
        this.F = false;
        this.G = false;
        this.J = -9223372036854775807L;
        io.bidmachine.media3.common.a aVar2 = this.H;
        if (aVar2 != null && !k0(aVar2)) {
            if (this.f68510w != 0) {
                q0();
                return;
            }
            m0();
            l lVar = (l) cn.a.e(this.f68511x);
            lVar.flush();
            lVar.a(H());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.h
    public void W(io.bidmachine.media3.common.a[] aVarArr, long j10, long j11, r.b bVar) {
        a fVar;
        io.bidmachine.media3.common.a aVar = aVarArr[0];
        this.H = aVar;
        if (!k0(aVar)) {
            b0();
            if (this.f68511x != null) {
                this.f68510w = 1;
                return;
            } else {
                i0();
                return;
            }
        }
        if (this.H.K == 1) {
            fVar = new e();
        } else {
            fVar = new f();
        }
        this.f68507t = fVar;
    }

    @Override // io.bidmachine.media3.exoplayer.i2
    public int a(io.bidmachine.media3.common.a aVar) {
        int i10;
        if (!k0(aVar) && !this.f68508u.a(aVar)) {
            if (u.s(aVar.f55174o)) {
                return i2.k(1);
            }
            return i2.k(0);
        }
        if (aVar.N == 0) {
            i10 = 4;
        } else {
            i10 = 2;
        }
        return i2.k(i10);
    }

    @Override // io.bidmachine.media3.exoplayer.h2, io.bidmachine.media3.exoplayer.i2
    public String getName() {
        return "TextRenderer";
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 1) {
            j0((bn.b) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public boolean isEnded() {
        return this.G;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public boolean isReady() {
        if (this.H == null) {
            return true;
        }
        if (this.L == null) {
            try {
                maybeThrowStreamError();
            } catch (IOException e10) {
                this.L = e10;
            }
        }
        if (this.L != null) {
            if (k0((io.bidmachine.media3.common.a) cn.a.e(this.H))) {
                if (((a) cn.a.e(this.f68507t)).c(this.I) != Long.MIN_VALUE) {
                    return true;
                }
                return false;
            } else if (this.G || (this.F && h0(this.f68513z, this.I) && h0(this.A, this.I) && this.f68512y != null)) {
                return false;
            }
        }
        return true;
    }

    public void r0(long j10) {
        cn.a.g(isCurrentStreamFinal());
        this.J = j10;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public void render(long j10, long j11) {
        if (isCurrentStreamFinal()) {
            long j12 = this.J;
            if (j12 != -9223372036854775807L && j10 >= j12) {
                m0();
                this.G = true;
            }
        }
        if (this.G) {
            return;
        }
        if (k0((io.bidmachine.media3.common.a) cn.a.e(this.H))) {
            cn.a.e(this.f68507t);
            o0(j10);
            return;
        }
        b0();
        p0(j10);
    }

    public i(h hVar, @Nullable Looper looper, g gVar) {
        super(3);
        this.D = (h) cn.a.e(hVar);
        this.C = looper == null ? null : m0.z(looper, this);
        this.f68508u = gVar;
        this.f68505r = new yo.b();
        this.f68506s = new DecoderInputBuffer(1);
        this.E = new c0();
        this.J = -9223372036854775807L;
        this.I = -9223372036854775807L;
        this.K = false;
    }
}
