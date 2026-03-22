package io.bidmachine.media3.exoplayer.dash;

import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import ao.g;
import cn.j0;
import cn.m0;
import com.google.common.collect.ImmutableMap;
import en.d;
import en.o;
import gn.i0;
import hn.b2;
import io.bidmachine.media3.datasource.HttpDataSource$InvalidResponseCodeException;
import io.bidmachine.media3.exoplayer.dash.a;
import io.bidmachine.media3.exoplayer.dash.f;
import io.bidmachine.media3.exoplayer.source.BehindLiveWindowException;
import io.bidmachine.media3.exoplayer.upstream.b;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kn.i;
import kn.j;
import tn.d;
import tn.f;
import tn.l;
import tn.m;
import vn.q;
import wn.f;
import wn.k;
import yo.r;
import zm.u;
/* compiled from: DefaultDashChunkSource.java */
/* loaded from: classes8.dex */
public class d implements io.bidmachine.media3.exoplayer.dash.a {

    /* renamed from: a  reason: collision with root package name */
    private final k f55719a;

    /* renamed from: b  reason: collision with root package name */
    private final jn.b f55720b;

    /* renamed from: c  reason: collision with root package name */
    private final int[] f55721c;

    /* renamed from: d  reason: collision with root package name */
    private final int f55722d;

    /* renamed from: e  reason: collision with root package name */
    private final en.d f55723e;

    /* renamed from: f  reason: collision with root package name */
    private final long f55724f;

    /* renamed from: g  reason: collision with root package name */
    private final int f55725g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final f.c f55726h;

    /* renamed from: i  reason: collision with root package name */
    protected final b[] f55727i;

    /* renamed from: j  reason: collision with root package name */
    private q f55728j;

    /* renamed from: k  reason: collision with root package name */
    private kn.c f55729k;

    /* renamed from: l  reason: collision with root package name */
    private int f55730l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private IOException f55731m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f55732n;

    /* renamed from: o  reason: collision with root package name */
    private long f55733o = -9223372036854775807L;

    /* compiled from: DefaultDashChunkSource.java */
    /* loaded from: classes8.dex */
    public static final class a implements a.InterfaceC0800a {

        /* renamed from: a  reason: collision with root package name */
        private final d.a f55734a;

        /* renamed from: b  reason: collision with root package name */
        private final int f55735b;

        /* renamed from: c  reason: collision with root package name */
        private final f.a f55736c;

        public a(d.a aVar) {
            this(aVar, 1);
        }

        @Override // io.bidmachine.media3.exoplayer.dash.a.InterfaceC0800a
        public io.bidmachine.media3.common.a d(io.bidmachine.media3.common.a aVar) {
            return this.f55736c.d(aVar);
        }

        @Override // io.bidmachine.media3.exoplayer.dash.a.InterfaceC0800a
        public io.bidmachine.media3.exoplayer.dash.a e(k kVar, kn.c cVar, jn.b bVar, int i10, int[] iArr, q qVar, int i11, long j10, boolean z10, List<io.bidmachine.media3.common.a> list, @Nullable f.c cVar2, @Nullable o oVar, b2 b2Var, @Nullable wn.e eVar) {
            en.d createDataSource = this.f55734a.createDataSource();
            if (oVar != null) {
                createDataSource.c(oVar);
            }
            return new d(this.f55736c, kVar, cVar, bVar, i10, iArr, qVar, i11, createDataSource, j10, this.f55735b, z10, list, cVar2, b2Var, eVar);
        }

        @Override // io.bidmachine.media3.exoplayer.dash.a.InterfaceC0800a
        /* renamed from: f */
        public a c(boolean z10) {
            this.f55736c.c(z10);
            return this;
        }

        @Override // io.bidmachine.media3.exoplayer.dash.a.InterfaceC0800a
        /* renamed from: g */
        public a b(int i10) {
            this.f55736c.b(i10);
            return this;
        }

        @Override // io.bidmachine.media3.exoplayer.dash.a.InterfaceC0800a
        /* renamed from: h */
        public a a(r.a aVar) {
            this.f55736c.a(aVar);
            return this;
        }

