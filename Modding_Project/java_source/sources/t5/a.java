package t5;

import androidx.annotation.Nullable;
import b7.s0;
import java.io.IOException;
import t5.z;
/* compiled from: BinarySearchSeeker.java */
/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected final C0928a f67074a;

    /* renamed from: b  reason: collision with root package name */
    protected final f f67075b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    protected c f67076c;

    /* renamed from: d  reason: collision with root package name */
    private final int f67077d;

    /* compiled from: BinarySearchSeeker.java */
    /* renamed from: t5.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0928a implements z {

        /* renamed from: a  reason: collision with root package name */
        private final d f67078a;

        /* renamed from: b  reason: collision with root package name */
        private final long f67079b;

        /* renamed from: c  reason: collision with root package name */
        private final long f67080c;

        /* renamed from: d  reason: collision with root package name */
        private final long f67081d;

        /* renamed from: e  reason: collision with root package name */
        private final long f67082e;

        /* renamed from: f  reason: collision with root package name */
        private final long f67083f;

        /* renamed from: g  reason: collision with root package name */
        private final long f67084g;

        public C0928a(d dVar, long j10, long j11, long j12, long j13, long j14, long j15) {
            this.f67078a = dVar;
            this.f67079b = j10;
            this.f67080c = j11;
            this.f67081d = j12;
            this.f67082e = j13;
            this.f67083f = j14;
            this.f67084g = j15;
        }

        public long g(long j10) {
            return this.f67078a.a(j10);
        }

        @Override // t5.z
        public long getDurationUs() {
            return this.f67079b;
        }

        @Override // t5.z
        public z.a getSeekPoints(long j10) {
            return new z.a(new a0(j10, c.h(this.f67078a.a(j10), this.f67080c, this.f67081d, this.f67082e, this.f67083f, this.f67084g)));
        }

        @Override // t5.z
        public boolean isSeekable() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final long f67085a;

        /* renamed from: b  reason: collision with root package name */
        private final long f67086b;

        /* renamed from: c  reason: collision with root package name */
        private final long f67087c;

        /* renamed from: d  reason: collision with root package name */
        private long f67088d;

        /* renamed from: e  reason: collision with root package name */
        private long f67089e;

        /* renamed from: f  reason: collision with root package name */
        private long f67090f;

        /* renamed from: g  reason: collision with root package name */
        private long f67091g;

        /* renamed from: h  reason: collision with root package name */
        private long f67092h;

        protected c(long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
            this.f67085a = j10;
            this.f67086b = j11;
            this.f67088d = j12;
            this.f67089e = j13;
            this.f67090f = j14;
            this.f67091g = j15;
            this.f67087c = j16;
            this.f67092h = h(j11, j12, j13, j14, j15, j16);
        }

        protected static long h(long j10, long j11, long j12, long j13, long j14, long j15) {
            if (j13 + 1 < j14 && j11 + 1 < j12) {
                long j16 = ((float) (j10 - j11)) * (((float) (j14 - j13)) / ((float) (j12 - j11)));
                return s0.q(((j16 + j13) - j15) - (j16 / 20), j13, j14 - 1);
            }
            return j13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long i() {
            return this.f67091g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long j() {
            return this.f67090f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long k() {
            return this.f67092h;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long l() {
            return this.f67085a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long m() {
            return this.f67086b;
        }

        private void n() {
            this.f67092h = h(this.f67086b, this.f67088d, this.f67089e, this.f67090f, this.f67091g, this.f67087c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o(long j10, long j11) {
            this.f67089e = j10;
            this.f67091g = j11;
            n();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p(long j10, long j11) {
            this.f67088d = j10;
            this.f67090f = j11;
            n();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes4.dex */
    public interface d {
        long a(long j10);
    }

    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes4.dex */
    public static final class e {

        /* renamed from: d  reason: collision with root package name */
        public static final e f67093d = new e(-3, -9223372036854775807L, -1);

        /* renamed from: a  reason: collision with root package name */
        private final int f67094a;

        /* renamed from: b  reason: collision with root package name */
        private final long f67095b;

        /* renamed from: c  reason: collision with root package name */
        private final long f67096c;

        private e(int i10, long j10, long j11) {
            this.f67094a = i10;
            this.f67095b = j10;
            this.f67096c = j11;
        }

        public static e d(long j10, long j11) {
            return new e(-1, j10, j11);
        }

        public static e e(long j10) {
            return new e(0, -9223372036854775807L, j10);
        }

        public static e f(long j10, long j11) {
            return new e(-2, j10, j11);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(d dVar, f fVar, long j10, long j11, long j12, long j13, long j14, long j15, int i10) {
        this.f67075b = fVar;
        this.f67077d = i10;
        this.f67074a = new C0928a(dVar, j10, j11, j12, j13, j14, j15);
    }

    protected c a(long j10) {
        return new c(j10, this.f67074a.g(j10), this.f67074a.f67080c, this.f67074a.f67081d, this.f67074a.f67082e, this.f67074a.f67083f, this.f67074a.f67084g);
    }

    public final z b() {
        return this.f67074a;
    }

    public int c(l lVar, y yVar) throws IOException {
        while (true) {
            c cVar = (c) b7.a.i(this.f67076c);
            long j10 = cVar.j();
            long i10 = cVar.i();
            long k10 = cVar.k();
            if (i10 - j10 <= this.f67077d) {
                e(false, j10);
                return g(lVar, j10, yVar);
            } else if (!i(lVar, k10)) {
                return g(lVar, k10, yVar);
            } else {
                lVar.resetPeekPosition();
                e b10 = this.f67075b.b(lVar, cVar.m());
                int i11 = b10.f67094a;
                if (i11 != -3) {
                    if (i11 == -2) {
                        cVar.p(b10.f67095b, b10.f67096c);
                    } else if (i11 == -1) {
                        cVar.o(b10.f67095b, b10.f67096c);
                    } else if (i11 == 0) {
                        i(lVar, b10.f67096c);
                        e(true, b10.f67096c);
                        return g(lVar, b10.f67096c, yVar);
                    } else {
                        throw new IllegalStateException("Invalid case");
                    }
                } else {
                    e(false, k10);
                    return g(lVar, k10, yVar);
                }
            }
        }
    }

    public final boolean d() {
        if (this.f67076c != null) {
            return true;
        }
        return false;
    }

    protected final void e(boolean z10, long j10) {
        this.f67076c = null;
        this.f67075b.a();
        f(z10, j10);
    }

    protected final int g(l lVar, long j10, y yVar) {
        if (j10 == lVar.getPosition()) {
            return 0;
        }
        yVar.f67204a = j10;
        return 1;
    }

    public final void h(long j10) {
        c cVar = this.f67076c;
        if (cVar != null && cVar.l() == j10) {
            return;
        }
        this.f67076c = a(j10);
    }

    protected final boolean i(l lVar, long j10) throws IOException {
        long position = j10 - lVar.getPosition();
        if (position >= 0 && position <= 262144) {
            lVar.skipFully((int) position);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes4.dex */
    public interface f {
        e b(l lVar, long j10) throws IOException;

        default void a() {
        }
    }

    /* compiled from: BinarySearchSeeker.java */
    /* loaded from: classes4.dex */
    public static final class b implements d {
        @Override // t5.a.d
        public long a(long j10) {
            return j10;
        }
    }

    protected void f(boolean z10, long j10) {
    }
}
