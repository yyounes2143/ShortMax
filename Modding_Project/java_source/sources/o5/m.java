package o5;

import com.google.android.exoplayer2.p1;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.C;
/* compiled from: DefaultLoadControl.java */
/* loaded from: classes4.dex */
public class m implements d0 {

    /* renamed from: a  reason: collision with root package name */
    private final a7.l f63101a;

    /* renamed from: b  reason: collision with root package name */
    private final long f63102b;

    /* renamed from: c  reason: collision with root package name */
    private final long f63103c;

    /* renamed from: d  reason: collision with root package name */
    private final long f63104d;

    /* renamed from: e  reason: collision with root package name */
    private final long f63105e;

    /* renamed from: f  reason: collision with root package name */
    private final int f63106f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f63107g;

    /* renamed from: h  reason: collision with root package name */
    private final long f63108h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f63109i;

    /* renamed from: j  reason: collision with root package name */
    private int f63110j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f63111k;

    public m() {
        this(new a7.l(true, 65536), 50000, 50000, 2500, 5000, -1, false, 0, false);
    }

    private static void d(int i10, int i11, String str, String str2) {
        boolean z10;
        if (i10 >= i11) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.b(z10, str + " cannot be less than " + str2);
    }

    private static int f(int i10) {
        switch (i10) {
            case -2:
                return 0;
            case -1:
            default:
                throw new IllegalArgumentException();
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
        }
    }

    private void g(boolean z10) {
        int i10 = this.f63106f;
        if (i10 == -1) {
            i10 = C.DEFAULT_VIDEO_BUFFER_SIZE;
        }
        this.f63110j = i10;
        this.f63111k = false;
        if (z10) {
            this.f63101a.d();
        }
    }

    @Override // o5.d0
    public boolean a(long j10, long j11, float f10) {
        boolean z10;
        boolean z11 = true;
        if (this.f63101a.c() >= this.f63110j) {
            z10 = true;
        } else {
            z10 = false;
        }
        long j12 = this.f63102b;
        if (f10 > 1.0f) {
            j12 = Math.min(b7.s0.U(j12, f10), this.f63103c);
        }
        if (j11 < Math.max(j12, 500000L)) {
            if (!this.f63107g && z10) {
                z11 = false;
            }
            this.f63111k = z11;
            if (!z11 && j11 < 500000) {
                b7.q.i("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j11 >= this.f63103c || z10) {
            this.f63111k = false;
        }
        return this.f63111k;
    }

    @Override // o5.d0
    public boolean b(long j10, float f10, boolean z10, long j11) {
        long j12;
        long Z = b7.s0.Z(j10, f10);
        if (z10) {
            j12 = this.f63105e;
        } else {
            j12 = this.f63104d;
        }
        if (j11 != -9223372036854775807L) {
            j12 = Math.min(j11 / 2, j12);
        }
        if (j12 > 0 && Z < j12 && (this.f63107g || this.f63101a.c() < this.f63110j)) {
            return false;
        }
        return true;
    }

    @Override // o5.d0
    public void c(p1[] p1VarArr, n6.w wVar, z6.y[] yVarArr) {
        int i10 = this.f63106f;
        if (i10 == -1) {
            i10 = e(p1VarArr, yVarArr);
        }
        this.f63110j = i10;
        this.f63101a.e(i10);
    }

    protected int e(p1[] p1VarArr, z6.y[] yVarArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < p1VarArr.length; i11++) {
            if (yVarArr[i11] != null) {
                i10 += f(p1VarArr[i11].getTrackType());
            }
        }
        return Math.max((int) C.DEFAULT_VIDEO_BUFFER_SIZE, i10);
    }

    @Override // o5.d0
    public a7.b getAllocator() {
        return this.f63101a;
    }

    @Override // o5.d0
    public long getBackBufferDurationUs() {
        return this.f63108h;
    }

    @Override // o5.d0
    public void onPrepared() {
        g(false);
    }

    @Override // o5.d0
    public void onReleased() {
        g(true);
    }

    @Override // o5.d0
    public void onStopped() {
        g(true);
    }

    @Override // o5.d0
    public boolean retainBackBufferFromKeyframe() {
        return this.f63109i;
    }

    protected m(a7.l lVar, int i10, int i11, int i12, int i13, int i14, boolean z10, int i15, boolean z11) {
        d(i12, 0, "bufferForPlaybackMs", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        d(i13, 0, "bufferForPlaybackAfterRebufferMs", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        d(i10, i12, "minBufferMs", "bufferForPlaybackMs");
        d(i10, i13, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        d(i11, i10, "maxBufferMs", "minBufferMs");
        d(i15, 0, "backBufferDurationMs", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        this.f63101a = lVar;
        this.f63102b = b7.s0.w0(i10);
        this.f63103c = b7.s0.w0(i11);
        this.f63104d = b7.s0.w0(i12);
        this.f63105e = b7.s0.w0(i13);
        this.f63106f = i14;
        this.f63110j = i14 == -1 ? C.DEFAULT_VIDEO_BUFFER_SIZE : i14;
        this.f63107g = z10;
        this.f63108h = b7.s0.w0(i15);
        this.f63109i = z11;
    }
}