        public a(d.a aVar, int i10) {
            this(new d.b(), aVar, i10);
        }

        public a(f.a aVar, d.a aVar2, int i10) {
            this.f55736c = aVar;
            this.f55734a = aVar2;
            this.f55735b = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: DefaultDashChunkSource.java */
    /* loaded from: classes8.dex */
    public static final class b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        final tn.f f55737a;

        /* renamed from: b  reason: collision with root package name */
        public final j f55738b;

        /* renamed from: c  reason: collision with root package name */
        public final kn.b f55739c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final jn.e f55740d;

        /* renamed from: e  reason: collision with root package name */
        private final long f55741e;

        /* renamed from: f  reason: collision with root package name */
        private final long f55742f;

        b(long j10, j jVar, kn.b bVar, @Nullable tn.f fVar, long j11, @Nullable jn.e eVar) {
            this.f55741e = j10;
            this.f55738b = jVar;
            this.f55739c = bVar;
            this.f55742f = j11;
            this.f55737a = fVar;
            this.f55740d = eVar;
        }

        @CheckResult
        b b(long j10, j jVar) throws BehindLiveWindowException {
            long d10;
            jn.e k10 = this.f55738b.k();
            jn.e k11 = jVar.k();
            if (k10 == null) {
                return new b(j10, jVar, this.f55739c, this.f55737a, this.f55742f, k10);
            }
            if (!k10.h()) {
                return new b(j10, jVar, this.f55739c, this.f55737a, this.f55742f, k11);
            }
            long e10 = k10.e(j10);
            if (e10 == 0) {
                return new b(j10, jVar, this.f55739c, this.f55737a, this.f55742f, k11);
            }
            cn.a.i(k11);
            long f10 = k10.f();
            long timeUs = k10.getTimeUs(f10);
            long j11 = e10 + f10;
            long j12 = j11 - 1;
            long timeUs2 = k10.getTimeUs(j12) + k10.a(j12, j10);
            long f11 = k11.f();
            long timeUs3 = k11.getTimeUs(f11);
            long j13 = this.f55742f;
            int i10 = (timeUs2 > timeUs3 ? 1 : (timeUs2 == timeUs3 ? 0 : -1));
            if (i10 != 0) {
                if (i10 >= 0) {
                    if (timeUs3 < timeUs) {
                        d10 = j13 - (k11.d(timeUs, j10) - f10);
                        return new b(j10, jVar, this.f55739c, this.f55737a, d10, k11);
                    }
                    j11 = k10.d(timeUs3, j10);
                } else {
                    throw new BehindLiveWindowException();
                }
            }
            d10 = j13 + (j11 - f11);
            return new b(j10, jVar, this.f55739c, this.f55737a, d10, k11);
        }

        @CheckResult
        b c(jn.e eVar) {
            return new b(this.f55741e, this.f55738b, this.f55739c, this.f55737a, this.f55742f, eVar);
        }

        @CheckResult
        b d(kn.b bVar) {
            return new b(this.f55741e, this.f55738b, bVar, this.f55737a, this.f55742f, this.f55740d);
        }

        public long e(long j10) {
            return ((jn.e) cn.a.i(this.f55740d)).b(this.f55741e, j10) + this.f55742f;
        }

        public long f() {
            return ((jn.e) cn.a.i(this.f55740d)).f() + this.f55742f;
        }

        public long g(long j10) {
            return (e(j10) + ((jn.e) cn.a.i(this.f55740d)).i(this.f55741e, j10)) - 1;
        }

        public long h() {
            return ((jn.e) cn.a.i(this.f55740d)).e(this.f55741e);
        }

        public long i(long j10) {
            return k(j10) + ((jn.e) cn.a.i(this.f55740d)).a(j10 - this.f55742f, this.f55741e);
        }

        public long j(long j10) {
            return ((jn.e) cn.a.i(this.f55740d)).d(j10, this.f55741e) + this.f55742f;
        }

        public long k(long j10) {
            return ((jn.e) cn.a.i(this.f55740d)).getTimeUs(j10 - this.f55742f);
        }

        public i l(long j10) {
            return ((jn.e) cn.a.i(this.f55740d)).g(j10 - this.f55742f);
        }

        public boolean m(long j10, long j11) {
            if (((jn.e) cn.a.i(this.f55740d)).h() || j11 == -9223372036854775807L || i(j10) <= j11) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: DefaultDashChunkSource.java */
    /* loaded from: classes8.dex */
    protected static final class c extends tn.b {

        /* renamed from: e  reason: collision with root package name */
        private final b f55743e;

        /* renamed from: f  reason: collision with root package name */
        private final long f55744f;

        public c(b bVar, long j10, long j11, long j12) {
            super(j10, j11);
            this.f55743e = bVar;
            this.f55744f = j12;
        }

        @Override // tn.n
        public long a() {
            c();
            return this.f55743e.i(d());
        }

        @Override // tn.n
        public long b() {
            c();
            return this.f55743e.k(d());
        }
    }

    public d(f.a aVar, k kVar, kn.c cVar, jn.b bVar, int i10, int[] iArr, q qVar, int i11, en.d dVar, long j10, int i12, boolean z10, List<io.bidmachine.media3.common.a> list, @Nullable f.c cVar2, b2 b2Var, @Nullable wn.e eVar) {
        this.f55719a = kVar;
        this.f55729k = cVar;
        this.f55720b = bVar;
        this.f55721c = iArr;
        this.f55728j = qVar;
        this.f55722d = i11;
        this.f55723e = dVar;
        this.f55730l = i10;
        this.f55724f = j10;
        this.f55725g = i12;
        this.f55726h = cVar2;
        long f10 = cVar.f(i10);
        ArrayList<j> l10 = l();
        this.f55727i = new b[qVar.length()];
        int i13 = 0;
        while (i13 < this.f55727i.length) {
            j jVar = l10.get(qVar.getIndexInTrackGroup(i13));
            kn.b j11 = bVar.j(jVar.f60857c);
            int i14 = i13;
            this.f55727i[i14] = new b(f10, jVar, j11 == null ? jVar.f60857c.get(0) : j11, aVar.e(i11, jVar.f60856b, z10, list, cVar2, b2Var), 0L, jVar.k());
            i13 = i14 + 1;
        }
    }

    private b.a h(q qVar, List<kn.b> list) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int length = qVar.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (qVar.d(i11, elapsedRealtime)) {
                i10++;
            }
        }
        int f10 = jn.b.f(list);
        return new b.a(f10, f10 - this.f55720b.g(list), length, i10);
    }

