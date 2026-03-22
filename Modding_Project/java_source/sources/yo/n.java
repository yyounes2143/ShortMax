package yo;

import androidx.annotation.Nullable;
import ao.e0;
import ao.i0;
import ao.o0;
import cn.b0;
import cn.m0;
import com.google.common.primitives.Ints;
import io.bidmachine.media3.common.ParserException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import yo.r;
/* compiled from: SubtitleExtractor.java */
/* loaded from: classes8.dex */
public class n implements ao.p {

    /* renamed from: a  reason: collision with root package name */
    private final r f71083a;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final io.bidmachine.media3.common.a f71085c;

    /* renamed from: d  reason: collision with root package name */
    private final List<b> f71086d;

    /* renamed from: g  reason: collision with root package name */
    private o0 f71089g;

    /* renamed from: h  reason: collision with root package name */
    private int f71090h;

    /* renamed from: i  reason: collision with root package name */
    private int f71091i;

    /* renamed from: j  reason: collision with root package name */
    private long[] f71092j;

    /* renamed from: k  reason: collision with root package name */
    private long f71093k;

    /* renamed from: b  reason: collision with root package name */
    private final d f71084b = new d();

    /* renamed from: f  reason: collision with root package name */
    private byte[] f71088f = m0.f3619f;

    /* renamed from: e  reason: collision with root package name */
    private final b0 f71087e = new b0();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SubtitleExtractor.java */
    /* loaded from: classes8.dex */
    public static class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        private final long f71094a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f71095b;

        @Override // java.lang.Comparable
        /* renamed from: c */
        public int compareTo(b bVar) {
            return Long.compare(this.f71094a, bVar.f71094a);
        }

        private b(long j10, byte[] bArr) {
            this.f71094a = j10;
            this.f71095b = bArr;
        }
    }

    public n(r rVar, @Nullable io.bidmachine.media3.common.a aVar) {
        io.bidmachine.media3.common.a aVar2;
        this.f71083a = rVar;
        if (aVar != null) {
            aVar2 = aVar.b().u0("application/x-media3-cues").S(aVar.f55174o).W(rVar.b()).N();
        } else {
            aVar2 = null;
        }
        this.f71085c = aVar2;
        this.f71086d = new ArrayList();
        this.f71091i = 0;
        this.f71092j = m0.f3620g;
        this.f71093k = -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(e eVar) {
        b bVar = new b(eVar.f71074b, this.f71084b.a(eVar.f71073a, eVar.f71075c));
        this.f71086d.add(bVar);
        long j10 = this.f71093k;
        if (j10 == -9223372036854775807L || eVar.f71074b >= j10) {
            l(bVar);
        }
    }

    private void h() throws IOException {
        r.b b10;
        try {
            long j10 = this.f71093k;
            if (j10 != -9223372036854775807L) {
                b10 = r.b.c(j10);
            } else {
                b10 = r.b.b();
            }
            this.f71083a.a(this.f71088f, 0, this.f71090h, b10, new cn.l() { // from class: yo.m
                @Override // cn.l
                public final void accept(Object obj) {
                    n.this.g((e) obj);
                }
            });
            Collections.sort(this.f71086d);
            this.f71092j = new long[this.f71086d.size()];
            for (int i10 = 0; i10 < this.f71086d.size(); i10++) {
                this.f71092j[i10] = this.f71086d.get(i10).f71094a;
            }
            this.f71088f = m0.f3619f;
        } catch (RuntimeException e10) {
            throw ParserException.b("SubtitleParser failed.", e10);
        }
    }

    private boolean i(ao.q qVar) throws IOException {
        byte[] bArr = this.f71088f;
        if (bArr.length == this.f71090h) {
            this.f71088f = Arrays.copyOf(bArr, bArr.length + 1024);
        }
        byte[] bArr2 = this.f71088f;
        int i10 = this.f71090h;
        int read = qVar.read(bArr2, i10, bArr2.length - i10);
        if (read != -1) {
            this.f71090h += read;
        }
        long length = qVar.getLength();
        if ((length != -1 && this.f71090h == length) || read == -1) {
            return true;
        }
        return false;
    }

    private boolean j(ao.q qVar) throws IOException {
        int i10;
        if (qVar.getLength() != -1) {
            i10 = Ints.d(qVar.getLength());
        } else {
            i10 = 1024;
        }
        if (qVar.skip(i10) == -1) {
            return true;
        }
        return false;
    }

    private void k() {
        int h10;
        long j10 = this.f71093k;
        if (j10 == -9223372036854775807L) {
            h10 = 0;
        } else {
            h10 = m0.h(this.f71092j, j10, true, true);
        }
        while (h10 < this.f71086d.size()) {
            l(this.f71086d.get(h10));
            h10++;
        }
    }

    private void l(b bVar) {
        cn.a.i(this.f71089g);
        int length = bVar.f71095b.length;
        this.f71087e.T(bVar.f71095b);
        this.f71089g.a(this.f71087e, length);
        this.f71089g.c(bVar.f71094a, 1, length, 0, null);
    }

    @Override // ao.p
    public void b(ao.r rVar) {
        boolean z10;
        if (this.f71091i == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        o0 track = rVar.track(0, 3);
        this.f71089g = track;
        io.bidmachine.media3.common.a aVar = this.f71085c;
        if (aVar != null) {
            track.g(aVar);
            rVar.endTracks();
            rVar.d(new e0(new long[]{0}, new long[]{0}, -9223372036854775807L));
        }
        this.f71091i = 1;
    }

    @Override // ao.p
    public boolean e(ao.q qVar) throws IOException {
        return true;
    }

    @Override // ao.p
    public int f(ao.q qVar, i0 i0Var) throws IOException {
        boolean z10;
        int i10;
        int i11 = this.f71091i;
        if (i11 != 0 && i11 != 5) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        if (this.f71091i == 1) {
            if (qVar.getLength() != -1) {
                i10 = Ints.d(qVar.getLength());
            } else {
                i10 = 1024;
            }
            if (i10 > this.f71088f.length) {
                this.f71088f = new byte[i10];
            }
            this.f71090h = 0;
            this.f71091i = 2;
        }
        if (this.f71091i == 2 && i(qVar)) {
            h();
            this.f71091i = 4;
        }
        if (this.f71091i == 3 && j(qVar)) {
            k();
            this.f71091i = 4;
        }
        if (this.f71091i != 4) {
            return 0;
        }
        return -1;
    }

    @Override // ao.p
    public void release() {
        if (this.f71091i == 5) {
            return;
        }
        this.f71083a.reset();
        this.f71091i = 5;
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        boolean z10;
        int i10 = this.f71091i;
        if (i10 != 0 && i10 != 5) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        this.f71093k = j11;
        if (this.f71091i == 2) {
            this.f71091i = 1;
        }
        if (this.f71091i == 4) {
            this.f71091i = 3;
        }
    }
}
