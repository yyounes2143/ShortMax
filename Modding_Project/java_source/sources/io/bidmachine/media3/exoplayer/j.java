package io.bidmachine.media3.exoplayer;

import androidx.annotation.VisibleForTesting;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import io.bidmachine.media3.exoplayer.j1;
import io.bidmachine.media3.exoplayer.source.r;
import java.util.HashMap;
/* compiled from: DefaultLoadControl.java */
/* loaded from: classes8.dex */
public class j implements j1 {

    /* renamed from: b  reason: collision with root package name */
    private final wn.g f56374b;

    /* renamed from: c  reason: collision with root package name */
    private final long f56375c;

    /* renamed from: d  reason: collision with root package name */
    private final long f56376d;

    /* renamed from: e  reason: collision with root package name */
    private final long f56377e;

    /* renamed from: f  reason: collision with root package name */
    private final long f56378f;

    /* renamed from: g  reason: collision with root package name */
    private final int f56379g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f56380h;

    /* renamed from: i  reason: collision with root package name */
    private final long f56381i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f56382j;

    /* renamed from: k  reason: collision with root package name */
    private final HashMap<hn.b2, b> f56383k;

    /* renamed from: l  reason: collision with root package name */
    private long f56384l;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultLoadControl.java */
    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public boolean f56385a;

        /* renamed from: b  reason: collision with root package name */
        public int f56386b;

        private b() {
        }
    }

    public j() {
        this(new wn.g(true, 65536), 50000, 50000, 1000, 2000, -1, false, 0, false);
    }

    private static void m(int i10, int i11, String str, String str2) {
        boolean z10;
        if (i10 >= i11) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.b(z10, str + " cannot be less than " + str2);
    }

    private static int p(int i10) {
        switch (i10) {
            case -2:
                return 0;
            case -1:
                return C.DEFAULT_VIDEO_BUFFER_SIZE;
            case 0:
                return 144310272;
            case 1:
                return C.DEFAULT_VIDEO_BUFFER_SIZE;
            case 2:
                return 131072000;
            case 3:
            case 4:
            case 5:
            case 6:
                return 131072;
            default:
                throw new IllegalArgumentException();
        }
    }

    private void q(hn.b2 b2Var) {
        if (this.f56383k.remove(b2Var) != null) {
            s();
        }
    }

    private void r(hn.b2 b2Var) {
        b bVar = (b) cn.a.e(this.f56383k.get(b2Var));
        int i10 = this.f56379g;
        if (i10 == -1) {
            i10 = C.DEFAULT_VIDEO_BUFFER_SIZE;
        }
        bVar.f56386b = i10;
        bVar.f56385a = false;
    }

    private void s() {
        if (this.f56383k.isEmpty()) {
            this.f56374b.d();
        } else {
            this.f56374b.e(o());
        }
    }

    @Override // io.bidmachine.media3.exoplayer.j1
    public boolean c(j1.a aVar) {
        long j10;
        long l02 = cn.m0.l0(aVar.f56393e, aVar.f56394f);
        if (aVar.f56396h) {
            j10 = this.f56378f;
        } else {
            j10 = this.f56377e;
        }
        long j11 = aVar.f56397i;
        if (j11 != -9223372036854775807L) {
            j10 = Math.min(j11 / 2, j10);
        }
        if (j10 > 0 && l02 < j10 && (this.f56380h || this.f56374b.c() < o())) {
            return false;
        }
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.j1
    public boolean d(j1.a aVar) {
        boolean z10;
        b bVar = (b) cn.a.e(this.f56383k.get(aVar.f56389a));
        boolean z11 = true;
        if (this.f56374b.c() >= o()) {
            z10 = true;
        } else {
            z10 = false;
        }
        long j10 = this.f56375c;
        float f10 = aVar.f56394f;
        if (f10 > 1.0f) {
            j10 = Math.min(cn.m0.g0(j10, f10), this.f56376d);
        }
        long max = Math.max(j10, 500000L);
        long j11 = aVar.f56393e;
        if (j11 < max) {
            if (!this.f56380h && z10) {
                z11 = false;
            }
            bVar.f56385a = z11;
            if (!z11 && j11 < 500000) {
                cn.r.h("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j11 >= this.f56376d || z10) {
            bVar.f56385a = false;
        }
        return bVar.f56385a;
    }

    @Override // io.bidmachine.media3.exoplayer.j1
    public void e(hn.b2 b2Var) {
        q(b2Var);
    }

    @Override // io.bidmachine.media3.exoplayer.j1
    public boolean f(zm.a0 a0Var, r.b bVar, long j10) {
        for (b bVar2 : this.f56383k.values()) {
            if (bVar2.f56385a) {
                return false;
            }
        }
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.j1
    public boolean g(hn.b2 b2Var) {
        return this.f56382j;
    }

    @Override // io.bidmachine.media3.exoplayer.j1
    public wn.b getAllocator() {
        return this.f56374b;
    }

    @Override // io.bidmachine.media3.exoplayer.j1
    public void h(hn.b2 b2Var) {
        boolean z10;
        long id2 = Thread.currentThread().getId();
        long j10 = this.f56384l;
        if (j10 != -1 && j10 != id2) {
            z10 = false;
        } else {
            z10 = true;
        }
        cn.a.h(z10, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).");
        this.f56384l = id2;
        if (!this.f56383k.containsKey(b2Var)) {
            this.f56383k.put(b2Var, new b());
        }
        r(b2Var);
    }

    @Override // io.bidmachine.media3.exoplayer.j1
    public void i(hn.b2 b2Var) {
        q(b2Var);
        if (this.f56383k.isEmpty()) {
            this.f56384l = -1L;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.j1
    public long j(hn.b2 b2Var) {
        return this.f56381i;
    }

    @Override // io.bidmachine.media3.exoplayer.j1
    public void l(j1.a aVar, sn.x xVar, vn.q[] qVarArr) {
        b bVar = (b) cn.a.e(this.f56383k.get(aVar.f56389a));
        int i10 = this.f56379g;
        if (i10 == -1) {
            i10 = n(qVarArr);
        }
        bVar.f56386b = i10;
        s();
    }

    protected int n(vn.q[] qVarArr) {
        int i10 = 0;
        for (vn.q qVar : qVarArr) {
            if (qVar != null) {
                i10 += p(qVar.getTrackGroup().f71811c);
            }
        }
        return Math.max((int) C.DEFAULT_VIDEO_BUFFER_SIZE, i10);
    }

    @VisibleForTesting
    int o() {
        int i10 = 0;
        for (b bVar : this.f56383k.values()) {
            i10 += bVar.f56386b;
        }
        return i10;
    }

    protected j(wn.g gVar, int i10, int i11, int i12, int i13, int i14, boolean z10, int i15, boolean z11) {
        m(i12, 0, "bufferForPlaybackMs", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        m(i13, 0, "bufferForPlaybackAfterRebufferMs", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        m(i10, i12, "minBufferMs", "bufferForPlaybackMs");
        m(i10, i13, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        m(i11, i10, "maxBufferMs", "minBufferMs");
        m(i15, 0, "backBufferDurationMs", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        this.f56374b = gVar;
        this.f56375c = cn.m0.S0(i10);
        this.f56376d = cn.m0.S0(i11);
        this.f56377e = cn.m0.S0(i12);
        this.f56378f = cn.m0.S0(i13);
        this.f56379g = i14;
        this.f56380h = z10;
        this.f56381i = cn.m0.S0(i15);
        this.f56382j = z11;
        this.f56383k = new HashMap<>();
        this.f56384l = -1L;
    }
}
