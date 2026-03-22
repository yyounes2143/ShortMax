package co;

import androidx.annotation.Nullable;
import ao.g0;
import ao.i0;
import ao.j0;
import ao.o0;
import ao.p;
import ao.q;
import cn.b0;
import com.google.common.collect.y;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import java.io.IOException;
import java.util.ArrayList;
import yo.r;
import yo.s;
import zm.u;
/* compiled from: AviExtractor.java */
/* loaded from: classes8.dex */
public final class b implements p {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f3676a;

    /* renamed from: b  reason: collision with root package name */
    private final c f3677b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f3678c;

    /* renamed from: d  reason: collision with root package name */
    private final r.a f3679d;

    /* renamed from: e  reason: collision with root package name */
    private int f3680e;

    /* renamed from: f  reason: collision with root package name */
    private ao.r f3681f;

    /* renamed from: g  reason: collision with root package name */
    private co.c f3682g;

    /* renamed from: h  reason: collision with root package name */
    private long f3683h;

    /* renamed from: i  reason: collision with root package name */
    private e[] f3684i;

    /* renamed from: j  reason: collision with root package name */
    private long f3685j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private e f3686k;

    /* renamed from: l  reason: collision with root package name */
    private int f3687l;

    /* renamed from: m  reason: collision with root package name */
    private long f3688m;

    /* renamed from: n  reason: collision with root package name */
    private long f3689n;

    /* renamed from: o  reason: collision with root package name */
    private int f3690o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f3691p;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AviExtractor.java */
    /* renamed from: co.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class C0093b implements j0 {

        /* renamed from: a  reason: collision with root package name */
        private final long f3692a;

        public C0093b(long j10) {
            this.f3692a = j10;
        }

        @Override // ao.j0
        public long getDurationUs() {
            return this.f3692a;
        }

        @Override // ao.j0
        public j0.a getSeekPoints(long j10) {
            j0.a i10 = b.this.f3684i[0].i(j10);
            for (int i11 = 1; i11 < b.this.f3684i.length; i11++) {
                j0.a i12 = b.this.f3684i[i11].i(j10);
                if (i12.f1856a.f1862b < i10.f1856a.f1862b) {
                    i10 = i12;
                }
            }
            return i10;
        }

