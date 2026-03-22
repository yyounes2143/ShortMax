package v5;

import androidx.annotation.Nullable;
import b7.g0;
import b7.q;
import b7.u;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.v0;
import com.google.common.collect.y;
import java.io.IOException;
import java.util.ArrayList;
import t5.b0;
import t5.i;
import t5.k;
import t5.l;
import t5.m;
import t5.z;
/* compiled from: AviExtractor.java */
/* loaded from: classes4.dex */
public final class b implements k {

    /* renamed from: c  reason: collision with root package name */
    private int f68675c;

    /* renamed from: e  reason: collision with root package name */
    private v5.c f68677e;

    /* renamed from: h  reason: collision with root package name */
    private long f68680h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private e f68681i;

    /* renamed from: m  reason: collision with root package name */
    private int f68685m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f68686n;

    /* renamed from: a  reason: collision with root package name */
    private final g0 f68673a = new g0(12);

    /* renamed from: b  reason: collision with root package name */
    private final c f68674b = new c();

    /* renamed from: d  reason: collision with root package name */
    private m f68676d = new i();

    /* renamed from: g  reason: collision with root package name */
    private e[] f68679g = new e[0];

    /* renamed from: k  reason: collision with root package name */
    private long f68683k = -1;

    /* renamed from: l  reason: collision with root package name */
    private long f68684l = -1;

    /* renamed from: j  reason: collision with root package name */
    private int f68682j = -1;

    /* renamed from: f  reason: collision with root package name */
    private long f68678f = -9223372036854775807L;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AviExtractor.java */
    /* renamed from: v5.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0947b implements z {

        /* renamed from: a  reason: collision with root package name */
        private final long f68687a;

        public C0947b(long j10) {
            this.f68687a = j10;
        }

        @Override // t5.z
        public long getDurationUs() {
            return this.f68687a;
        }

        @Override // t5.z
        public z.a getSeekPoints(long j10) {
            z.a i10 = b.this.f68679g[0].i(j10);
            for (int i11 = 1; i11 < b.this.f68679g.length; i11++) {
                z.a i12 = b.this.f68679g[i11].i(j10);
                if (i12.f67205a.f67099b < i10.f67205a.f67099b) {
                    i10 = i12;
                }
            }
            return i10;
        }

