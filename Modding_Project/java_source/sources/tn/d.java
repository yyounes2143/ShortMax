package tn;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import ao.i0;
import ao.j0;
import ao.o0;
import ao.p;
import ao.q;
import ao.r;
import cn.b0;
import cn.m0;
import hn.b2;
import io.bidmachine.media3.common.a;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import tn.f;
import yo.r;
import zm.u;
/* compiled from: BundledChunkExtractor.java */
/* loaded from: classes8.dex */
public final class d implements r, f {
    @Deprecated

    /* renamed from: j  reason: collision with root package name */
    public static final b f67439j = new b();

    /* renamed from: k  reason: collision with root package name */
    private static final i0 f67440k = new i0();

    /* renamed from: a  reason: collision with root package name */
    private final p f67441a;

    /* renamed from: b  reason: collision with root package name */
    private final int f67442b;

    /* renamed from: c  reason: collision with root package name */
    private final io.bidmachine.media3.common.a f67443c;

    /* renamed from: d  reason: collision with root package name */
    private final SparseArray<a> f67444d = new SparseArray<>();

    /* renamed from: e  reason: collision with root package name */
    private boolean f67445e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private f.b f67446f;

    /* renamed from: g  reason: collision with root package name */
    private long f67447g;

    /* renamed from: h  reason: collision with root package name */
    private j0 f67448h;

    /* renamed from: i  reason: collision with root package name */
    private io.bidmachine.media3.common.a[] f67449i;

    /* compiled from: BundledChunkExtractor.java */
    /* loaded from: classes8.dex */
    private static final class a implements o0 {

        /* renamed from: a  reason: collision with root package name */
        private final int f67450a;

        /* renamed from: b  reason: collision with root package name */
        private final int f67451b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final io.bidmachine.media3.common.a f67452c;

        /* renamed from: d  reason: collision with root package name */
        private final ao.m f67453d = new ao.m();

        /* renamed from: e  reason: collision with root package name */
        public io.bidmachine.media3.common.a f67454e;

        /* renamed from: f  reason: collision with root package name */
        private o0 f67455f;

        /* renamed from: g  reason: collision with root package name */
        private long f67456g;

        public a(int i10, int i11, @Nullable io.bidmachine.media3.common.a aVar) {
            this.f67450a = i10;
            this.f67451b = i11;
            this.f67452c = aVar;
        }

        @Override // ao.o0
        public void c(long j10, int i10, int i11, int i12, @Nullable o0.a aVar) {
            long j11 = this.f67456g;
            if (j11 != -9223372036854775807L && j10 >= j11) {
                this.f67455f = this.f67453d;
            }
            ((o0) m0.i(this.f67455f)).c(j10, i10, i11, i12, aVar);
        }

        @Override // ao.o0
        public int e(zm.h hVar, int i10, boolean z10, int i11) throws IOException {
            return ((o0) m0.i(this.f67455f)).b(hVar, i10, z10);
        }

        @Override // ao.o0
        public void f(b0 b0Var, int i10, int i11) {
            ((o0) m0.i(this.f67455f)).a(b0Var, i10);
        }

        @Override // ao.o0
        public void g(io.bidmachine.media3.common.a aVar) {
            io.bidmachine.media3.common.a aVar2 = this.f67452c;
            if (aVar2 != null) {
                aVar = aVar.j(aVar2);
            }
            this.f67454e = aVar;
            ((o0) m0.i(this.f67455f)).g(this.f67454e);
        }

        public void h(@Nullable f.b bVar, long j10) {
            if (bVar == null) {
                this.f67455f = this.f67453d;
                return;
            }
            this.f67456g = j10;
            o0 track = bVar.track(this.f67450a, this.f67451b);
            this.f67455f = track;
            io.bidmachine.media3.common.a aVar = this.f67454e;
            if (aVar != null) {
                track.g(aVar);
            }
        }
    }

    /* compiled from: BundledChunkExtractor.java */
    /* loaded from: classes8.dex */
    public static final class b implements f.a {

        /* renamed from: a  reason: collision with root package name */
        private r.a f67457a = new yo.h();

        /* renamed from: b  reason: collision with root package name */
        private boolean f67458b;

        /* renamed from: c  reason: collision with root package name */
        private int f67459c;

        @Override // tn.f.a
        public io.bidmachine.media3.common.a d(io.bidmachine.media3.common.a aVar) {
            String str;
            if (this.f67458b && this.f67457a.a(aVar)) {
                a.b W = aVar.b().u0("application/x-media3-cues").W(this.f67457a.b(aVar));
                StringBuilder sb2 = new StringBuilder();
                sb2.append(aVar.f55174o);
                if (aVar.f55170k != null) {
                    str = " " + aVar.f55170k;
                } else {
                    str = "";
                }
                sb2.append(str);
                return W.S(sb2.toString()).y0(Long.MAX_VALUE).N();
            }
            return aVar;
        }

