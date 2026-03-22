package on;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import cn.i0;
import gn.c0;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.ExoPlaybackException;
import io.bidmachine.media3.exoplayer.h;
import io.bidmachine.media3.exoplayer.i2;
import io.bidmachine.media3.exoplayer.image.ImageDecoderException;
import io.bidmachine.media3.exoplayer.image.ImageOutput;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import on.c;
/* compiled from: ImageRenderer.java */
/* loaded from: classes8.dex */
public class e extends h {
    private int A;
    @Nullable
    private io.bidmachine.media3.common.a B;
    @Nullable
    private c C;
    @Nullable
    private DecoderInputBuffer D;
    private ImageOutput E;
    @Nullable
    private Bitmap F;
    private boolean G;
    @Nullable
    private b H;
    @Nullable
    private b I;
    private int J;
    private boolean K;

    /* renamed from: r  reason: collision with root package name */
    private final c.a f64312r;

    /* renamed from: s  reason: collision with root package name */
    private final DecoderInputBuffer f64313s;

    /* renamed from: t  reason: collision with root package name */
    private final ArrayDeque<a> f64314t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f64315u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f64316v;

    /* renamed from: w  reason: collision with root package name */
    private a f64317w;

    /* renamed from: x  reason: collision with root package name */
    private long f64318x;

    /* renamed from: y  reason: collision with root package name */
    private long f64319y;

    /* renamed from: z  reason: collision with root package name */
    private int f64320z;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageRenderer.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: c  reason: collision with root package name */
        public static final a f64321c = new a(-9223372036854775807L, -9223372036854775807L);

        /* renamed from: a  reason: collision with root package name */
        public final long f64322a;

        /* renamed from: b  reason: collision with root package name */
        public final long f64323b;

        public a(long j10, long j11) {
            this.f64322a = j10;
            this.f64323b = j11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageRenderer.java */
    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f64324a;

        /* renamed from: b  reason: collision with root package name */
        private final long f64325b;

        /* renamed from: c  reason: collision with root package name */
        private Bitmap f64326c;

        public b(int i10, long j10) {
            this.f64324a = i10;
            this.f64325b = j10;
        }

        public long a() {
            return this.f64325b;
        }

        @Nullable
        public Bitmap b() {
            return this.f64326c;
        }

        public int c() {
            return this.f64324a;
        }

        public boolean d() {
            if (this.f64326c != null) {
                return true;
            }
            return false;
        }

        public void e(Bitmap bitmap) {
            this.f64326c = bitmap;
        }
    }

    public e(c.a aVar, @Nullable ImageOutput imageOutput) {
        super(4);
        this.f64312r = aVar;
        this.E = f0(imageOutput);
        this.f64313s = DecoderInputBuffer.p();
        this.f64317w = a.f64321c;
        this.f64314t = new ArrayDeque<>();
        this.f64319y = -9223372036854775807L;
        this.f64318x = -9223372036854775807L;
        this.f64320z = 0;
        this.A = 1;
    }

    private boolean b0(io.bidmachine.media3.common.a aVar) {
        int a10 = this.f64312r.a(aVar);
        if (a10 != i2.k(4) && a10 != i2.k(3)) {
            return false;
        }
        return true;
    }

    private Bitmap c0(int i10) {
        cn.a.i(this.F);
        int width = this.F.getWidth() / ((io.bidmachine.media3.common.a) cn.a.i(this.B)).L;
        int height = this.F.getHeight() / ((io.bidmachine.media3.common.a) cn.a.i(this.B)).M;
        int i11 = this.B.L;
        return Bitmap.createBitmap(this.F, (i10 % i11) * width, (i10 / i11) * height, width, height);
    }

    private boolean d0(long j10, long j11) throws ImageDecoderException, ExoPlaybackException {
        boolean z10;
        Bitmap bitmap;
        if (this.F != null && this.H == null) {
            return false;
        }
        if (this.A == 0 && getState() != 2) {
            return false;
        }
        if (this.F == null) {
            cn.a.i(this.C);
            d dequeueOutputBuffer = this.C.dequeueOutputBuffer();
            if (dequeueOutputBuffer == null) {
                return false;
            }
            if (((d) cn.a.i(dequeueOutputBuffer)).f()) {
                if (this.f64320z == 3) {
                    n0();
                    cn.a.i(this.B);
                    j0();
                } else {
                    ((d) cn.a.i(dequeueOutputBuffer)).l();
                    if (this.f64314t.isEmpty()) {
                        this.f64316v = true;
                    }
                }
                return false;
            }
            cn.a.j(dequeueOutputBuffer.f64311e, "Non-EOS buffer came back from the decoder without bitmap.");
            this.F = dequeueOutputBuffer.f64311e;
            ((d) cn.a.i(dequeueOutputBuffer)).l();
        }
        if (!this.G || this.F == null || this.H == null) {
            return false;
        }
        cn.a.i(this.B);
        io.bidmachine.media3.common.a aVar = this.B;
        int i10 = aVar.L;
        if ((i10 != 1 || aVar.M != 1) && i10 != -1 && aVar.M != -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!this.H.d()) {
            b bVar = this.H;
            if (z10) {
                bitmap = c0(bVar.c());
            } else {
                bitmap = (Bitmap) cn.a.i(this.F);
            }
            bVar.e(bitmap);
        }
        if (!m0(j10, j11, (Bitmap) cn.a.i(this.H.b()), this.H.a())) {
            return false;
        }
        l0(((b) cn.a.i(this.H)).a());
        this.A = 3;
        if (!z10 || ((b) cn.a.i(this.H)).c() == (((io.bidmachine.media3.common.a) cn.a.i(this.B)).M * ((io.bidmachine.media3.common.a) cn.a.i(this.B)).L) - 1) {
            this.F = null;
        }
        this.H = this.I;
        this.I = null;
        return true;
    }

