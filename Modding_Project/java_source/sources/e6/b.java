package e6;

import android.util.Pair;
import b7.g0;
import b7.q;
import b7.s0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.v0;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.IOException;
import q5.i0;
import t5.b0;
import t5.k;
import t5.l;
import t5.m;
import t5.p;
import t5.y;
/* compiled from: WavExtractor.java */
/* loaded from: classes4.dex */
public final class b implements k {

    /* renamed from: h  reason: collision with root package name */
    public static final p f50799h = new p() { // from class: e6.a
        @Override // t5.p
        public final k[] createExtractors() {
            k[] f10;
            f10 = b.f();
            return f10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private m f50800a;

    /* renamed from: b  reason: collision with root package name */
    private b0 f50801b;

    /* renamed from: e  reason: collision with root package name */
    private InterfaceC0713b f50804e;

    /* renamed from: c  reason: collision with root package name */
    private int f50802c = 0;

    /* renamed from: d  reason: collision with root package name */
    private long f50803d = -1;

    /* renamed from: f  reason: collision with root package name */
    private int f50805f = -1;

    /* renamed from: g  reason: collision with root package name */
    private long f50806g = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WavExtractor.java */
    /* loaded from: classes4.dex */
    public static final class a implements InterfaceC0713b {

        /* renamed from: m  reason: collision with root package name */
        private static final int[] f50807m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

        /* renamed from: n  reason: collision with root package name */
        private static final int[] f50808n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS, 307, 337, 371, 408, 449, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_ABR, 544, 598, 658, 724, 796, 876, 963, MediaPlayer.MEDIA_PLAYER_OPTION_HURRY_INTERVAL, DataLoaderHelper.DATALOADER_KEY_ENABLE_LOADER_LOG_EXTRACT_URLS, 1282, TTVideoEngineInterface.PLAYER_STRATEGY_STRING_PLAY_RANGE_CONFIG, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_SELECT_USE_OBJECT, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

        /* renamed from: a  reason: collision with root package name */
        private final m f50809a;

        /* renamed from: b  reason: collision with root package name */
        private final b0 f50810b;

        /* renamed from: c  reason: collision with root package name */
        private final e6.c f50811c;

        /* renamed from: d  reason: collision with root package name */
        private final int f50812d;

        /* renamed from: e  reason: collision with root package name */
        private final byte[] f50813e;

        /* renamed from: f  reason: collision with root package name */
        private final g0 f50814f;

        /* renamed from: g  reason: collision with root package name */
        private final int f50815g;

        /* renamed from: h  reason: collision with root package name */
        private final v0 f50816h;

        /* renamed from: i  reason: collision with root package name */
        private int f50817i;

        /* renamed from: j  reason: collision with root package name */
        private long f50818j;

        /* renamed from: k  reason: collision with root package name */
        private int f50819k;

        /* renamed from: l  reason: collision with root package name */
        private long f50820l;

        public a(m mVar, b0 b0Var, e6.c cVar) throws ParserException {
            this.f50809a = mVar;
            this.f50810b = b0Var;
            this.f50811c = cVar;
            int max = Math.max(1, cVar.f50831c / 10);
            this.f50815g = max;
            g0 g0Var = new g0(cVar.f50835g);
            g0Var.v();
            int v10 = g0Var.v();
            this.f50812d = v10;
            int i10 = cVar.f50830b;
            int i11 = (((cVar.f50833e - (i10 * 4)) * 8) / (cVar.f50834f * i10)) + 1;
            if (v10 == i11) {
                int l10 = s0.l(max, v10);
                this.f50813e = new byte[cVar.f50833e * l10];
                this.f50814f = new g0(l10 * h(v10, i10));
                int i12 = ((cVar.f50831c * cVar.f50833e) * 8) / v10;
                this.f50816h = new v0.b().e0(MimeTypes.AUDIO_RAW).G(i12).Z(i12).W(h(max, i10)).H(cVar.f50830b).f0(cVar.f50831c).Y(2).E();
                return;
            }
            throw ParserException.b("Expected frames per block: " + i11 + "; got: " + v10, null);
        }

        private void d(byte[] bArr, int i10, g0 g0Var) {
            for (int i11 = 0; i11 < i10; i11++) {
                for (int i12 = 0; i12 < this.f50811c.f50830b; i12++) {
                    e(bArr, i11, i12, g0Var.d());
                }
            }
            int g10 = g(this.f50812d * i10);
            g0Var.P(0);
            g0Var.O(g10);
        }

        private void e(byte[] bArr, int i10, int i11, byte[] bArr2) {
            int i12;
            e6.c cVar = this.f50811c;
            int i13 = cVar.f50833e;
            int i14 = cVar.f50830b;
            int i15 = (i10 * i13) + (i11 * 4);
            int i16 = (i14 * 4) + i15;
            int i17 = (i13 / i14) - 4;
            int i18 = (short) (((bArr[i15 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (bArr[i15] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED));
            int min = Math.min(bArr[i15 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED, 88);
            int i19 = f50808n[min];
            int i20 = ((i10 * this.f50812d * i14) + i11) * 2;
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
                i18 = s0.p(i18 + i23, -32768, 32767);
                i20 += i14 * 2;
                bArr2[i20] = (byte) (i18 & 255);
                bArr2[i20 + 1] = (byte) (i18 >> 8);
                int i24 = min + f50807m[i12];
                int[] iArr = f50808n;
                min = s0.p(i24, 0, iArr.length - 1);
                i19 = iArr[min];
            }
        }

        private int f(int i10) {
            return i10 / (this.f50811c.f50830b * 2);
        }

        private int g(int i10) {
            return h(i10, this.f50811c.f50830b);
        }

        private static int h(int i10, int i11) {
            return i10 * 2 * i11;
        }

        private void i(int i10) {
            long F0 = this.f50818j + s0.F0(this.f50820l, 1000000L, this.f50811c.f50831c);
            int g10 = g(i10);
            this.f50810b.e(F0, 1, g10, this.f50819k - g10, null);
            this.f50820l += i10;
            this.f50819k -= g10;
        }

        @Override // e6.b.InterfaceC0713b
        public void a(int i10, long j10) {
            this.f50809a.c(new e(this.f50811c, this.f50812d, i10, j10));
            this.f50810b.b(this.f50816h);
        }

        @Override // e6.b.InterfaceC0713b
        public void b(long j10) {
            this.f50817i = 0;
            this.f50818j = j10;
            this.f50819k = 0;
            this.f50820l = 0L;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0020  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0035 -> B:4:0x001b). Please submit an issue!!! */
        @Override // e6.b.InterfaceC0713b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean c(t5.l r7, long r8) throws java.io.IOException {
            /*
                r6 = this;
                int r0 = r6.f50815g
                int r1 = r6.f50819k
                int r1 = r6.f(r1)
                int r0 = r0 - r1
                int r1 = r6.f50812d
                int r0 = b7.s0.l(r0, r1)
                e6.c r1 = r6.f50811c
                int r1 = r1.f50833e
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
                int r3 = r6.f50817i
                if (r3 >= r0) goto L3e
                int r3 = r0 - r3
                long r3 = (long) r3
                long r3 = java.lang.Math.min(r3, r8)
                int r3 = (int) r3
                byte[] r4 = r6.f50813e
                int r5 = r6.f50817i
                int r3 = r7.read(r4, r5, r3)
                r4 = -1
                if (r3 != r4) goto L38
                goto L1b
            L38:
                int r4 = r6.f50817i
                int r4 = r4 + r3
                r6.f50817i = r4
                goto L1e
            L3e:
                int r7 = r6.f50817i
                e6.c r8 = r6.f50811c
                int r8 = r8.f50833e
                int r7 = r7 / r8
                if (r7 <= 0) goto L75
                byte[] r8 = r6.f50813e
                b7.g0 r9 = r6.f50814f
                r6.d(r8, r7, r9)
                int r8 = r6.f50817i
                e6.c r9 = r6.f50811c
                int r9 = r9.f50833e
                int r7 = r7 * r9
                int r8 = r8 - r7
                r6.f50817i = r8
                b7.g0 r7 = r6.f50814f
                int r7 = r7.f()
                t5.b0 r8 = r6.f50810b
                b7.g0 r9 = r6.f50814f
                r8.a(r9, r7)
                int r8 = r6.f50819k
                int r8 = r8 + r7
                r6.f50819k = r8
                int r7 = r6.f(r8)
                int r8 = r6.f50815g
                if (r7 < r8) goto L75
                r6.i(r8)
            L75:
                if (r1 == 0) goto L82
                int r7 = r6.f50819k
                int r7 = r6.f(r7)
                if (r7 <= 0) goto L82
                r6.i(r7)
            L82:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: e6.b.a.c(t5.l, long):boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WavExtractor.java */
    /* renamed from: e6.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0713b {
        void a(int i10, long j10) throws ParserException;

        void b(long j10);

        boolean c(l lVar, long j10) throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WavExtractor.java */
    /* loaded from: classes4.dex */
    public static final class c implements InterfaceC0713b {

        /* renamed from: a  reason: collision with root package name */
        private final m f50821a;

        /* renamed from: b  reason: collision with root package name */
        private final b0 f50822b;

        /* renamed from: c  reason: collision with root package name */
        private final e6.c f50823c;

        /* renamed from: d  reason: collision with root package name */
        private final v0 f50824d;

        /* renamed from: e  reason: collision with root package name */
        private final int f50825e;

        /* renamed from: f  reason: collision with root package name */
        private long f50826f;

        /* renamed from: g  reason: collision with root package name */
        private int f50827g;

        /* renamed from: h  reason: collision with root package name */
        private long f50828h;

        public c(m mVar, b0 b0Var, e6.c cVar, String str, int i10) throws ParserException {
            this.f50821a = mVar;
            this.f50822b = b0Var;
            this.f50823c = cVar;
            int i11 = (cVar.f50830b * cVar.f50834f) / 8;
            if (cVar.f50833e == i11) {
                int i12 = cVar.f50831c;
                int i13 = i12 * i11 * 8;
                int max = Math.max(i11, (i12 * i11) / 10);
                this.f50825e = max;
                this.f50824d = new v0.b().e0(str).G(i13).Z(i13).W(max).H(cVar.f50830b).f0(cVar.f50831c).Y(i10).E();
                return;
            }
            throw ParserException.b("Expected block size: " + i11 + "; got: " + cVar.f50833e, null);
        }

        @Override // e6.b.InterfaceC0713b
        public void a(int i10, long j10) {
            this.f50821a.c(new e(this.f50823c, 1, i10, j10));
            this.f50822b.b(this.f50824d);
        }

        @Override // e6.b.InterfaceC0713b
        public void b(long j10) {
            this.f50826f = j10;
            this.f50827g = 0;
            this.f50828h = 0L;
        }

        @Override // e6.b.InterfaceC0713b
        public boolean c(l lVar, long j10) throws IOException {
            int i10;
            e6.c cVar;
            int i11;
            int i12;
            long j11 = j10;
            while (true) {
                i10 = (j11 > 0L ? 1 : (j11 == 0L ? 0 : -1));
                if (i10 <= 0 || (i11 = this.f50827g) >= (i12 = this.f50825e)) {
                    break;
                }
                int f10 = this.f50822b.f(lVar, (int) Math.min(i12 - i11, j11), true);
                if (f10 == -1) {
                    j11 = 0;
                } else {
                    this.f50827g += f10;
                    j11 -= f10;
                }
            }
            int i13 = this.f50823c.f50833e;
            int i14 = this.f50827g / i13;
            if (i14 > 0) {
                int i15 = i14 * i13;
                int i16 = this.f50827g - i15;
                this.f50822b.e(this.f50826f + s0.F0(this.f50828h, 1000000L, cVar.f50831c), 1, i15, i16, null);
                this.f50828h += i14;
                this.f50827g = i16;
            }
            if (i10 <= 0) {
                return true;
            }
            return false;
        }
    }

    private void e() {
        b7.a.i(this.f50801b);
        s0.j(this.f50800a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] f() {
        return new k[]{new b()};
    }

    private void g(l lVar) throws IOException {
        boolean z10;
        if (lVar.getPosition() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        int i10 = this.f50805f;
        if (i10 != -1) {
            lVar.skipFully(i10);
            this.f50802c = 4;
        } else if (d.a(lVar)) {
            lVar.skipFully((int) (lVar.getPeekPosition() - lVar.getPosition()));
            this.f50802c = 1;
        } else {
            throw ParserException.b("Unsupported or unrecognized wav file type.", null);
        }
    }

    private void h(l lVar) throws IOException {
        e6.c b10 = d.b(lVar);
        int i10 = b10.f50829a;
        if (i10 == 17) {
            this.f50804e = new a(this.f50800a, this.f50801b, b10);
        } else if (i10 == 6) {
            this.f50804e = new c(this.f50800a, this.f50801b, b10, MimeTypes.AUDIO_ALAW, -1);
        } else if (i10 == 7) {
            this.f50804e = new c(this.f50800a, this.f50801b, b10, MimeTypes.AUDIO_MLAW, -1);
        } else {
            int a10 = i0.a(i10, b10.f50834f);
            if (a10 != 0) {
                this.f50804e = new c(this.f50800a, this.f50801b, b10, MimeTypes.AUDIO_RAW, a10);
            } else {
                throw ParserException.e("Unsupported WAV format type: " + b10.f50829a);
            }
        }
        this.f50802c = 3;
    }

    private void i(l lVar) throws IOException {
        this.f50803d = d.c(lVar);
        this.f50802c = 2;
    }

    private int j(l lVar) throws IOException {
        boolean z10;
        if (this.f50806g != -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        if (!((InterfaceC0713b) b7.a.e(this.f50804e)).c(lVar, this.f50806g - lVar.getPosition())) {
            return 0;
        }
        return -1;
    }

    private void k(l lVar) throws IOException {
        Pair<Long, Long> e10 = d.e(lVar);
        this.f50805f = ((Long) e10.first).intValue();
        long longValue = ((Long) e10.second).longValue();
        long j10 = this.f50803d;
        if (j10 != -1 && longValue == 4294967295L) {
            longValue = j10;
        }
        this.f50806g = this.f50805f + longValue;
        long length = lVar.getLength();
        if (length != -1 && this.f50806g > length) {
            q.i("WavExtractor", "Data exceeds input length: " + this.f50806g + ", " + length);
            this.f50806g = length;
        }
        ((InterfaceC0713b) b7.a.e(this.f50804e)).a(this.f50805f, this.f50806g);
        this.f50802c = 4;
    }

    @Override // t5.k
    public int b(l lVar, y yVar) throws IOException {
        e();
        int i10 = this.f50802c;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            return j(lVar);
                        }
                        throw new IllegalStateException();
                    }
                    k(lVar);
                    return 0;
                }
                h(lVar);
                return 0;
            }
            i(lVar);
            return 0;
        }
        g(lVar);
        return 0;
    }

    @Override // t5.k
    public boolean c(l lVar) throws IOException {
        return d.a(lVar);
    }

    @Override // t5.k
    public void d(m mVar) {
        this.f50800a = mVar;
        this.f50801b = mVar.track(0, 1);
        mVar.endTracks();
    }

    @Override // t5.k
    public void seek(long j10, long j11) {
        int i10;
        if (j10 == 0) {
            i10 = 0;
        } else {
            i10 = 4;
        }
        this.f50802c = i10;
        InterfaceC0713b interfaceC0713b = this.f50804e;
        if (interfaceC0713b != null) {
            interfaceC0713b.b(j11);
        }
    }

    @Override // t5.k
    public void release() {
    }
}
