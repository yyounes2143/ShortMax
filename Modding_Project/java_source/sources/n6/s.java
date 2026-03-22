package n6;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.y0;
/* compiled from: SinglePeriodTimeline.java */
/* loaded from: classes4.dex */
public final class s extends u1 {

    /* renamed from: p  reason: collision with root package name */
    private static final Object f62817p = new Object();

    /* renamed from: q  reason: collision with root package name */
    private static final y0 f62818q = new y0.c().d("SinglePeriodTimeline").g(Uri.EMPTY).a();

    /* renamed from: c  reason: collision with root package name */
    private final long f62819c;

    /* renamed from: d  reason: collision with root package name */
    private final long f62820d;

    /* renamed from: e  reason: collision with root package name */
    private final long f62821e;

    /* renamed from: f  reason: collision with root package name */
    private final long f62822f;

    /* renamed from: g  reason: collision with root package name */
    private final long f62823g;

    /* renamed from: h  reason: collision with root package name */
    private final long f62824h;

    /* renamed from: i  reason: collision with root package name */
    private final long f62825i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f62826j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f62827k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f62828l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final Object f62829m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final y0 f62830n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final y0.g f62831o;

    public s(long j10, boolean z10, boolean z11, boolean z12, @Nullable Object obj, y0 y0Var) {
        this(j10, j10, 0L, 0L, z10, z11, z12, obj, y0Var);
    }

    @Override // com.google.android.exoplayer2.u1
    public int f(Object obj) {
        if (f62817p.equals(obj)) {
            return 0;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.u1
    public u1.b k(int i10, u1.b bVar, boolean z10) {
        Object obj;
        b7.a.c(i10, 0, 1);
        if (z10) {
            obj = f62817p;
        } else {
            obj = null;
        }
        return bVar.v(null, obj, 0, this.f62822f, -this.f62824h);
    }

    @Override // com.google.android.exoplayer2.u1
    public int m() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.u1
    public Object q(int i10) {
        b7.a.c(i10, 0, 1);
        return f62817p;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
        if (r1 > r3) goto L9;
     */
    @Override // com.google.android.exoplayer2.u1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.u1.d s(int r25, com.google.android.exoplayer2.u1.d r26, long r27) {
        /*
            r24 = this;
            r0 = r24
            r1 = 0
            r2 = 1
            r3 = r25
            b7.a.c(r3, r1, r2)
            long r1 = r0.f62825i
            boolean r14 = r0.f62827k
            if (r14 == 0) goto L2e
            boolean r3 = r0.f62828l
            if (r3 != 0) goto L2e
            r3 = 0
            int r3 = (r27 > r3 ? 1 : (r27 == r3 ? 0 : -1))
            if (r3 == 0) goto L2e
            long r3 = r0.f62823g
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L27
        L24:
            r16 = r5
            goto L30
        L27:
            long r1 = r1 + r27
            int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r3 <= 0) goto L2e
            goto L24
        L2e:
            r16 = r1
        L30:
            java.lang.Object r4 = com.google.android.exoplayer2.u1.d.f18546r
            com.google.android.exoplayer2.y0 r5 = r0.f62830n
            java.lang.Object r6 = r0.f62829m
            long r7 = r0.f62819c
            long r9 = r0.f62820d
            long r11 = r0.f62821e
            boolean r13 = r0.f62826j
            com.google.android.exoplayer2.y0$g r15 = r0.f62831o
            long r1 = r0.f62823g
            r18 = r1
            r21 = 0
            long r1 = r0.f62824h
            r22 = r1
            r20 = 0
            r3 = r26
            com.google.android.exoplayer2.u1$d r1 = r3.k(r4, r5, r6, r7, r9, r11, r13, r14, r15, r16, r18, r20, r21, r22)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: n6.s.s(int, com.google.android.exoplayer2.u1$d, long):com.google.android.exoplayer2.u1$d");
    }

    @Override // com.google.android.exoplayer2.u1
    public int t() {
        return 1;
    }

    public s(long j10, long j11, long j12, long j13, boolean z10, boolean z11, boolean z12, @Nullable Object obj, y0 y0Var) {
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j10, j11, j12, j13, z10, z11, false, obj, y0Var, z12 ? y0Var.f19336d : null);
    }

    public s(long j10, long j11, long j12, long j13, long j14, long j15, long j16, boolean z10, boolean z11, boolean z12, @Nullable Object obj, y0 y0Var, @Nullable y0.g gVar) {
        this.f62819c = j10;
        this.f62820d = j11;
        this.f62821e = j12;
        this.f62822f = j13;
        this.f62823g = j14;
        this.f62824h = j15;
        this.f62825i = j16;
        this.f62826j = z10;
        this.f62827k = z11;
        this.f62828l = z12;
        this.f62829m = obj;
        this.f62830n = (y0) b7.a.e(y0Var);
        this.f62831o = gVar;
    }
}