    private boolean e0(long j10) throws ImageDecoderException {
        boolean z10;
        if (this.G && this.H != null) {
            return false;
        }
        c0 F = F();
        c cVar = this.C;
        if (cVar == null || this.f64320z == 3 || this.f64315u) {
            return false;
        }
        if (this.D == null) {
            DecoderInputBuffer dequeueInputBuffer = cVar.dequeueInputBuffer();
            this.D = dequeueInputBuffer;
            if (dequeueInputBuffer == null) {
                return false;
            }
        }
        if (this.f64320z == 2) {
            cn.a.i(this.D);
            this.D.k(4);
            ((c) cn.a.i(this.C)).b(this.D);
            this.D = null;
            this.f64320z = 3;
            return false;
        }
        int Y = Y(F, this.D, 0);
        if (Y != -5) {
            if (Y != -4) {
                if (Y == -3) {
                    return false;
                }
                throw new IllegalStateException();
            }
            this.D.n();
            ByteBuffer byteBuffer = this.D.f55345d;
            if ((byteBuffer != null && byteBuffer.remaining() > 0) || ((DecoderInputBuffer) cn.a.i(this.D)).f()) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                ((c) cn.a.i(this.C)).b((DecoderInputBuffer) cn.a.i(this.D));
                this.J = 0;
            }
            i0(j10, (DecoderInputBuffer) cn.a.i(this.D));
            if (((DecoderInputBuffer) cn.a.i(this.D)).f()) {
                this.f64315u = true;
                this.D = null;
                return false;
            }
            this.f64319y = Math.max(this.f64319y, ((DecoderInputBuffer) cn.a.i(this.D)).f55347f);
            if (z10) {
                this.D = null;
            } else {
                ((DecoderInputBuffer) cn.a.i(this.D)).b();
            }
            return !this.G;
        }
        this.B = (io.bidmachine.media3.common.a) cn.a.i(F.f52440b);
        this.K = true;
        this.f64320z = 2;
        return true;
    }

    private static ImageOutput f0(@Nullable ImageOutput imageOutput) {
        if (imageOutput == null) {
            return ImageOutput.f56373a;
        }
        return imageOutput;
    }

    private boolean g0(b bVar) {
        if (((io.bidmachine.media3.common.a) cn.a.i(this.B)).L == -1 || this.B.M == -1 || bVar.c() == (((io.bidmachine.media3.common.a) cn.a.i(this.B)).M * this.B.L) - 1) {
            return true;
        }
        return false;
    }

    private void h0(int i10) {
        this.A = Math.min(this.A, i10);
    }

    private void i0(long j10, DecoderInputBuffer decoderInputBuffer) {
        boolean z10;
        boolean z11;
        boolean z12 = true;
        if (decoderInputBuffer.f()) {
            this.G = true;
            return;
        }
        b bVar = new b(this.J, decoderInputBuffer.f55347f);
        this.I = bVar;
        this.J++;
        if (!this.G) {
            long a10 = bVar.a();
            if (a10 - 30000 <= j10 && j10 <= 30000 + a10) {
                z10 = true;
            } else {
                z10 = false;
            }
            b bVar2 = this.H;
            if (bVar2 != null && bVar2.a() <= j10 && j10 < a10) {
                z11 = true;
            } else {
                z11 = false;
            }
            boolean g02 = g0((b) cn.a.i(this.I));
            if (!z10 && !z11 && !g02) {
                z12 = false;
            }
            this.G = z12;
            if (z11 && !z10) {
                return;
            }
        }
        this.H = this.I;
        this.I = null;
    }

    private boolean j0() throws ExoPlaybackException {
        if (!k0()) {
            return false;
        }
        if (!this.K) {
            return true;
        }
        if (b0((io.bidmachine.media3.common.a) cn.a.e(this.B))) {
            c cVar = this.C;
            if (cVar != null) {
                cVar.release();
            }
            this.C = this.f64312r.b();
            this.K = false;
            return true;
        }
        throw B(new ImageDecoderException("Provided decoder factory can't create decoder for format."), this.B, 4005);
    }

    private void l0(long j10) {
        this.f64318x = j10;
        while (!this.f64314t.isEmpty() && j10 >= this.f64314t.peek().f64322a) {
            this.f64317w = this.f64314t.removeFirst();
        }
    }

    private void n0() {
        this.D = null;
        this.f64320z = 0;
        this.f64319y = -9223372036854775807L;
        c cVar = this.C;
        if (cVar != null) {
            cVar.release();
            this.C = null;
        }
    }

    private void o0(@Nullable ImageOutput imageOutput) {
        this.E = f0(imageOutput);
    }

    private boolean p0() {
        boolean z10;
        if (getState() == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        int i10 = this.A;
        if (i10 != 0) {
            if (i10 == 1) {
                return true;
            }
            if (i10 == 3) {
                return false;
            }
            throw new IllegalStateException();
        }
        return z10;
    }

    @Override // io.bidmachine.media3.exoplayer.h
    protected void N() {
        this.B = null;
        this.f64317w = a.f64321c;
        this.f64314t.clear();
        n0();
        this.E.a();
    }

    @Override // io.bidmachine.media3.exoplayer.h
    protected void O(boolean z10, boolean z11) throws ExoPlaybackException {
        this.A = z11 ? 1 : 0;
    }

    @Override // io.bidmachine.media3.exoplayer.h
    protected void Q(long j10, boolean z10) throws ExoPlaybackException {
        h0(1);
        this.f64316v = false;
        this.f64315u = false;
        this.F = null;
        this.H = null;
        this.I = null;
        this.G = false;
        this.D = null;
        c cVar = this.C;
        if (cVar != null) {
            cVar.flush();
        }
        this.f64314t.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.h
    public void R() {
        n0();
    }

    @Override // io.bidmachine.media3.exoplayer.h
    protected void T() {
        n0();
        h0(1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
        if (r2 >= r5) goto L14;
     */
    @Override // io.bidmachine.media3.exoplayer.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void W(io.bidmachine.media3.common.a[] r5, long r6, long r8, io.bidmachine.media3.exoplayer.source.r.b r10) throws io.bidmachine.media3.exoplayer.ExoPlaybackException {
        /*
            r4 = this;
            super.W(r5, r6, r8, r10)
            on.e$a r5 = r4.f64317w
            long r5 = r5.f64323b
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r5 == 0) goto L36
            java.util.ArrayDeque<on.e$a> r5 = r4.f64314t
            boolean r5 = r5.isEmpty()
            if (r5 == 0) goto L29
            long r5 = r4.f64319y
            int r7 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r7 == 0) goto L36
            long r2 = r4.f64318x
            int r7 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r7 == 0) goto L29
            int r5 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r5 < 0) goto L29
            goto L36
        L29:
            java.util.ArrayDeque<on.e$a> r5 = r4.f64314t
            on.e$a r6 = new on.e$a
            long r0 = r4.f64319y
            r6.<init>(r0, r8)
            r5.add(r6)
            goto L3d
        L36:
            on.e$a r5 = new on.e$a
            r5.<init>(r0, r8)
            r4.f64317w = r5
        L3d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: on.e.W(io.bidmachine.media3.common.a[], long, long, io.bidmachine.media3.exoplayer.source.r$b):void");
    }

    @Override // io.bidmachine.media3.exoplayer.i2
    public int a(io.bidmachine.media3.common.a aVar) {
        return this.f64312r.a(aVar);
    }

    @Override // io.bidmachine.media3.exoplayer.h2, io.bidmachine.media3.exoplayer.i2
    public String getName() {
        return "ImageRenderer";
    }

    @Override // io.bidmachine.media3.exoplayer.h, io.bidmachine.media3.exoplayer.f2.b
    public void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException {
        ImageOutput imageOutput;
        if (i10 != 15) {
            super.handleMessage(i10, obj);
            return;
        }
        if (obj instanceof ImageOutput) {
            imageOutput = (ImageOutput) obj;
        } else {
            imageOutput = null;
        }
        o0(imageOutput);
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public boolean isEnded() {
        return this.f64316v;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public boolean isReady() {
        int i10 = this.A;
        if (i10 != 3 && (i10 != 0 || !this.G)) {
            return false;
        }
        return true;
    }

    protected boolean k0() throws ExoPlaybackException {
        return true;
    }

    protected boolean m0(long j10, long j11, Bitmap bitmap, long j12) throws ExoPlaybackException {
        long j13 = j12 - j10;
        if (!p0() && j13 >= 30000) {
            return false;
        }
        this.E.onImageAvailable(j12 - this.f64317w.f64323b, bitmap);
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public void render(long j10, long j11) throws ExoPlaybackException {
        if (this.f64316v) {
            return;
        }
        if (this.B == null) {
            c0 F = F();
            this.f64313s.b();
            int Y = Y(F, this.f64313s, 2);
            if (Y == -5) {
                this.B = (io.bidmachine.media3.common.a) cn.a.i(F.f52440b);
                this.K = true;
            } else if (Y == -4) {
                cn.a.g(this.f64313s.f());
                this.f64315u = true;
                this.f64316v = true;
                return;
            } else {
                return;
            }
        }
        if (this.C == null && !j0()) {
            return;
        }
        try {
            i0.a("drainAndFeedDecoder");
            while (d0(j10, j11)) {
            }
            while (e0(j10)) {
            }
            i0.b();
        } catch (ImageDecoderException e10) {
            throw B(e10, null, 4003);
        }
    }
}