    private long i(long j10, long j11) {
        if (this.f55729k.f60808d && this.f55727i[0].h() != 0) {
            return Math.max(0L, Math.min(k(j10), this.f55727i[0].i(this.f55727i[0].g(j10))) - j11);
        }
        return -9223372036854775807L;
    }

    @Nullable
    private Pair<String, String> j(long j10, i iVar, b bVar) {
        long j11 = j10 + 1;
        if (j11 >= bVar.h()) {
            return null;
        }
        i l10 = bVar.l(j11);
        String a10 = j0.a(iVar.b(bVar.f55739c.f60801a), l10.b(bVar.f55739c.f60801a));
        String str = l10.f60851a + "-";
        if (l10.f60852b != -1) {
            str = str + (l10.f60851a + l10.f60852b);
        }
        return new Pair<>(a10, str);
    }

    private long k(long j10) {
        kn.c cVar = this.f55729k;
        long j11 = cVar.f60805a;
        if (j11 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j10 - m0.S0(j11 + cVar.c(this.f55730l).f60842b);
    }

    private ArrayList<j> l() {
        List<kn.a> list = this.f55729k.c(this.f55730l).f60843c;
        ArrayList<j> arrayList = new ArrayList<>();
        for (int i10 : this.f55721c) {
            arrayList.addAll(list.get(i10).f60797c);
        }
        return arrayList;
    }

    private long m(b bVar, @Nullable m mVar, long j10, long j11, long j12) {
        if (mVar != null) {
            return mVar.e();
        }
        return m0.q(bVar.j(j10), j11, j12);
    }

    private b p(int i10) {
        b bVar = this.f55727i[i10];
        kn.b j10 = this.f55720b.j(bVar.f55738b.f60857c);
        if (j10 != null && !j10.equals(bVar.f55739c)) {
            b d10 = bVar.d(j10);
            this.f55727i[i10] = d10;
            return d10;
        }
        return bVar;
    }

    @Override // tn.i
    public long a(long j10, i0 i0Var) {
        b[] bVarArr;
        long j11;
        for (b bVar : this.f55727i) {
            if (bVar.f55740d != null) {
                long h10 = bVar.h();
                if (h10 != 0) {
                    long j12 = bVar.j(j10);
                    long k10 = bVar.k(j12);
                    if (k10 < j10 && (h10 == -1 || j12 < (bVar.f() + h10) - 1)) {
                        j11 = bVar.k(j12 + 1);
                    } else {
                        j11 = k10;
                    }
                    return i0Var.a(j10, k10, j11);
                }
            }
        }
        return j10;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0161  */
    /* JADX WARN: Type inference failed for: r10v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    @Override // tn.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(io.bidmachine.media3.exoplayer.k1 r33, long r34, java.util.List<? extends tn.m> r36, tn.g r37) {
        /*
            Method dump skipped, instructions count: 519
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.dash.d.b(io.bidmachine.media3.exoplayer.k1, long, java.util.List, tn.g):void");
    }

    @Override // io.bidmachine.media3.exoplayer.dash.a
    public void c(kn.c cVar, int i10) {
        try {
            this.f55729k = cVar;
            this.f55730l = i10;
            long f10 = cVar.f(i10);
            ArrayList<j> l10 = l();
            for (int i11 = 0; i11 < this.f55727i.length; i11++) {
                b[] bVarArr = this.f55727i;
                bVarArr[i11] = bVarArr[i11].b(f10, l10.get(this.f55728j.getIndexInTrackGroup(i11)));
            }
        } catch (BehindLiveWindowException e10) {
            this.f55731m = e10;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.dash.a
    public void d(q qVar) {
        this.f55728j = qVar;
    }

    @Override // tn.i
    public void e(tn.e eVar) {
        g b10;
        if (eVar instanceof l) {
            int e10 = this.f55728j.e(((l) eVar).f67463d);
            b bVar = this.f55727i[e10];
            if (bVar.f55740d == null && (b10 = ((tn.f) cn.a.i(bVar.f55737a)).b()) != null) {
                this.f55727i[e10] = bVar.c(new jn.g(b10, bVar.f55738b.f60858d));
            }
        }
        f.c cVar = this.f55726h;
        if (cVar != null) {
            cVar.j(eVar);
        }
    }

    @Override // tn.i
    public boolean f(long j10, tn.e eVar, List<? extends m> list) {
        if (this.f55731m != null) {
            return false;
        }
        return this.f55728j.g(j10, eVar, list);
    }

    @Override // tn.i
    public boolean g(tn.e eVar, boolean z10, b.c cVar, io.bidmachine.media3.exoplayer.upstream.b bVar) {
        b.C0807b c10;
        if (!z10) {
            return false;
        }
        f.c cVar2 = this.f55726h;
        if (cVar2 != null && cVar2.k(eVar)) {
            return true;
        }
        if (!this.f55729k.f60808d && (eVar instanceof m)) {
            IOException iOException = cVar.f57121c;
            if ((iOException instanceof HttpDataSource$InvalidResponseCodeException) && ((HttpDataSource$InvalidResponseCodeException) iOException).f55324d == 404) {
                b bVar2 = this.f55727i[this.f55728j.e(eVar.f67463d)];
                long h10 = bVar2.h();
                if (h10 != -1 && h10 != 0) {
                    if (((m) eVar).e() > (bVar2.f() + h10) - 1) {
                        this.f55732n = true;
                        return true;
                    }
                }
            }
        }
        b bVar3 = this.f55727i[this.f55728j.e(eVar.f67463d)];
        kn.b j10 = this.f55720b.j(bVar3.f55738b.f60857c);
        if (j10 != null && !bVar3.f55739c.equals(j10)) {
            return true;
        }
        b.a h11 = h(this.f55728j, bVar3.f55738b.f60857c);
        if ((!h11.a(2) && !h11.a(1)) || (c10 = bVar.c(h11, cVar)) == null || !h11.a(c10.f57117a)) {
            return false;
        }
        int i10 = c10.f57117a;
        if (i10 == 2) {
            q qVar = this.f55728j;
            return qVar.f(qVar.e(eVar.f67463d), c10.f57118b);
        } else if (i10 != 1) {
            return false;
        } else {
            this.f55720b.e(bVar3.f55739c, c10.f57118b);
            return true;
        }
    }

    @Override // tn.i
    public int getPreferredQueueSize(long j10, List<? extends m> list) {
        if (this.f55731m == null && this.f55728j.length() >= 2) {
            return this.f55728j.evaluateQueueSize(j10, list);
        }
        return list.size();
    }

    @Override // tn.i
    public void maybeThrowError() throws IOException {
        IOException iOException = this.f55731m;
        if (iOException == null) {
            this.f55719a.maybeThrowError();
            return;
        }
        throw iOException;
    }

    protected tn.e n(b bVar, en.d dVar, io.bidmachine.media3.common.a aVar, int i10, @Nullable Object obj, @Nullable i iVar, @Nullable i iVar2, @Nullable f.a aVar2) {
        i iVar3 = iVar;
        j jVar = bVar.f55738b;
        if (iVar3 != null) {
            i a10 = iVar3.a(iVar2, bVar.f55739c.f60801a);
            if (a10 != null) {
                iVar3 = a10;
            }
        } else {
            iVar3 = (i) cn.a.e(iVar2);
        }
        return new l(dVar, jn.f.a(jVar, bVar.f55739c.f60801a, iVar3, 0, ImmutableMap.q()), aVar, i10, obj, bVar.f55737a);
    }

    protected tn.e o(b bVar, en.d dVar, int i10, io.bidmachine.media3.common.a aVar, int i11, @Nullable Object obj, long j10, int i12, long j11, long j12, @Nullable f.a aVar2) {
        j jVar = bVar.f55738b;
        long k10 = bVar.k(j10);
        i l10 = bVar.l(j10);
        int i13 = 8;
        if (bVar.f55737a == null) {
            long i14 = bVar.i(j10);
            if (bVar.m(j10, j12)) {
                i13 = 0;
            }
            return new tn.o(dVar, jn.f.a(jVar, bVar.f55739c.f60801a, l10, i13, ImmutableMap.q()), aVar, i11, obj, k10, i14, j10, i10, aVar);
        }
        int i15 = 1;
        int i16 = 1;
        while (i15 < i12) {
            i a10 = l10.a(bVar.l(i15 + j10), bVar.f55739c.f60801a);
            if (a10 == null) {
                break;
            }
            i16++;
            i15++;
            l10 = a10;
        }
        long j13 = (i16 + j10) - 1;
        long i17 = bVar.i(j13);
        long j14 = bVar.f55741e;
        if (j14 == -9223372036854775807L || j14 > i17) {
            j14 = -9223372036854775807L;
        }
        if (bVar.m(j13, j12)) {
            i13 = 0;
        }
        en.g a11 = jn.f.a(jVar, bVar.f55739c.f60801a, l10, i13, ImmutableMap.q());
        long j15 = -jVar.f60858d;
        if (u.q(aVar.f55174o)) {
            j15 += k10;
        }
        return new tn.j(dVar, a11, aVar, i11, obj, k10, i17, j11, j14, j10, i16, j15, bVar.f55737a);
    }

    @Override // tn.i
    public void release() {
        for (b bVar : this.f55727i) {
            tn.f fVar = bVar.f55737a;
            if (fVar != null) {
                fVar.release();
            }
        }
    }
}
