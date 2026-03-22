package w5;

import java.io.IOException;
import java.util.Objects;
import t5.a;
import t5.l;
import t5.q;
import t5.t;
/* compiled from: FlacBinarySearchSeeker.java */
/* loaded from: classes4.dex */
final class b extends t5.a {

    /* compiled from: FlacBinarySearchSeeker.java */
    /* renamed from: w5.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private static final class C0958b implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final t f69634a;

        /* renamed from: b  reason: collision with root package name */
        private final int f69635b;

        /* renamed from: c  reason: collision with root package name */
        private final q.a f69636c;

        private long c(l lVar) throws IOException {
            while (lVar.getPeekPosition() < lVar.getLength() - 6 && !q.h(lVar, this.f69634a, this.f69635b, this.f69636c)) {
                lVar.advancePeekPosition(1);
            }
            if (lVar.getPeekPosition() >= lVar.getLength() - 6) {
                lVar.advancePeekPosition((int) (lVar.getLength() - lVar.getPeekPosition()));
                return this.f69634a.f67190j;
            }
            return this.f69636c.f67177a;
        }

        @Override // t5.a.f
        public a.e b(l lVar, long j10) throws IOException {
            long position = lVar.getPosition();
            long c10 = c(lVar);
            long peekPosition = lVar.getPeekPosition();
            lVar.advancePeekPosition(Math.max(6, this.f69634a.f67183c));
            long c11 = c(lVar);
            long peekPosition2 = lVar.getPeekPosition();
            if (c10 <= j10 && c11 > j10) {
                return a.e.e(peekPosition);
            }
            if (c11 <= j10) {
                return a.e.f(c11, peekPosition2);
            }
            return a.e.d(c10, position);
        }

        private C0958b(t tVar, int i10) {
            this.f69634a = tVar;
            this.f69635b = i10;
            this.f69636c = new q.a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(final t tVar, int i10, long j10, long j11) {
        super(new a.d() { // from class: w5.a
            @Override // t5.a.d
            public final long a(long j12) {
                return t.this.i(j12);
            }
        }, new C0958b(tVar, i10), tVar.f(), 0L, tVar.f67190j, j10, j11, tVar.d(), Math.max(6, tVar.f67183c));
        Objects.requireNonNull(tVar);
    }
}
