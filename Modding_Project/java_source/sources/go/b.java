package go;

import ao.e;
import ao.q;
import ao.v;
import ao.y;
import java.io.IOException;
import java.util.Objects;
/* compiled from: FlacBinarySearchSeeker.java */
/* loaded from: classes8.dex */
final class b extends e {

    /* compiled from: FlacBinarySearchSeeker.java */
    /* renamed from: go.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    private static final class C0759b implements e.f {

        /* renamed from: a  reason: collision with root package name */
        private final y f52477a;

        /* renamed from: b  reason: collision with root package name */
        private final int f52478b;

        /* renamed from: c  reason: collision with root package name */
        private final v.a f52479c;

        private long c(q qVar) throws IOException {
            while (qVar.getPeekPosition() < qVar.getLength() - 6 && !v.h(qVar, this.f52477a, this.f52478b, this.f52479c)) {
                qVar.advancePeekPosition(1);
            }
            if (qVar.getPeekPosition() >= qVar.getLength() - 6) {
                qVar.advancePeekPosition((int) (qVar.getLength() - qVar.getPeekPosition()));
                return this.f52477a.f1960j;
            }
            return this.f52479c.f1947a;
        }

        @Override // ao.e.f
        public e.C0071e b(q qVar, long j10) throws IOException {
            long position = qVar.getPosition();
            long c10 = c(qVar);
            long peekPosition = qVar.getPeekPosition();
            qVar.advancePeekPosition(Math.max(6, this.f52477a.f1953c));
            long c11 = c(qVar);
            long peekPosition2 = qVar.getPeekPosition();
            if (c10 <= j10 && c11 > j10) {
                return e.C0071e.e(peekPosition);
            }
            if (c11 <= j10) {
                return e.C0071e.f(c11, peekPosition2);
            }
            return e.C0071e.d(c10, position);
        }

        private C0759b(y yVar, int i10) {
            this.f52477a = yVar;
            this.f52478b = i10;
            this.f52479c = new v.a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(final y yVar, int i10, long j10, long j11) {
        super(new e.d() { // from class: go.a
            @Override // ao.e.d
            public final long a(long j12) {
                return y.this.i(j12);
            }
        }, new C0759b(yVar, i10), yVar.f(), 0L, yVar.f1960j, j10, j11, yVar.d(), Math.max(6, yVar.f1953c));
        Objects.requireNonNull(yVar);
    }
}
