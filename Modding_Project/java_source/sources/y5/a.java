package y5;

import androidx.annotation.Nullable;
import b7.g0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.v0;
import java.io.IOException;
import t5.k;
import t5.l;
import t5.m;
import t5.y;
import t5.z;
/* compiled from: JpegExtractor.java */
/* loaded from: classes4.dex */
public final class a implements k {

    /* renamed from: b  reason: collision with root package name */
    private m f70656b;

    /* renamed from: c  reason: collision with root package name */
    private int f70657c;

    /* renamed from: d  reason: collision with root package name */
    private int f70658d;

    /* renamed from: e  reason: collision with root package name */
    private int f70659e;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private MotionPhotoMetadata f70661g;

    /* renamed from: h  reason: collision with root package name */
    private l f70662h;

    /* renamed from: i  reason: collision with root package name */
    private c f70663i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private b6.k f70664j;

    /* renamed from: a  reason: collision with root package name */
    private final g0 f70655a = new g0(6);

    /* renamed from: f  reason: collision with root package name */
    private long f70660f = -1;

    private void a(l lVar) throws IOException {
        this.f70655a.L(2);
        lVar.peekFully(this.f70655a.d(), 0, 2);
        lVar.advancePeekPosition(this.f70655a.J() - 2);
    }

    private void e() {
        g(new Metadata.Entry[0]);
        ((m) b7.a.e(this.f70656b)).endTracks();
        this.f70656b.c(new z.b(-9223372036854775807L));
        this.f70657c = 6;
    }

    @Nullable
    private static MotionPhotoMetadata f(String str, long j10) throws IOException {
        b a10;
        if (j10 == -1 || (a10 = e.a(str)) == null) {
            return null;
        }
        return a10.a(j10);
    }

    private void g(Metadata.Entry... entryArr) {
        ((m) b7.a.e(this.f70656b)).track(1024, 4).b(new v0.b().K("image/jpeg").X(new Metadata(entryArr)).E());
    }

    private int h(l lVar) throws IOException {
        this.f70655a.L(2);
        lVar.peekFully(this.f70655a.d(), 0, 2);
        return this.f70655a.J();
    }

    private void i(l lVar) throws IOException {
        this.f70655a.L(2);
        lVar.readFully(this.f70655a.d(), 0, 2);
        int J = this.f70655a.J();
        this.f70658d = J;
        if (J == 65498) {
            if (this.f70660f != -1) {
                this.f70657c = 4;
            } else {
                e();
            }
        } else if ((J < 65488 || J > 65497) && J != 65281) {
            this.f70657c = 1;
        }
    }

    private void j(l lVar) throws IOException {
        String x10;
        if (this.f70658d == 65505) {
            g0 g0Var = new g0(this.f70659e);
            lVar.readFully(g0Var.d(), 0, this.f70659e);
            if (this.f70661g == null && "http://ns.adobe.com/xap/1.0/".equals(g0Var.x()) && (x10 = g0Var.x()) != null) {
                MotionPhotoMetadata f10 = f(x10, lVar.getLength());
                this.f70661g = f10;
                if (f10 != null) {
                    this.f70660f = f10.f18077d;
                }
            }
        } else {
            lVar.skipFully(this.f70659e);
        }
        this.f70657c = 0;
    }

    private void k(l lVar) throws IOException {
        this.f70655a.L(2);
        lVar.readFully(this.f70655a.d(), 0, 2);
        this.f70659e = this.f70655a.J() - 2;
        this.f70657c = 2;
    }

    private void l(l lVar) throws IOException {
        if (!lVar.peekFully(this.f70655a.d(), 0, 1, true)) {
            e();
            return;
        }
        lVar.resetPeekPosition();
        if (this.f70664j == null) {
            this.f70664j = new b6.k();
        }
        c cVar = new c(lVar, this.f70660f);
        this.f70663i = cVar;
        if (this.f70664j.c(cVar)) {
            this.f70664j.d(new d(this.f70660f, (m) b7.a.e(this.f70656b)));
            m();
            return;
        }
        e();
    }

    private void m() {
        g((Metadata.Entry) b7.a.e(this.f70661g));
        this.f70657c = 5;
    }

    @Override // t5.k
    public int b(l lVar, y yVar) throws IOException {
        int i10 = this.f70657c;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 == 6) {
                                return -1;
                            }
                            throw new IllegalStateException();
                        }
                        if (this.f70663i == null || lVar != this.f70662h) {
                            this.f70662h = lVar;
                            this.f70663i = new c(lVar, this.f70660f);
                        }
                        int b10 = ((b6.k) b7.a.e(this.f70664j)).b(this.f70663i, yVar);
                        if (b10 == 1) {
                            yVar.f67204a += this.f70660f;
                        }
                        return b10;
                    }
                    long position = lVar.getPosition();
                    long j10 = this.f70660f;
                    if (position != j10) {
                        yVar.f67204a = j10;
                        return 1;
                    }
                    l(lVar);
                    return 0;
                }
                j(lVar);
                return 0;
            }
            k(lVar);
            return 0;
        }
        i(lVar);
        return 0;
    }

    @Override // t5.k
    public boolean c(l lVar) throws IOException {
        if (h(lVar) != 65496) {
            return false;
        }
        int h10 = h(lVar);
        this.f70658d = h10;
        if (h10 == 65504) {
            a(lVar);
            this.f70658d = h(lVar);
        }
        if (this.f70658d != 65505) {
            return false;
        }
        lVar.advancePeekPosition(2);
        this.f70655a.L(6);
        lVar.peekFully(this.f70655a.d(), 0, 6);
        if (this.f70655a.F() != 1165519206 || this.f70655a.J() != 0) {
            return false;
        }
        return true;
    }

    @Override // t5.k
    public void d(m mVar) {
        this.f70656b = mVar;
    }

    @Override // t5.k
    public void release() {
        b6.k kVar = this.f70664j;
        if (kVar != null) {
            kVar.release();
        }
    }

    @Override // t5.k
    public void seek(long j10, long j11) {
        if (j10 == 0) {
            this.f70657c = 0;
            this.f70664j = null;
        } else if (this.f70657c == 5) {
            ((b6.k) b7.a.e(this.f70664j)).seek(j10, j11);
        }
    }
}
