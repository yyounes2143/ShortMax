package sn;

import android.net.Uri;
import androidx.annotation.Nullable;
import zm.a0;
import zm.q;
/* compiled from: SinglePeriodTimeline.java */
/* loaded from: classes8.dex */
public final class u extends a0 {

    /* renamed from: r  reason: collision with root package name */
    private static final Object f66529r = new Object();

    /* renamed from: s  reason: collision with root package name */
    private static final zm.q f66530s = new q.c().c("SinglePeriodTimeline").f(Uri.EMPTY).a();

    /* renamed from: e  reason: collision with root package name */
    private final long f66531e;

    /* renamed from: f  reason: collision with root package name */
    private final long f66532f;

    /* renamed from: g  reason: collision with root package name */
    private final long f66533g;

    /* renamed from: h  reason: collision with root package name */
    private final long f66534h;

    /* renamed from: i  reason: collision with root package name */
    private final long f66535i;

    /* renamed from: j  reason: collision with root package name */
    private final long f66536j;

    /* renamed from: k  reason: collision with root package name */
    private final long f66537k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f66538l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f66539m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f66540n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final Object f66541o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final zm.q f66542p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private final q.g f66543q;

    public u(long j10, boolean z10, boolean z11, boolean z12, @Nullable Object obj, zm.q qVar) {
        this(j10, j10, 0L, 0L, z10, z11, z12, obj, qVar);
    }

    @Override // zm.a0
    public int b(Object obj) {
        if (f66529r.equals(obj)) {
            return 0;
        }
        return -1;
    }

    @Override // zm.a0
    public a0.b g(int i10, a0.b bVar, boolean z10) {
        Object obj;
        cn.a.c(i10, 0, 1);
        if (z10) {
            obj = f66529r;
        } else {
            obj = null;
        }
        return bVar.s(null, obj, 0, this.f66534h, -this.f66536j);
    }

    @Override // zm.a0
    public int i() {
        return 1;
    }

    @Override // zm.a0
    public Object m(int i10) {
        cn.a.c(i10, 0, 1);
        return f66529r;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
        if (r1 > r3) goto L9;
     */
    @Override // zm.a0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zm.a0.c o(int r25, zm.a0.c r26, long r27) {
        /*
            r24 = this;
            r0 = r24
            r1 = 0
            r2 = 1
            r3 = r25
            cn.a.c(r3, r1, r2)
            long r1 = r0.f66537k
            boolean r14 = r0.f66539m
            if (r14 == 0) goto L2e
            boolean r3 = r0.f66540n
            if (r3 != 0) goto L2e
            r3 = 0
            int r3 = (r27 > r3 ? 1 : (r27 == r3 ? 0 : -1))
            if (r3 == 0) goto L2e
            long r3 = r0.f66535i
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
            java.lang.Object r4 = zm.a0.c.f71747q
            zm.q r5 = r0.f66542p
            java.lang.Object r6 = r0.f66541o
            long r7 = r0.f66531e
            long r9 = r0.f66532f
            long r11 = r0.f66533g
            boolean r13 = r0.f66538l
            zm.q$g r15 = r0.f66543q
            long r1 = r0.f66535i
            r18 = r1
            r21 = 0
            long r1 = r0.f66536j
            r22 = r1
            r20 = 0
            r3 = r26
            zm.a0$c r1 = r3.g(r4, r5, r6, r7, r9, r11, r13, r14, r15, r16, r18, r20, r21, r22)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: sn.u.o(int, zm.a0$c, long):zm.a0$c");
    }

    @Override // zm.a0
    public int p() {
        return 1;
    }

    public u(long j10, long j11, long j12, long j13, boolean z10, boolean z11, boolean z12, @Nullable Object obj, zm.q qVar) {
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j10, j11, j12, j13, z10, z11, false, obj, qVar, z12 ? qVar.f71994d : null);
    }

    public u(long j10, long j11, long j12, long j13, long j14, long j15, long j16, boolean z10, boolean z11, boolean z12, @Nullable Object obj, zm.q qVar, @Nullable q.g gVar) {
        this.f66531e = j10;
        this.f66532f = j11;
        this.f66533g = j12;
        this.f66534h = j13;
        this.f66535i = j14;
        this.f66536j = j15;
        this.f66537k = j16;
        this.f66538l = z10;
        this.f66539m = z11;
        this.f66540n = z12;
        this.f66541o = obj;
        this.f66542p = (zm.q) cn.a.e(qVar);
        this.f66543q = gVar;
    }
}