        @Override // t5.z
        public boolean isSeekable() {
            return true;
        }
    }

    /* compiled from: AviExtractor.java */
    /* loaded from: classes4.dex */
    private static class c {

        /* renamed from: a  reason: collision with root package name */
        public int f68689a;

        /* renamed from: b  reason: collision with root package name */
        public int f68690b;

        /* renamed from: c  reason: collision with root package name */
        public int f68691c;

        private c() {
        }

        public void a(g0 g0Var) {
            this.f68689a = g0Var.q();
            this.f68690b = g0Var.q();
            this.f68691c = 0;
        }

        public void b(g0 g0Var) throws ParserException {
            a(g0Var);
            if (this.f68689a == 1414744396) {
                this.f68691c = g0Var.q();
                return;
            }
            throw ParserException.b("LIST expected, found: " + this.f68689a, null);
        }
    }

    private static void e(l lVar) throws IOException {
        if ((lVar.getPosition() & 1) == 1) {
            lVar.skipFully(1);
        }
    }

    @Nullable
    private e f(int i10) {
        e[] eVarArr;
        for (e eVar : this.f68679g) {
            if (eVar.j(i10)) {
                return eVar;
            }
        }
        return null;
    }

    private void g(g0 g0Var) throws IOException {
        f c10 = f.c(1819436136, g0Var);
        if (c10.getType() == 1819436136) {
            v5.c cVar = (v5.c) c10.b(v5.c.class);
            if (cVar != null) {
                this.f68677e = cVar;
                this.f68678f = cVar.f68694c * cVar.f68692a;
                ArrayList arrayList = new ArrayList();
                y<v5.a> it = c10.f68714a.iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    v5.a next = it.next();
                    if (next.getType() == 1819440243) {
                        int i11 = i10 + 1;
                        e j10 = j((f) next, i10);
                        if (j10 != null) {
                            arrayList.add(j10);
                        }
                        i10 = i11;
                    }
                }
                this.f68679g = (e[]) arrayList.toArray(new e[0]);
                this.f68676d.endTracks();
                return;
            }
            throw ParserException.b("AviHeader not found", null);
        }
        throw ParserException.b("Unexpected header list type " + c10.getType(), null);
    }

    private void h(g0 g0Var) {
        long i10 = i(g0Var);
        while (g0Var.a() >= 16) {
            int q10 = g0Var.q();
            int q11 = g0Var.q();
            long q12 = g0Var.q() + i10;
            g0Var.q();
            e f10 = f(q10);
            if (f10 != null) {
                if ((q11 & 16) == 16) {
                    f10.b(q12);
                }
                f10.k();
            }
        }
        for (e eVar : this.f68679g) {
            eVar.c();
        }
        this.f68686n = true;
        this.f68676d.c(new C0947b(this.f68678f));
    }

    private long i(g0 g0Var) {
        long j10 = 0;
        if (g0Var.a() < 16) {
            return 0L;
        }
        int e10 = g0Var.e();
        g0Var.Q(8);
        long j11 = this.f68683k;
        if (g0Var.q() <= j11) {
            j10 = j11 + 8;
        }
        g0Var.P(e10);
        return j10;
    }

    @Nullable
    private e j(f fVar, int i10) {
        d dVar = (d) fVar.b(d.class);
        g gVar = (g) fVar.b(g.class);
        if (dVar == null) {
            q.i("AviExtractor", "Missing Stream Header");
            return null;
        } else if (gVar == null) {
            q.i("AviExtractor", "Missing Stream Format");
            return null;
        } else {
            long a10 = dVar.a();
            v0 v0Var = gVar.f68716a;
            v0.b b10 = v0Var.b();
            b10.R(i10);
            int i11 = dVar.f68701f;
            if (i11 != 0) {
                b10.W(i11);
            }
            h hVar = (h) fVar.b(h.class);
            if (hVar != null) {
                b10.U(hVar.f68717a);
            }
            int i12 = u.i(v0Var.f19157l);
            if (i12 != 1 && i12 != 2) {
                return null;
            }
            b0 track = this.f68676d.track(i10, i12);
            track.b(b10.E());
            e eVar = new e(i10, i12, a10, dVar.f68700e, track);
            this.f68678f = a10;
            return eVar;
        }
    }

    private int k(l lVar) throws IOException {
        if (lVar.getPosition() >= this.f68684l) {
            return -1;
        }
        e eVar = this.f68681i;
        if (eVar != null) {
            if (eVar.m(lVar)) {
                this.f68681i = null;
            }
        } else {
            e(lVar);
            int i10 = 12;
            lVar.peekFully(this.f68673a.d(), 0, 12);
            this.f68673a.P(0);
            int q10 = this.f68673a.q();
            if (q10 == 1414744396) {
                this.f68673a.P(8);
                if (this.f68673a.q() != 1769369453) {
                    i10 = 8;
                }
                lVar.skipFully(i10);
                lVar.resetPeekPosition();
                return 0;
            }
            int q11 = this.f68673a.q();
            if (q10 == 1263424842) {
                this.f68680h = lVar.getPosition() + q11 + 8;
                return 0;
            }
            lVar.skipFully(8);
            lVar.resetPeekPosition();
            e f10 = f(q10);
            if (f10 == null) {
                this.f68680h = lVar.getPosition() + q11;
                return 0;
            }
            f10.n(q11);
            this.f68681i = f10;
        }
        return 0;
    }

    private boolean l(l lVar, t5.y yVar) throws IOException {
        boolean z10;
        if (this.f68680h != -1) {
            long position = lVar.getPosition();
            long j10 = this.f68680h;
            if (j10 >= position && j10 <= 262144 + position) {
                lVar.skipFully((int) (j10 - position));
            } else {
                yVar.f67204a = j10;
                z10 = true;
                this.f68680h = -1L;
                return z10;
            }
        }
        z10 = false;
        this.f68680h = -1L;
        return z10;
    }

    @Override // t5.k
    public int b(l lVar, t5.y yVar) throws IOException {
        if (l(lVar, yVar)) {
            return 1;
        }
        switch (this.f68675c) {
            case 0:
                if (c(lVar)) {
                    lVar.skipFully(12);
                    this.f68675c = 1;
                    return 0;
                }
                throw ParserException.b("AVI Header List not found", null);
            case 1:
                lVar.readFully(this.f68673a.d(), 0, 12);
                this.f68673a.P(0);
                this.f68674b.b(this.f68673a);
                c cVar = this.f68674b;
                if (cVar.f68691c == 1819436136) {
                    this.f68682j = cVar.f68690b;
                    this.f68675c = 2;
                    return 0;
                }
                throw ParserException.b("hdrl expected, found: " + this.f68674b.f68691c, null);
            case 2:
                int i10 = this.f68682j - 4;
                g0 g0Var = new g0(i10);
                lVar.readFully(g0Var.d(), 0, i10);
                g(g0Var);
                this.f68675c = 3;
                return 0;
            case 3:
                if (this.f68683k != -1) {
                    long position = lVar.getPosition();
                    long j10 = this.f68683k;
                    if (position != j10) {
                        this.f68680h = j10;
                        return 0;
                    }
                }
                lVar.peekFully(this.f68673a.d(), 0, 12);
                lVar.resetPeekPosition();
                this.f68673a.P(0);
                this.f68674b.a(this.f68673a);
                int q10 = this.f68673a.q();
                int i11 = this.f68674b.f68689a;
                if (i11 == 1179011410) {
                    lVar.skipFully(12);
                    return 0;
                } else if (i11 == 1414744396 && q10 == 1769369453) {
                    long position2 = lVar.getPosition();
                    this.f68683k = position2;
                    this.f68684l = position2 + this.f68674b.f68690b + 8;
                    if (!this.f68686n) {
                        if (((v5.c) b7.a.e(this.f68677e)).a()) {
                            this.f68675c = 4;
                            this.f68680h = this.f68684l;
                            return 0;
                        }
                        this.f68676d.c(new z.b(this.f68678f));
                        this.f68686n = true;
                    }
                    this.f68680h = lVar.getPosition() + 12;
                    this.f68675c = 6;
                    return 0;
                } else {
                    this.f68680h = lVar.getPosition() + this.f68674b.f68690b + 8;
                    return 0;
                }
            case 4:
                lVar.readFully(this.f68673a.d(), 0, 8);
                this.f68673a.P(0);
                int q11 = this.f68673a.q();
                int q12 = this.f68673a.q();
                if (q11 == 829973609) {
                    this.f68675c = 5;
                    this.f68685m = q12;
                } else {
                    this.f68680h = lVar.getPosition() + q12;
                }
                return 0;
            case 5:
                g0 g0Var2 = new g0(this.f68685m);
                lVar.readFully(g0Var2.d(), 0, this.f68685m);
                h(g0Var2);
                this.f68675c = 6;
                this.f68680h = this.f68683k;
                return 0;
            case 6:
                return k(lVar);
            default:
                throw new AssertionError();
        }
    }

    @Override // t5.k
    public boolean c(l lVar) throws IOException {
        lVar.peekFully(this.f68673a.d(), 0, 12);
        this.f68673a.P(0);
        if (this.f68673a.q() != 1179011410) {
            return false;
        }
        this.f68673a.Q(4);
        if (this.f68673a.q() != 541677121) {
            return false;
        }
        return true;
    }

    @Override // t5.k
    public void d(m mVar) {
        this.f68675c = 0;
        this.f68676d = mVar;
        this.f68680h = -1L;
    }

    @Override // t5.k
    public void seek(long j10, long j11) {
        this.f68680h = -1L;
        this.f68681i = null;
        for (e eVar : this.f68679g) {
            eVar.o(j10);
        }
        if (j10 == 0) {
            if (this.f68679g.length == 0) {
                this.f68675c = 0;
                return;
            } else {
                this.f68675c = 3;
                return;
            }
        }
        this.f68675c = 6;
    }

    @Override // t5.k
    public void release() {
    }
}
