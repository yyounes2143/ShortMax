package p6;

import b7.g0;
import b7.s0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.v0;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;
import t5.b0;
import t5.x;
import t5.y;
/* compiled from: SubtitleExtractor.java */
/* loaded from: classes4.dex */
public class l implements t5.k {

    /* renamed from: a  reason: collision with root package name */
    private final j f64784a;

    /* renamed from: d  reason: collision with root package name */
    private final v0 f64787d;

    /* renamed from: g  reason: collision with root package name */
    private t5.m f64790g;

    /* renamed from: h  reason: collision with root package name */
    private b0 f64791h;

    /* renamed from: i  reason: collision with root package name */
    private int f64792i;

    /* renamed from: b  reason: collision with root package name */
    private final d f64785b = new d();

    /* renamed from: c  reason: collision with root package name */
    private final g0 f64786c = new g0();

    /* renamed from: e  reason: collision with root package name */
    private final List<Long> f64788e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private final List<g0> f64789f = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    private int f64793j = 0;

    /* renamed from: k  reason: collision with root package name */
    private long f64794k = -9223372036854775807L;

    public l(j jVar, v0 v0Var) {
        this.f64784a = jVar;
        this.f64787d = v0Var.b().e0("text/x-exoplayer-cues").I(v0Var.f19157l).E();
    }

    private void a() throws IOException {
        try {
            m dequeueInputBuffer = this.f64784a.dequeueInputBuffer();
            while (dequeueInputBuffer == null) {
                Thread.sleep(5L);
                dequeueInputBuffer = this.f64784a.dequeueInputBuffer();
            }
            dequeueInputBuffer.m(this.f64792i);
            dequeueInputBuffer.f17473c.put(this.f64786c.d(), 0, this.f64792i);
            dequeueInputBuffer.f17473c.limit(this.f64792i);
            this.f64784a.queueInputBuffer(dequeueInputBuffer);
            n dequeueOutputBuffer = this.f64784a.dequeueOutputBuffer();
            while (dequeueOutputBuffer == null) {
                Thread.sleep(5L);
                dequeueOutputBuffer = this.f64784a.dequeueOutputBuffer();
            }
            for (int i10 = 0; i10 < dequeueOutputBuffer.getEventTimeCount(); i10++) {
                byte[] a10 = this.f64785b.a(dequeueOutputBuffer.getCues(dequeueOutputBuffer.getEventTime(i10)));
                this.f64788e.add(Long.valueOf(dequeueOutputBuffer.getEventTime(i10)));
                this.f64789f.add(new g0(a10));
            }
            dequeueOutputBuffer.l();
        } catch (SubtitleDecoderException e10) {
            throw ParserException.b("SubtitleDecoder failed.", e10);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    private boolean e(t5.l lVar) throws IOException {
        int b10 = this.f64786c.b();
        int i10 = this.f64792i;
        if (b10 == i10) {
            this.f64786c.c(i10 + 1024);
        }
        int read = lVar.read(this.f64786c.d(), this.f64792i, this.f64786c.b() - this.f64792i);
        if (read != -1) {
            this.f64792i += read;
        }
        long length = lVar.getLength();
        if ((length != -1 && this.f64792i == length) || read == -1) {
            return true;
        }
        return false;
    }

    private boolean f(t5.l lVar) throws IOException {
        int i10;
        if (lVar.getLength() != -1) {
            i10 = Ints.d(lVar.getLength());
        } else {
            i10 = 1024;
        }
        if (lVar.skip(i10) == -1) {
            return true;
        }
        return false;
    }

    private void g() {
        boolean z10;
        int g10;
        b7.a.i(this.f64791h);
        if (this.f64788e.size() == this.f64789f.size()) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        long j10 = this.f64794k;
        if (j10 == -9223372036854775807L) {
            g10 = 0;
        } else {
            g10 = s0.g(this.f64788e, Long.valueOf(j10), true, true);
        }
        while (g10 < this.f64789f.size()) {
            g0 g0Var = this.f64789f.get(g10);
            g0Var.P(0);
            int length = g0Var.d().length;
            this.f64791h.a(g0Var, length);
            this.f64791h.e(this.f64788e.get(g10).longValue(), 1, length, 0, null);
            g10++;
        }
    }

    @Override // t5.k
    public int b(t5.l lVar, y yVar) throws IOException {
        boolean z10;
        int i10;
        int i11 = this.f64793j;
        if (i11 != 0 && i11 != 5) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        if (this.f64793j == 1) {
            g0 g0Var = this.f64786c;
            if (lVar.getLength() != -1) {
                i10 = Ints.d(lVar.getLength());
            } else {
                i10 = 1024;
            }
            g0Var.L(i10);
            this.f64792i = 0;
            this.f64793j = 2;
        }
        if (this.f64793j == 2 && e(lVar)) {
            a();
            g();
            this.f64793j = 4;
        }
        if (this.f64793j == 3 && f(lVar)) {
            g();
            this.f64793j = 4;
        }
        if (this.f64793j != 4) {
            return 0;
        }
        return -1;
    }

    @Override // t5.k
    public boolean c(t5.l lVar) throws IOException {
        return true;
    }

    @Override // t5.k
    public void d(t5.m mVar) {
        boolean z10;
        if (this.f64793j == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        this.f64790g = mVar;
        this.f64791h = mVar.track(0, 3);
        this.f64790g.endTracks();
        this.f64790g.c(new x(new long[]{0}, new long[]{0}, -9223372036854775807L));
        this.f64791h.b(this.f64787d);
        this.f64793j = 1;
    }

    @Override // t5.k
    public void release() {
        if (this.f64793j == 5) {
            return;
        }
        this.f64784a.release();
        this.f64793j = 5;
    }

    @Override // t5.k
    public void seek(long j10, long j11) {
        boolean z10;
        int i10 = this.f64793j;
        if (i10 != 0 && i10 != 5) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        this.f64794k = j11;
        if (this.f64793j == 2) {
            this.f64793j = 1;
        }
        if (this.f64793j == 4) {
            this.f64793j = 3;
        }
    }
}
