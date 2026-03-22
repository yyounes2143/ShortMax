package yo;

import com.google.common.collect.ImmutableList;
import java.util.Objects;
/* compiled from: SubtitleParser.java */
/* loaded from: classes8.dex */
public interface r {

    /* compiled from: SubtitleParser.java */
    /* loaded from: classes8.dex */
    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f71100a = new C0978a();

        /* compiled from: SubtitleParser.java */
        /* renamed from: yo.r$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        class C0978a implements a {
            C0978a() {
            }

            @Override // yo.r.a
            public boolean a(io.bidmachine.media3.common.a aVar) {
                return false;
            }

            @Override // yo.r.a
            public int b(io.bidmachine.media3.common.a aVar) {
                return 1;
            }

            @Override // yo.r.a
            public r c(io.bidmachine.media3.common.a aVar) {
                throw new IllegalStateException("This SubtitleParser.Factory doesn't support any formats.");
            }
        }

        boolean a(io.bidmachine.media3.common.a aVar);

        int b(io.bidmachine.media3.common.a aVar);

        r c(io.bidmachine.media3.common.a aVar);
    }

    /* compiled from: SubtitleParser.java */
    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: c  reason: collision with root package name */
        private static final b f71101c = new b(-9223372036854775807L, false);

        /* renamed from: a  reason: collision with root package name */
        public final long f71102a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f71103b;

        private b(long j10, boolean z10) {
            this.f71102a = j10;
            this.f71103b = z10;
        }

        public static b b() {
            return f71101c;
        }

        public static b c(long j10) {
            return new b(j10, true);
        }
    }

    void a(byte[] bArr, int i10, int i11, b bVar, cn.l<e> lVar);

    int b();

    default k c(byte[] bArr, int i10, int i11) {
        final ImmutableList.a r10 = ImmutableList.r();
        b bVar = b.f71101c;
        Objects.requireNonNull(r10);
        a(bArr, i10, i11, bVar, new cn.l() { // from class: yo.q
            @Override // cn.l
            public final void accept(Object obj) {
                ImmutableList.a.this.a((e) obj);
            }
        });
        return new g(r10.k());
    }

    default void reset() {
    }
}