        @Override // tn.f.a
        @Nullable
        public f e(int i10, io.bidmachine.media3.common.a aVar, boolean z10, List<io.bidmachine.media3.common.a> list, @Nullable o0 o0Var, b2 b2Var) {
            int i11;
            p hVar;
            String str = aVar.f55173n;
            if (u.s(str)) {
                if (!this.f67458b) {
                    return null;
                }
                hVar = new yo.n(this.f67457a.c(aVar), aVar);
            } else {
                int i12 = 1;
                if (u.r(str)) {
                    if (!this.f67458b) {
                        i12 = 3;
                    }
                    hVar = new to.e(this.f67457a, i12);
                } else if (Objects.equals(str, "image/jpeg")) {
                    hVar = new jo.a(1);
                } else if (Objects.equals(str, "image/png")) {
                    hVar = new xo.a();
                } else {
                    if (z10) {
                        i11 = 4;
                    } else {
                        i11 = 0;
                    }
                    if (!this.f67458b) {
                        i11 |= 32;
                    }
                    hVar = new vo.h(this.f67457a, i11 | vo.h.j(this.f67459c), null, null, list, o0Var);
                }
            }
            return new d(hVar, i10, aVar);
        }

        @Override // tn.f.a
        /* renamed from: f */
        public b c(boolean z10) {
            this.f67458b = z10;
            return this;
        }

        @Override // tn.f.a
        /* renamed from: g */
        public b b(int i10) {
            this.f67459c = i10;
            return this;
        }

        @Override // tn.f.a
        /* renamed from: h */
        public b a(r.a aVar) {
            this.f67457a = (r.a) cn.a.e(aVar);
            return this;
        }
    }

    public d(p pVar, int i10, io.bidmachine.media3.common.a aVar) {
        this.f67441a = pVar;
        this.f67442b = i10;
        this.f67443c = aVar;
    }

    @Override // tn.f
    public boolean a(q qVar) throws IOException {
        boolean z10;
        int f10 = this.f67441a.f(qVar, f67440k);
        if (f10 != 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        if (f10 != 0) {
            return false;
        }
        return true;
    }

    @Override // tn.f
    @Nullable
    public ao.g b() {
        j0 j0Var = this.f67448h;
        if (j0Var instanceof ao.g) {
            return (ao.g) j0Var;
        }
        return null;
    }

    @Override // tn.f
    @Nullable
    public io.bidmachine.media3.common.a[] c() {
        return this.f67449i;
    }

    @Override // ao.r
    public void d(j0 j0Var) {
        this.f67448h = j0Var;
    }

    @Override // tn.f
    public void e(@Nullable f.b bVar, long j10, long j11) {
        this.f67446f = bVar;
        this.f67447g = j11;
        if (!this.f67445e) {
            this.f67441a.b(this);
            if (j10 != -9223372036854775807L) {
                this.f67441a.seek(0L, j10);
            }
            this.f67445e = true;
            return;
        }
        p pVar = this.f67441a;
        if (j10 == -9223372036854775807L) {
            j10 = 0;
        }
        pVar.seek(0L, j10);
        for (int i10 = 0; i10 < this.f67444d.size(); i10++) {
            this.f67444d.valueAt(i10).h(bVar, j11);
        }
    }

    @Override // ao.r
    public void endTracks() {
        io.bidmachine.media3.common.a[] aVarArr = new io.bidmachine.media3.common.a[this.f67444d.size()];
        for (int i10 = 0; i10 < this.f67444d.size(); i10++) {
            aVarArr[i10] = (io.bidmachine.media3.common.a) cn.a.i(this.f67444d.valueAt(i10).f67454e);
        }
        this.f67449i = aVarArr;
    }

    @Override // tn.f
    public void release() {
        this.f67441a.release();
    }

    @Override // ao.r
    public o0 track(int i10, int i11) {
        boolean z10;
        io.bidmachine.media3.common.a aVar;
        a aVar2 = this.f67444d.get(i10);
        if (aVar2 == null) {
            if (this.f67449i == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.g(z10);
            if (i11 == this.f67442b) {
                aVar = this.f67443c;
            } else {
                aVar = null;
            }
            aVar2 = new a(i10, i11, aVar);
            aVar2.h(this.f67446f, this.f67447g);
            this.f67444d.put(i10, aVar2);
        }
        return aVar2;
    }
}