        @Override // ao.j0
        public boolean isSeekable() {
            return true;
        }
    }

    /* compiled from: AviExtractor.java */
    /* loaded from: classes8.dex */
    private static class c {

        /* renamed from: a  reason: collision with root package name */
        public int f3694a;

        /* renamed from: b  reason: collision with root package name */
        public int f3695b;

        /* renamed from: c  reason: collision with root package name */
        public int f3696c;

        private c() {
        }

        public void a(b0 b0Var) {
            this.f3694a = b0Var.u();
            this.f3695b = b0Var.u();
            this.f3696c = 0;
        }

        public void b(b0 b0Var) throws ParserException {
            a(b0Var);
            if (this.f3694a == 1414744396) {
                this.f3696c = b0Var.u();
                return;
            }
            throw ParserException.b("LIST expected, found: " + this.f3694a, null);
        }
    }

    public b(int i10, r.a aVar) {
        this.f3679d = aVar;
        this.f3678c = (i10 & 1) == 0;
        this.f3676a = new b0(12);
        this.f3677b = new c();
        this.f3681f = new g0();
        this.f3684i = new e[0];
        this.f3688m = -1L;
        this.f3689n = -1L;
        this.f3687l = -1;
        this.f3683h = -9223372036854775807L;
    }

    private static void g(q qVar) throws IOException {
        if ((qVar.getPosition() & 1) == 1) {
            qVar.skipFully(1);
        }
    }

    @Nullable
    private e h(int i10) {
        e[] eVarArr;
        for (e eVar : this.f3684i) {
            if (eVar.j(i10)) {
                return eVar;
            }
        }
        return null;
    }

    private void i(b0 b0Var) throws IOException {
        f c10 = f.c(1819436136, b0Var);
        if (c10.getType() == 1819436136) {
            co.c cVar = (co.c) c10.b(co.c.class);
            if (cVar != null) {
                this.f3682g = cVar;
                this.f3683h = cVar.f3699c * cVar.f3697a;
                ArrayList arrayList = new ArrayList();
                y<co.a> it = c10.f3722a.iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    co.a next = it.next();
                    if (next.getType() == 1819440243) {
                        int i11 = i10 + 1;
                        e l10 = l((f) next, i10);
                        if (l10 != null) {
                            arrayList.add(l10);
                        }
                        i10 = i11;
                    }
                }
                this.f3684i = (e[]) arrayList.toArray(new e[0]);
                this.f3681f.endTracks();
                return;
            }
            throw ParserException.b("AviHeader not found", null);
        }
        throw ParserException.b("Unexpected header list type " + c10.getType(), null);
    }

    private void j(b0 b0Var) {
        int i10;
        long k10 = k(b0Var);
        while (true) {
            boolean z10 = false;
            if (b0Var.a() < 16) {
                break;
            }
            int u10 = b0Var.u();
            int u11 = b0Var.u();
            long u12 = b0Var.u() + k10;
            b0Var.X(4);
            e h10 = h(u10);
            if (h10 != null) {
                if ((u11 & 16) == 16) {
                    z10 = true;
                }
                h10.b(u12, z10);
            }
        }
        for (e eVar : this.f3684i) {
            eVar.c();
        }
        this.f3691p = true;
        if (this.f3684i.length == 0) {
            this.f3681f.d(new j0.b(this.f3683h));
        } else {
            this.f3681f.d(new C0093b(this.f3683h));
        }
    }

    private long k(b0 b0Var) {
        long j10 = 0;
        if (b0Var.a() < 16) {
            return 0L;
        }
        int f10 = b0Var.f();
        b0Var.X(8);
        long j11 = this.f3688m;
        if (b0Var.u() <= j11) {
            j10 = j11 + 8;
        }
        b0Var.W(f10);
        return j10;
    }

    @Nullable
    private e l(f fVar, int i10) {
        d dVar = (d) fVar.b(d.class);
        g gVar = (g) fVar.b(g.class);
        if (dVar == null) {
            cn.r.h("AviExtractor", "Missing Stream Header");
            return null;
        } else if (gVar == null) {
            cn.r.h("AviExtractor", "Missing Stream Format");
            return null;
        } else {
            long a10 = dVar.a();
            io.bidmachine.media3.common.a aVar = gVar.f3724a;
            a.b b10 = aVar.b();
            b10.e0(i10);
            int i11 = dVar.f3706f;
            if (i11 != 0) {
                b10.k0(i11);
            }
            h hVar = (h) fVar.b(h.class);
            if (hVar != null) {
                b10.h0(hVar.f3725a);
            }
            int k10 = u.k(aVar.f55174o);
            if (k10 != 1 && k10 != 2) {
                return null;
            }
            o0 track = this.f3681f.track(i10, k10);
            track.g(b10.N());
            track.d(a10);
            this.f3683h = Math.max(this.f3683h, a10);
            return new e(i10, dVar, track);
        }
    }

    private int m(q qVar) throws IOException {
        if (qVar.getPosition() >= this.f3689n) {
            return -1;
        }
        e eVar = this.f3686k;
        if (eVar != null) {
            if (eVar.m(qVar)) {
                this.f3686k = null;
            }
        } else {
            g(qVar);
            int i10 = 12;
            qVar.peekFully(this.f3676a.e(), 0, 12);
            this.f3676a.W(0);
            int u10 = this.f3676a.u();
            if (u10 == 1414744396) {
                this.f3676a.W(8);
                if (this.f3676a.u() != 1769369453) {
                    i10 = 8;
                }
                qVar.skipFully(i10);
                qVar.resetPeekPosition();
                return 0;
            }
            int u11 = this.f3676a.u();
            if (u10 == 1263424842) {
                this.f3685j = qVar.getPosition() + u11 + 8;
                return 0;
            }
            qVar.skipFully(8);
            qVar.resetPeekPosition();
            e h10 = h(u10);
            if (h10 == null) {
                this.f3685j = qVar.getPosition() + u11;
                return 0;
            }
            h10.n(u11);
            this.f3686k = h10;
        }
        return 0;
    }

    private boolean n(q qVar, i0 i0Var) throws IOException {
        boolean z10;
        if (this.f3685j != -1) {
            long position = qVar.getPosition();
            long j10 = this.f3685j;
            if (j10 >= position && j10 <= 262144 + position) {
                qVar.skipFully((int) (j10 - position));
            } else {
                i0Var.f1855a = j10;
                z10 = true;
                this.f3685j = -1L;
                return z10;
            }
        }
        z10 = false;
        this.f3685j = -1L;
        return z10;
    }

    @Override // ao.p
    public void b(ao.r rVar) {
        this.f3680e = 0;
        if (this.f3678c) {
            rVar = new s(rVar, this.f3679d);
        }
        this.f3681f = rVar;
        this.f3685j = -1L;
    }

    @Override // ao.p
    public boolean e(q qVar) throws IOException {
        qVar.peekFully(this.f3676a.e(), 0, 12);
        this.f3676a.W(0);
        if (this.f3676a.u() != 1179011410) {
            return false;
        }
        this.f3676a.X(4);
        if (this.f3676a.u() != 541677121) {
            return false;
        }
        return true;
    }

    @Override // ao.p
    public int f(q qVar, i0 i0Var) throws IOException {
        if (n(qVar, i0Var)) {
            return 1;
        }
        switch (this.f3680e) {
            case 0:
                if (e(qVar)) {
                    qVar.skipFully(12);
                    this.f3680e = 1;
                    return 0;
                }
                throw ParserException.b("AVI Header List not found", null);
            case 1:
                qVar.readFully(this.f3676a.e(), 0, 12);
                this.f3676a.W(0);
                this.f3677b.b(this.f3676a);
                c cVar = this.f3677b;
                if (cVar.f3696c == 1819436136) {
                    this.f3687l = cVar.f3695b;
                    this.f3680e = 2;
                    return 0;
                }
                throw ParserException.b("hdrl expected, found: " + this.f3677b.f3696c, null);
            case 2:
                int i10 = this.f3687l - 4;
                b0 b0Var = new b0(i10);
                qVar.readFully(b0Var.e(), 0, i10);
                i(b0Var);
                this.f3680e = 3;
                return 0;
            case 3:
                if (this.f3688m != -1) {
                    long position = qVar.getPosition();
                    long j10 = this.f3688m;
                    if (position != j10) {
                        this.f3685j = j10;
                        return 0;
                    }
                }
                qVar.peekFully(this.f3676a.e(), 0, 12);
                qVar.resetPeekPosition();
                this.f3676a.W(0);
                this.f3677b.a(this.f3676a);
                int u10 = this.f3676a.u();
                int i11 = this.f3677b.f3694a;
                if (i11 == 1179011410) {
                    qVar.skipFully(12);
                    return 0;
                } else if (i11 == 1414744396 && u10 == 1769369453) {
                    long position2 = qVar.getPosition();
                    this.f3688m = position2;
                    this.f3689n = position2 + this.f3677b.f3695b + 8;
                    if (!this.f3691p) {
                        if (((co.c) cn.a.e(this.f3682g)).a()) {
                            this.f3680e = 4;
                            this.f3685j = this.f3689n;
                            return 0;
                        }
                        this.f3681f.d(new j0.b(this.f3683h));
                        this.f3691p = true;
                    }
                    this.f3685j = qVar.getPosition() + 12;
                    this.f3680e = 6;
                    return 0;
                } else {
                    this.f3685j = qVar.getPosition() + this.f3677b.f3695b + 8;
                    return 0;
                }
            case 4:
                qVar.readFully(this.f3676a.e(), 0, 8);
                this.f3676a.W(0);
                int u11 = this.f3676a.u();
                int u12 = this.f3676a.u();
                if (u11 == 829973609) {
                    this.f3680e = 5;
                    this.f3690o = u12;
                } else {
                    this.f3685j = qVar.getPosition() + u12;
                }
                return 0;
            case 5:
                b0 b0Var2 = new b0(this.f3690o);
                qVar.readFully(b0Var2.e(), 0, this.f3690o);
                j(b0Var2);
                this.f3680e = 6;
                this.f3685j = this.f3688m;
                return 0;
            case 6:
                return m(qVar);
            default:
                throw new AssertionError();
        }
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        this.f3685j = -1L;
        this.f3686k = null;
        for (e eVar : this.f3684i) {
            eVar.o(j10);
        }
        if (j10 == 0) {
            if (this.f3684i.length == 0) {
                this.f3680e = 0;
                return;
            } else {
                this.f3680e = 3;
                return;
            }
        }
        this.f3680e = 6;
    }

    @Override // ao.p
    public void release() {
    }
}
