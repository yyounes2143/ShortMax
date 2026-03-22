package jp;

import android.util.Pair;
import ao.i0;
import ao.o0;
import ao.p;
import ao.q;
import ao.r;
import ao.s0;
import ao.u;
import cn.b0;
import cn.m0;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import java.io.IOException;
/* compiled from: WavExtractor.java */
/* loaded from: classes8.dex */
public final class b implements p {

    /* renamed from: h  reason: collision with root package name */
    public static final u f60488h = new u() { // from class: jp.a
        @Override // ao.u
        public final p[] createExtractors() {
            p[] h10;
            h10 = b.h();
            return h10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private r f60489a;

    /* renamed from: b  reason: collision with root package name */
    private o0 f60490b;

    /* renamed from: e  reason: collision with root package name */
    private InterfaceC0837b f60493e;

    /* renamed from: c  reason: collision with root package name */
    private int f60491c = 0;

    /* renamed from: d  reason: collision with root package name */
    private long f60492d = -1;

    /* renamed from: f  reason: collision with root package name */
    private int f60494f = -1;

    /* renamed from: g  reason: collision with root package name */
    private long f60495g = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WavExtractor.java */
    /* loaded from: classes8.dex */
    public static final class a implements InterfaceC0837b {

        /* renamed from: m  reason: collision with root package name */
        private static final int[] f60496m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

        /* renamed from: n  reason: collision with root package name */
        private static final int[] f60497n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS, 307, 337, 371, 408, 449, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_ABR, 544, 598, 658, 724, 796, 876, 963, MediaPlayer.MEDIA_PLAYER_OPTION_HURRY_INTERVAL, DataLoaderHelper.DATALOADER_KEY_ENABLE_LOADER_LOG_EXTRACT_URLS, 1282, TTVideoEngineInterface.PLAYER_STRATEGY_STRING_PLAY_RANGE_CONFIG, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_SELECT_USE_OBJECT, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

        /* renamed from: a  reason: collision with root package name */
        private final r f60498a;

        /* renamed from: b  reason: collision with root package name */
        private final o0 f60499b;

        /* renamed from: c  reason: collision with root package name */
        private final jp.c f60500c;

        /* renamed from: d  reason: collision with root package name */
        private final int f60501d;

        /* renamed from: e  reason: collision with root package name */
        private final byte[] f60502e;

        /* renamed from: f  reason: collision with root package name */
        private final b0 f60503f;

        /* renamed from: g  reason: collision with root package name */
        private final int f60504g;

        /* renamed from: h  reason: collision with root package name */
        private final io.bidmachine.media3.common.a f60505h;

        /* renamed from: i  reason: collision with root package name */
        private int f60506i;

        /* renamed from: j  reason: collision with root package name */
        private long f60507j;

        /* renamed from: k  reason: collision with root package name */
        private int f60508k;

        /* renamed from: l  reason: collision with root package name */
        private long f60509l;

        public a(r rVar, o0 o0Var, jp.c cVar) throws ParserException {
            this.f60498a = rVar;
            this.f60499b = o0Var;
            this.f60500c = cVar;
            int max = Math.max(1, cVar.f60520c / 10);
            this.f60504g = max;
            b0 b0Var = new b0(cVar.f60524g);
            b0Var.z();
            int z10 = b0Var.z();
            this.f60501d = z10;
            int i10 = cVar.f60519b;
            int i11 = (((cVar.f60522e - (i10 * 4)) * 8) / (cVar.f60523f * i10)) + 1;
            if (z10 == i11) {
                int k10 = m0.k(max, z10);
                this.f60502e = new byte[cVar.f60522e * k10];
                this.f60503f = new b0(k10 * h(z10, i10));
                int i12 = ((cVar.f60520c * cVar.f60522e) * 8) / z10;
                this.f60505h = new a.b().u0(MimeTypes.AUDIO_RAW).Q(i12).p0(i12).k0(h(max, i10)).R(cVar.f60519b).v0(cVar.f60520c).o0(2).N();
                return;
            }
            throw ParserException.b("Expected frames per block: " + i11 + "; got: " + z10, null);
        }

        private void d(byte[] bArr, int i10, b0 b0Var) {
            for (int i11 = 0; i11 < i10; i11++) {
                for (int i12 = 0; i12 < this.f60500c.f60519b; i12++) {
                    e(bArr, i11, i12, b0Var.e());
                }
            }
            int g10 = g(this.f60501d * i10);
            b0Var.W(0);
            b0Var.V(g10);
        }

        private void e(byte[] bArr, int i10, int i11, byte[] bArr2) {
            int i12;
            jp.c cVar = this.f60500c;
            int i13 = cVar.f60522e;
            int i14 = cVar.f60519b;
            int i15 = (i10 * i13) + (i11 * 4);
            int i16 = (i14 * 4) + i15;
            int i17 = (i13 / i14) - 4;
            int i18 = (short) (((bArr[i15 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (bArr[i15] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED));
            int min = Math.min(bArr[i15 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED, 88);
            int i19 = f60497n[min];
            int i20 = ((i10 * this.f60501d * i14) + i11) * 2;
            bArr2[i20] = (byte) (i18 & 255);
            bArr2[i20 + 1] = (byte) (i18 >> 8);
            for (int i21 = 0; i21 < i17 * 2; i21++) {
                byte b10 = bArr[((i21 / 8) * i14 * 4) + i16 + ((i21 / 2) % 4)];
                int i22 = b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                if (i21 % 2 == 0) {
                    i12 = b10 & 15;
                } else {
                    i12 = i22 >> 4;
                }
                int i23 = ((((i12 & 7) * 2) + 1) * i19) >> 3;
                if ((i12 & 8) != 0) {
                    i23 = -i23;
                }
                i18 = m0.p(i18 + i23, -32768, 32767);
                i20 += i14 * 2;
                bArr2[i20] = (byte) (i18 & 255);
                bArr2[i20 + 1] = (byte) (i18 >> 8);
                int i24 = min + f60496m[i12];
                int[] iArr = f60497n;
                min = m0.p(i24, 0, iArr.length - 1);
                i19 = iArr[min];
            }
        }

        private int f(int i10) {
            return i10 / (this.f60500c.f60519b * 2);
        }

        private int g(int i10) {
            return h(i10, this.f60500c.f60519b);
        }

        private static int h(int i10, int i11) {
            return i10 * 2 * i11;
        }

        private void i(int i10) {
            long f12 = this.f60507j + m0.f1(this.f60509l, 1000000L, this.f60500c.f60520c);
            int g10 = g(i10);
            this.f60499b.c(f12, 1, g10, this.f60508k - g10, null);
            this.f60509l += i10;
            this.f60508k -= g10;
        }

        @Override // jp.b.InterfaceC0837b
        public void a(int i10, long j10) {
            e eVar = new e(this.f60500c, this.f60501d, i10, j10);
            this.f60498a.d(eVar);
            this.f60499b.g(this.f60505h);
            this.f60499b.d(eVar.getDurationUs());
        }

        @Override // jp.b.InterfaceC0837b
        public void b(long j10) {
            this.f60506i = 0;
            this.f60507j = j10;
            this.f60508k = 0;
            this.f60509l = 0L;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0020  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0035 -> B:4:0x001b). Please submit an issue!!! */
        @Override // jp.b.InterfaceC0837b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean c(ao.q r7, long r8) throws java.io.IOException {
            /*
                r6 = this;
                int r0 = r6.f60504g
                int r1 = r6.f60508k
                int r1 = r6.f(r1)
                int r0 = r0 - r1
                int r1 = r6.f60501d
                int r0 = cn.m0.k(r0, r1)
                jp.c r1 = r6.f60500c
                int r1 = r1.f60522e
                int r0 = r0 * r1
                r1 = 0
                int r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
                r2 = 1
                if (r1 != 0) goto L1d
            L1b:
                r1 = r2
                goto L1e
            L1d:
                r1 = 0
            L1e:
                if (r1 != 0) goto L3e
                int r3 = r6.f60506i
                if (r3 >= r0) goto L3e
                int r3 = r0 - r3
                long r3 = (long) r3
                long r3 = java.lang.Math.min(r3, r8)
                int r3 = (int) r3
                byte[] r4 = r6.f60502e
                int r5 = r6.f60506i
                int r3 = r7.read(r4, r5, r3)
                r4 = -1
                if (r3 != r4) goto L38
                goto L1b
            L38:
                int r4 = r6.f60506i
                int r4 = r4 + r3
                r6.f60506i = r4
                goto L1e
            L3e:
                int r7 = r6.f60506i
                jp.c r8 = r6.f60500c
                int r8 = r8.f60522e
                int r7 = r7 / r8
                if (r7 <= 0) goto L75
                byte[] r8 = r6.f60502e
                cn.b0 r9 = r6.f60503f
                r6.d(r8, r7, r9)
                int r8 = r6.f60506i
                jp.c r9 = r6.f60500c
                int r9 = r9.f60522e
                int r7 = r7 * r9
                int r8 = r8 - r7
                r6.f60506i = r8
                cn.b0 r7 = r6.f60503f
                int r7 = r7.g()
                ao.o0 r8 = r6.f60499b
                cn.b0 r9 = r6.f60503f
                r8.a(r9, r7)
                int r8 = r6.f60508k
                int r8 = r8 + r7
                r6.f60508k = r8
                int r7 = r6.f(r8)
                int r8 = r6.f60504g
                if (r7 < r8) goto L75
                r6.i(r8)
            L75:
                if (r1 == 0) goto L82
                int r7 = r6.f60508k
                int r7 = r6.f(r7)
                if (r7 <= 0) goto L82
                r6.i(r7)
            L82:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: jp.b.a.c(ao.q, long):boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WavExtractor.java */
    /* renamed from: jp.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public interface InterfaceC0837b {
        void a(int i10, long j10) throws ParserException;

        void b(long j10);

        boolean c(q qVar, long j10) throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WavExtractor.java */
    /* loaded from: classes8.dex */
    public static final class c implements InterfaceC0837b {

        /* renamed from: a  reason: collision with root package name */
        private final r f60510a;

        /* renamed from: b  reason: collision with root package name */
        private final o0 f60511b;

        /* renamed from: c  reason: collision with root package name */
        private final jp.c f60512c;

        /* renamed from: d  reason: collision with root package name */
        private final io.bidmachine.media3.common.a f60513d;

        /* renamed from: e  reason: collision with root package name */
        private final int f60514e;

        /* renamed from: f  reason: collision with root package name */
        private long f60515f;

        /* renamed from: g  reason: collision with root package name */
        private int f60516g;

        /* renamed from: h  reason: collision with root package name */
        private long f60517h;

        public c(r rVar, o0 o0Var, jp.c cVar, String str, int i10) throws ParserException {
            this.f60510a = rVar;
            this.f60511b = o0Var;
            this.f60512c = cVar;
            int i11 = (cVar.f60519b * cVar.f60523f) / 8;
            if (cVar.f60522e == i11) {
                int i12 = cVar.f60520c;
                int i13 = i12 * i11 * 8;
                int max = Math.max(i11, (i12 * i11) / 10);
                this.f60514e = max;
                this.f60513d = new a.b().U("audio/wav").u0(str).Q(i13).p0(i13).k0(max).R(cVar.f60519b).v0(cVar.f60520c).o0(i10).N();
                return;
            }
            throw ParserException.b("Expected block size: " + i11 + "; got: " + cVar.f60522e, null);
        }

        @Override // jp.b.InterfaceC0837b
        public void a(int i10, long j10) {
            e eVar = new e(this.f60512c, 1, i10, j10);
            this.f60510a.d(eVar);
            this.f60511b.g(this.f60513d);
            this.f60511b.d(eVar.getDurationUs());
        }

        @Override // jp.b.InterfaceC0837b
        public void b(long j10) {
            this.f60515f = j10;
            this.f60516g = 0;
            this.f60517h = 0L;
        }

        @Override // jp.b.InterfaceC0837b
        public boolean c(q qVar, long j10) throws IOException {
            int i10;
            jp.c cVar;
            int i11;
            int i12;
            long j11 = j10;
            while (true) {
                i10 = (j11 > 0L ? 1 : (j11 == 0L ? 0 : -1));
                if (i10 <= 0 || (i11 = this.f60516g) >= (i12 = this.f60514e)) {
                    break;
                }
                int b10 = this.f60511b.b(qVar, (int) Math.min(i12 - i11, j11), true);
                if (b10 == -1) {
                    j11 = 0;
                } else {
                    this.f60516g += b10;
                    j11 -= b10;
                }
            }
            int i13 = this.f60512c.f60522e;
            int i14 = this.f60516g / i13;
            if (i14 > 0) {
                int i15 = i14 * i13;
                int i16 = this.f60516g - i15;
                this.f60511b.c(this.f60515f + m0.f1(this.f60517h, 1000000L, cVar.f60520c), 1, i15, i16, null);
                this.f60517h += i14;
                this.f60516g = i16;
            }
            if (i10 <= 0) {
                return true;
            }
            return false;
        }
    }

    private void g() {
        cn.a.i(this.f60490b);
        m0.i(this.f60489a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ p[] h() {
        return new p[]{new b()};
    }

    private void i(q qVar) throws IOException {
        boolean z10;
        if (qVar.getPosition() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        int i10 = this.f60494f;
        if (i10 != -1) {
            qVar.skipFully(i10);
            this.f60491c = 4;
        } else if (d.a(qVar)) {
            qVar.skipFully((int) (qVar.getPeekPosition() - qVar.getPosition()));
            this.f60491c = 1;
        } else {
            throw ParserException.b("Unsupported or unrecognized wav file type.", null);
        }
    }

    private void j(q qVar) throws IOException {
        jp.c b10 = d.b(qVar);
        int i10 = b10.f60518a;
        if (i10 == 17) {
            this.f60493e = new a(this.f60489a, this.f60490b, b10);
        } else if (i10 == 6) {
            this.f60493e = new c(this.f60489a, this.f60490b, b10, MimeTypes.AUDIO_ALAW, -1);
        } else if (i10 == 7) {
            this.f60493e = new c(this.f60489a, this.f60490b, b10, MimeTypes.AUDIO_MLAW, -1);
        } else {
            int a10 = s0.a(i10, b10.f60523f);
            if (a10 != 0) {
                this.f60493e = new c(this.f60489a, this.f60490b, b10, MimeTypes.AUDIO_RAW, a10);
            } else {
                throw ParserException.f("Unsupported WAV format type: " + b10.f60518a);
            }
        }
        this.f60491c = 3;
    }

    private void k(q qVar) throws IOException {
        this.f60492d = d.c(qVar);
        this.f60491c = 2;
    }

    private int l(q qVar) throws IOException {
        boolean z10;
        if (this.f60495g != -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        if (!((InterfaceC0837b) cn.a.e(this.f60493e)).c(qVar, this.f60495g - qVar.getPosition())) {
            return 0;
        }
        return -1;
    }

    private void m(q qVar) throws IOException {
        Pair<Long, Long> e10 = d.e(qVar);
        this.f60494f = ((Long) e10.first).intValue();
        long longValue = ((Long) e10.second).longValue();
        long j10 = this.f60492d;
        if (j10 != -1 && longValue == 4294967295L) {
            longValue = j10;
        }
        this.f60495g = this.f60494f + longValue;
        long length = qVar.getLength();
        if (length != -1 && this.f60495g > length) {
            cn.r.h("WavExtractor", "Data exceeds input length: " + this.f60495g + ", " + length);
            this.f60495g = length;
        }
        ((InterfaceC0837b) cn.a.e(this.f60493e)).a(this.f60494f, this.f60495g);
        this.f60491c = 4;
    }

    @Override // ao.p
    public void b(r rVar) {
        this.f60489a = rVar;
        this.f60490b = rVar.track(0, 1);
        rVar.endTracks();
    }

    @Override // ao.p
    public boolean e(q qVar) throws IOException {
        return d.a(qVar);
    }

    @Override // ao.p
    public int f(q qVar, i0 i0Var) throws IOException {
        g();
        int i10 = this.f60491c;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            return l(qVar);
                        }
                        throw new IllegalStateException();
                    }
                    m(qVar);
                    return 0;
                }
                j(qVar);
                return 0;
            }
            k(qVar);
            return 0;
        }
        i(qVar);
        return 0;
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        int i10;
        if (j10 == 0) {
            i10 = 0;
        } else {
            i10 = 4;
        }
        this.f60491c = i10;
        InterfaceC0837b interfaceC0837b = this.f60493e;
        if (interfaceC0837b != null) {
            interfaceC0837b.b(j11);
        }
    }

    @Override // ao.p
    public void release() {
    }
}
