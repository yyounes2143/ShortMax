package z5;

import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import b7.g0;
import b7.q;
import b7.r;
import b7.s0;
import b7.u;
import b7.v;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.v0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import kotlin.jvm.internal.ByteCompanionObject;
import q5.a;
import t5.b0;
import t5.c0;
import t5.k;
import t5.l;
import t5.m;
import t5.p;
import t5.y;
import t5.z;
/* compiled from: MatroskaExtractor.java */
/* loaded from: classes4.dex */
public class e implements k {

    /* renamed from: c0  reason: collision with root package name */
    public static final p f71255c0 = new p() { // from class: z5.d
        @Override // t5.p
        public final k[] createExtractors() {
            k[] z10;
            z10 = e.z();
            return z10;
        }
    };

    /* renamed from: d0  reason: collision with root package name */
    private static final byte[] f71256d0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: e0  reason: collision with root package name */
    private static final byte[] f71257e0 = s0.h0("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* renamed from: f0  reason: collision with root package name */
    private static final byte[] f71258f0 = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* renamed from: g0  reason: collision with root package name */
    private static final byte[] f71259g0 = {87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};

    /* renamed from: h0  reason: collision with root package name */
    private static final UUID f71260h0 = new UUID(72057594037932032L, -9223371306706625679L);

    /* renamed from: i0  reason: collision with root package name */
    private static final Map<String, Integer> f71261i0;
    private long A;
    private long B;
    @Nullable
    private r C;
    @Nullable
    private r D;
    private boolean E;
    private boolean F;
    private int G;
    private long H;
    private long I;
    private int J;
    private int K;
    private int[] L;
    private int M;
    private int N;
    private int O;
    private int P;
    private boolean Q;
    private long R;
    private int S;
    private int T;
    private int U;
    private boolean V;
    private boolean W;
    private boolean X;
    private int Y;
    private byte Z;

    /* renamed from: a  reason: collision with root package name */
    private final z5.c f71262a;

    /* renamed from: a0  reason: collision with root package name */
    private boolean f71263a0;

    /* renamed from: b  reason: collision with root package name */
    private final g f71264b;

    /* renamed from: b0  reason: collision with root package name */
    private m f71265b0;

    /* renamed from: c  reason: collision with root package name */
    private final SparseArray<c> f71266c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f71267d;

    /* renamed from: e  reason: collision with root package name */
    private final g0 f71268e;

    /* renamed from: f  reason: collision with root package name */
    private final g0 f71269f;

    /* renamed from: g  reason: collision with root package name */
    private final g0 f71270g;

    /* renamed from: h  reason: collision with root package name */
    private final g0 f71271h;

    /* renamed from: i  reason: collision with root package name */
    private final g0 f71272i;

    /* renamed from: j  reason: collision with root package name */
    private final g0 f71273j;

    /* renamed from: k  reason: collision with root package name */
    private final g0 f71274k;

    /* renamed from: l  reason: collision with root package name */
    private final g0 f71275l;

    /* renamed from: m  reason: collision with root package name */
    private final g0 f71276m;

    /* renamed from: n  reason: collision with root package name */
    private final g0 f71277n;

    /* renamed from: o  reason: collision with root package name */
    private ByteBuffer f71278o;

    /* renamed from: p  reason: collision with root package name */
    private long f71279p;

    /* renamed from: q  reason: collision with root package name */
    private long f71280q;

    /* renamed from: r  reason: collision with root package name */
    private long f71281r;

    /* renamed from: s  reason: collision with root package name */
    private long f71282s;

    /* renamed from: t  reason: collision with root package name */
    private long f71283t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private c f71284u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f71285v;

    /* renamed from: w  reason: collision with root package name */
    private int f71286w;

    /* renamed from: x  reason: collision with root package name */
    private long f71287x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f71288y;

    /* renamed from: z  reason: collision with root package name */
    private long f71289z;

    /* compiled from: MatroskaExtractor.java */
    /* loaded from: classes4.dex */
    private final class b implements z5.b {
        private b() {
        }

        @Override // z5.b
        public void a(int i10, int i11, l lVar) throws IOException {
            e.this.k(i10, i11, lVar);
        }

        @Override // z5.b
        public void endMasterElement(int i10) throws ParserException {
            e.this.n(i10);
        }

        @Override // z5.b
        public void floatElement(int i10, double d10) throws ParserException {
            e.this.q(i10, d10);
        }

        @Override // z5.b
        public int getElementType(int i10) {
            return e.this.t(i10);
        }

        @Override // z5.b
        public void integerElement(int i10, long j10) throws ParserException {
            e.this.w(i10, j10);
        }

        @Override // z5.b
        public boolean isLevel1Element(int i10) {
            return e.this.y(i10);
        }

        @Override // z5.b
        public void startMasterElement(int i10, long j10, long j11) throws ParserException {
            e.this.F(i10, j10, j11);
        }

        @Override // z5.b
        public void stringElement(int i10, String str) throws ParserException {
            e.this.G(i10, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: MatroskaExtractor.java */
    /* loaded from: classes4.dex */
    public static final class c {
        public byte[] N;
        public c0 T;
        public boolean U;
        public b0 X;
        public int Y;

        /* renamed from: a  reason: collision with root package name */
        public String f71291a;

        /* renamed from: b  reason: collision with root package name */
        public String f71292b;

        /* renamed from: c  reason: collision with root package name */
        public int f71293c;

        /* renamed from: d  reason: collision with root package name */
        public int f71294d;

        /* renamed from: e  reason: collision with root package name */
        public int f71295e;

        /* renamed from: f  reason: collision with root package name */
        public int f71296f;

        /* renamed from: g  reason: collision with root package name */
        private int f71297g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f71298h;

        /* renamed from: i  reason: collision with root package name */
        public byte[] f71299i;

        /* renamed from: j  reason: collision with root package name */
        public b0.a f71300j;

        /* renamed from: k  reason: collision with root package name */
        public byte[] f71301k;

        /* renamed from: l  reason: collision with root package name */
        public DrmInitData f71302l;

        /* renamed from: m  reason: collision with root package name */
        public int f71303m = -1;

        /* renamed from: n  reason: collision with root package name */
        public int f71304n = -1;

        /* renamed from: o  reason: collision with root package name */
        public int f71305o = -1;

        /* renamed from: p  reason: collision with root package name */
        public int f71306p = -1;

        /* renamed from: q  reason: collision with root package name */
        public int f71307q = 0;

        /* renamed from: r  reason: collision with root package name */
        public int f71308r = -1;

        /* renamed from: s  reason: collision with root package name */
        public float f71309s = 0.0f;

        /* renamed from: t  reason: collision with root package name */
        public float f71310t = 0.0f;

        /* renamed from: u  reason: collision with root package name */
        public float f71311u = 0.0f;

        /* renamed from: v  reason: collision with root package name */
        public byte[] f71312v = null;

        /* renamed from: w  reason: collision with root package name */
        public int f71313w = -1;

        /* renamed from: x  reason: collision with root package name */
        public boolean f71314x = false;

        /* renamed from: y  reason: collision with root package name */
        public int f71315y = -1;

        /* renamed from: z  reason: collision with root package name */
        public int f71316z = -1;
        public int A = -1;
        public int B = 1000;
        public int C = 200;
        public float D = -1.0f;
        public float E = -1.0f;
        public float F = -1.0f;
        public float G = -1.0f;
        public float H = -1.0f;
        public float I = -1.0f;
        public float J = -1.0f;
        public float K = -1.0f;
        public float L = -1.0f;
        public float M = -1.0f;
        public int O = 1;
        public int P = -1;
        public int Q = 8000;
        public long R = 0;
        public long S = 0;
        public boolean V = true;
        private String W = "eng";

        protected c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            b7.a.e(this.X);
        }

        private byte[] g(String str) throws ParserException {
            byte[] bArr = this.f71301k;
            if (bArr != null) {
                return bArr;
            }
            throw ParserException.b("Missing CodecPrivate for codec " + str, null);
        }

        @Nullable
        private byte[] h() {
            if (this.D != -1.0f && this.E != -1.0f && this.F != -1.0f && this.G != -1.0f && this.H != -1.0f && this.I != -1.0f && this.J != -1.0f && this.K != -1.0f && this.L != -1.0f && this.M != -1.0f) {
                byte[] bArr = new byte[25];
                ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                order.put((byte) 0);
                order.putShort((short) ((this.D * 50000.0f) + 0.5f));
                order.putShort((short) ((this.E * 50000.0f) + 0.5f));
                order.putShort((short) ((this.F * 50000.0f) + 0.5f));
                order.putShort((short) ((this.G * 50000.0f) + 0.5f));
                order.putShort((short) ((this.H * 50000.0f) + 0.5f));
                order.putShort((short) ((this.I * 50000.0f) + 0.5f));
                order.putShort((short) ((this.J * 50000.0f) + 0.5f));
                order.putShort((short) ((this.K * 50000.0f) + 0.5f));
                order.putShort((short) (this.L + 0.5f));
                order.putShort((short) (this.M + 0.5f));
                order.putShort((short) this.B);
                order.putShort((short) this.C);
                return bArr;
            }
            return null;
        }

        private static Pair<String, List<byte[]>> k(g0 g0Var) throws ParserException {
            try {
                g0Var.Q(16);
                long t10 = g0Var.t();
                if (t10 == 1482049860) {
                    return new Pair<>("video/divx", null);
                }
                if (t10 == 859189832) {
                    return new Pair<>(MimeTypes.VIDEO_H263, null);
                }
                if (t10 == 826496599) {
                    byte[] d10 = g0Var.d();
                    for (int e10 = g0Var.e() + 20; e10 < d10.length - 4; e10++) {
                        if (d10[e10] == 0 && d10[e10 + 1] == 0 && d10[e10 + 2] == 1 && d10[e10 + 3] == 15) {
                            return new Pair<>(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(d10, e10, d10.length)));
                        }
                    }
                    throw ParserException.b("Failed to find FourCC VC1 initialization data", null);
                }
                q.i("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair<>(MimeTypes.VIDEO_UNKNOWN, null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.b("Error parsing FourCC private data", null);
            }
        }

        private static boolean l(g0 g0Var) throws ParserException {
            try {
                int v10 = g0Var.v();
                if (v10 == 1) {
                    return true;
                }
                if (v10 != 65534) {
                    return false;
                }
                g0Var.P(24);
                if (g0Var.w() == e.f71260h0.getMostSignificantBits()) {
                    if (g0Var.w() == e.f71260h0.getLeastSignificantBits()) {
                        return true;
                    }
                }
                return false;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.b("Error parsing MS/ACM codec private", null);
            }
        }

        private static List<byte[]> m(byte[] bArr) throws ParserException {
            int i10;
            int i11;
            try {
                if (bArr[0] == 2) {
                    int i12 = 0;
                    int i13 = 1;
                    while (true) {
                        i10 = bArr[i13];
                        if ((i10 & 255) != 255) {
                            break;
                        }
                        i12 += 255;
                        i13++;
                    }
                    int i14 = i13 + 1;
                    int i15 = i12 + (i10 & 255);
                    int i16 = 0;
                    while (true) {
                        i11 = bArr[i14];
                        if ((i11 & 255) != 255) {
                            break;
                        }
                        i16 += 255;
                        i14++;
                    }
                    int i17 = i14 + 1;
                    int i18 = i16 + (i11 & 255);
                    if (bArr[i17] == 1) {
                        byte[] bArr2 = new byte[i15];
                        System.arraycopy(bArr, i17, bArr2, 0, i15);
                        int i19 = i17 + i15;
                        if (bArr[i19] == 3) {
                            int i20 = i19 + i18;
                            if (bArr[i20] == 5) {
                                byte[] bArr3 = new byte[bArr.length - i20];
                                System.arraycopy(bArr, i20, bArr3, 0, bArr.length - i20);
                                ArrayList arrayList = new ArrayList(2);
                                arrayList.add(bArr2);
                                arrayList.add(bArr3);
                                return arrayList;
                            }
                            throw ParserException.b("Error parsing vorbis codec private", null);
                        }
                        throw ParserException.b("Error parsing vorbis codec private", null);
                    }
                    throw ParserException.b("Error parsing vorbis codec private", null);
                }
                throw ParserException.b("Error parsing vorbis codec private", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.b("Error parsing vorbis codec private", null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean o(boolean z10) {
            if ("A_OPUS".equals(this.f71292b)) {
                return z10;
            }
            if (this.f71296f > 0) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public void i(m mVar, int i10) throws ParserException {
            char c10;
            List<byte[]> singletonList;
            int i11;
            String str;
            int i12;
            List<byte[]> list;
            String str2;
            int i13;
            int i14;
            int i15;
            int i16;
            int i17;
            c7.d a10;
            String str3 = this.f71292b;
            str3.hashCode();
            String str4 = MimeTypes.AUDIO_RAW;
            switch (str3.hashCode()) {
                case -2095576542:
                    if (str3.equals("V_MPEG4/ISO/AP")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -2095575984:
                    if (str3.equals("V_MPEG4/ISO/SP")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1985379776:
                    if (str3.equals("A_MS/ACM")) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1784763192:
                    if (str3.equals("A_TRUEHD")) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1730367663:
                    if (str3.equals("A_VORBIS")) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1482641358:
                    if (str3.equals("A_MPEG/L2")) {
                        c10 = 5;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1482641357:
                    if (str3.equals("A_MPEG/L3")) {
                        c10 = 6;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1373388978:
                    if (str3.equals("V_MS/VFW/FOURCC")) {
                        c10 = 7;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -933872740:
                    if (str3.equals("S_DVBSUB")) {
                        c10 = '\b';
                        break;
                    }
                    c10 = 65535;
                    break;
                case -538363189:
                    if (str3.equals("V_MPEG4/ISO/ASP")) {
                        c10 = '\t';
                        break;
                    }
                    c10 = 65535;
                    break;
                case -538363109:
                    if (str3.equals("V_MPEG4/ISO/AVC")) {
                        c10 = '\n';
                        break;
                    }
                    c10 = 65535;
                    break;
                case -425012669:
                    if (str3.equals("S_VOBSUB")) {
                        c10 = 11;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -356037306:
                    if (str3.equals("A_DTS/LOSSLESS")) {
                        c10 = '\f';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 62923557:
                    if (str3.equals("A_AAC")) {
                        c10 = '\r';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 62923603:
                    if (str3.equals("A_AC3")) {
                        c10 = 14;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 62927045:
                    if (str3.equals("A_DTS")) {
                        c10 = 15;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 82318131:
                    if (str3.equals("V_AV1")) {
                        c10 = 16;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 82338133:
                    if (str3.equals("V_VP8")) {
                        c10 = 17;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 82338134:
                    if (str3.equals("V_VP9")) {
                        c10 = 18;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 99146302:
                    if (str3.equals("S_HDMV/PGS")) {
                        c10 = 19;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 444813526:
                    if (str3.equals("V_THEORA")) {
                        c10 = 20;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 542569478:
                    if (str3.equals("A_DTS/EXPRESS")) {
                        c10 = 21;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 635596514:
                    if (str3.equals("A_PCM/FLOAT/IEEE")) {
                        c10 = 22;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 725948237:
                    if (str3.equals("A_PCM/INT/BIG")) {
                        c10 = 23;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 725957860:
                    if (str3.equals("A_PCM/INT/LIT")) {
                        c10 = 24;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 738597099:
                    if (str3.equals("S_TEXT/ASS")) {
                        c10 = 25;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 855502857:
                    if (str3.equals("V_MPEGH/ISO/HEVC")) {
                        c10 = 26;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1045209816:
                    if (str3.equals("S_TEXT/WEBVTT")) {
                        c10 = 27;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1422270023:
                    if (str3.equals("S_TEXT/UTF8")) {
                        c10 = 28;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1809237540:
                    if (str3.equals("V_MPEG2")) {
                        c10 = 29;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1950749482:
                    if (str3.equals("A_EAC3")) {
                        c10 = 30;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1950789798:
                    if (str3.equals("A_FLAC")) {
                        c10 = 31;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1951062397:
                    if (str3.equals("A_OPUS")) {
                        c10 = ' ';
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            switch (c10) {
                case 0:
                case 1:
                case '\t':
                    byte[] bArr = this.f71301k;
                    singletonList = bArr == null ? null : Collections.singletonList(bArr);
                    str4 = MimeTypes.VIDEO_MP4V;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case 2:
                    if (l(new g0(g(this.f71292b)))) {
                        int W = s0.W(this.P);
                        if (W != 0) {
                            i11 = W;
                            singletonList = null;
                            str = null;
                            i12 = -1;
                            break;
                        } else {
                            q.i("MatroskaExtractor", "Unsupported PCM bit depth: " + this.P + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        }
                    } else {
                        q.i("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    }
                    str4 = MimeTypes.AUDIO_UNKNOWN;
                    singletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                case 3:
                    this.T = new c0();
                    str4 = MimeTypes.AUDIO_TRUEHD;
                    singletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case 4:
                    singletonList = m(g(this.f71292b));
                    str4 = MimeTypes.AUDIO_VORBIS;
                    i12 = 8192;
                    str = null;
                    i11 = -1;
                    break;
                case 5:
                    str4 = MimeTypes.AUDIO_MPEG_L2;
                    singletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = 4096;
                    break;
                case 6:
                    str4 = MimeTypes.AUDIO_MPEG;
                    singletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = 4096;
                    break;
                case 7:
                    Pair<String, List<byte[]>> k10 = k(new g0(g(this.f71292b)));
                    str4 = (String) k10.first;
                    singletonList = (List) k10.second;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case '\b':
                    byte[] bArr2 = new byte[4];
                    System.arraycopy(g(this.f71292b), 0, bArr2, 0, 4);
                    singletonList = ImmutableList.B(bArr2);
                    str4 = MimeTypes.APPLICATION_DVBSUBS;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case '\n':
                    c7.a b10 = c7.a.b(new g0(g(this.f71292b)));
                    list = b10.f3215a;
                    this.Y = b10.f3216b;
                    str2 = b10.f3220f;
                    str4 = "video/avc";
                    i11 = -1;
                    i12 = -1;
                    List<byte[]> list2 = list;
                    str = str2;
                    singletonList = list2;
                    break;
                case 11:
                    singletonList = ImmutableList.B(g(this.f71292b));
                    str4 = MimeTypes.APPLICATION_VOBSUB;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case '\f':
                    str4 = MimeTypes.AUDIO_DTS_HD;
                    singletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case '\r':
                    singletonList = Collections.singletonList(g(this.f71292b));
                    a.b e10 = q5.a.e(this.f71301k);
                    this.Q = e10.f65054a;
                    this.O = e10.f65055b;
                    str = e10.f65056c;
                    str4 = MimeTypes.AUDIO_AAC;
                    i11 = -1;
                    i12 = -1;
                    break;
                case 14:
                    str4 = MimeTypes.AUDIO_AC3;
                    singletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case 15:
                case 21:
                    str4 = MimeTypes.AUDIO_DTS;
                    singletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case 16:
                    str4 = com.unity3d.services.core.device.MimeTypes.VIDEO_AV1;
                    singletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case 17:
                    str4 = MimeTypes.VIDEO_VP8;
                    singletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case 18:
                    str4 = MimeTypes.VIDEO_VP9;
                    singletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case 19:
                    str4 = MimeTypes.APPLICATION_PGS;
                    singletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case 20:
                    str4 = MimeTypes.VIDEO_UNKNOWN;
                    singletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case 22:
                    if (this.P == 32) {
                        singletonList = null;
                        str = null;
                        i11 = 4;
                        i12 = -1;
                        break;
                    } else {
                        q.i("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + this.P + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        str4 = MimeTypes.AUDIO_UNKNOWN;
                        singletonList = null;
                        str = null;
                        i11 = -1;
                        i12 = -1;
                    }
                case 23:
                    int i18 = this.P;
                    if (i18 == 8) {
                        singletonList = null;
                        str = null;
                        i11 = 3;
                        i12 = -1;
                        break;
                    } else if (i18 == 16) {
                        i13 = 268435456;
                        i11 = i13;
                        singletonList = null;
                        str = null;
                        i12 = -1;
                    } else {
                        q.i("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + this.P + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        str4 = MimeTypes.AUDIO_UNKNOWN;
                        singletonList = null;
                        str = null;
                        i11 = -1;
                        i12 = -1;
                    }
                case 24:
                    i13 = s0.W(this.P);
                    if (i13 == 0) {
                        q.i("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + this.P + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        str4 = MimeTypes.AUDIO_UNKNOWN;
                        singletonList = null;
                        str = null;
                        i11 = -1;
                        i12 = -1;
                        break;
                    }
                    i11 = i13;
                    singletonList = null;
                    str = null;
                    i12 = -1;
                case 25:
                    singletonList = ImmutableList.C(e.f71257e0, g(this.f71292b));
                    str4 = MimeTypes.TEXT_SSA;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case 26:
                    c7.f a11 = c7.f.a(new g0(g(this.f71292b)));
                    list = a11.f3245a;
                    this.Y = a11.f3246b;
                    str2 = a11.f3250f;
                    str4 = "video/hevc";
                    i11 = -1;
                    i12 = -1;
                    List<byte[]> list22 = list;
                    str = str2;
                    singletonList = list22;
                    break;
                case 27:
                    str4 = MimeTypes.TEXT_VTT;
                    singletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case 28:
                    str4 = MimeTypes.APPLICATION_SUBRIP;
                    singletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case 29:
                    str4 = MimeTypes.VIDEO_MPEG2;
                    singletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case 30:
                    str4 = MimeTypes.AUDIO_E_AC3;
                    singletonList = null;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case 31:
                    singletonList = Collections.singletonList(g(this.f71292b));
                    str4 = MimeTypes.AUDIO_FLAC;
                    str = null;
                    i11 = -1;
                    i12 = -1;
                    break;
                case ' ':
                    singletonList = new ArrayList<>(3);
                    singletonList.add(g(this.f71292b));
                    ByteBuffer allocate = ByteBuffer.allocate(8);
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    singletonList.add(allocate.order(byteOrder).putLong(this.R).array());
                    singletonList.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.S).array());
                    str4 = MimeTypes.AUDIO_OPUS;
                    i12 = 5760;
                    str = null;
                    i11 = -1;
                    break;
                default:
                    throw ParserException.b("Unrecognized codec identifier.", null);
            }
            byte[] bArr3 = this.N;
            if (bArr3 != null && (a10 = c7.d.a(new g0(bArr3))) != null) {
                str = a10.f3230c;
                str4 = "video/dolby-vision";
            }
            String str5 = str4;
            int i19 = (this.U ? 2 : 0) | (this.V ? 1 : 0);
            v0.b bVar = new v0.b();
            if (u.l(str5)) {
                bVar.H(this.O).f0(this.Q).Y(i11);
                i14 = 1;
            } else if (u.o(str5)) {
                if (this.f71307q == 0) {
                    int i20 = this.f71305o;
                    i15 = -1;
                    if (i20 == -1) {
                        i20 = this.f71303m;
                    }
                    this.f71305o = i20;
                    int i21 = this.f71306p;
                    if (i21 == -1) {
                        i21 = this.f71304n;
                    }
                    this.f71306p = i21;
                } else {
                    i15 = -1;
                }
                float f10 = (this.f71305o == i15 || (i17 = this.f71306p) == i15) ? -1.0f : (this.f71304n * i16) / (this.f71303m * i17);
                c7.c cVar = this.f71314x ? new c7.c(this.f71315y, this.A, this.f71316z, h()) : null;
                if (this.f71291a != null && e.f71261i0.containsKey(this.f71291a)) {
                    i15 = ((Integer) e.f71261i0.get(this.f71291a)).intValue();
                }
                if (this.f71308r == 0 && Float.compare(this.f71309s, 0.0f) == 0 && Float.compare(this.f71310t, 0.0f) == 0) {
                    if (Float.compare(this.f71311u, 0.0f) == 0) {
                        i15 = 0;
                    } else if (Float.compare(this.f71310t, 90.0f) == 0) {
                        i15 = 90;
                    } else if (Float.compare(this.f71310t, -180.0f) == 0 || Float.compare(this.f71310t, 180.0f) == 0) {
                        i15 = 180;
                    } else if (Float.compare(this.f71310t, -90.0f) == 0) {
                        i15 = 270;
                    }
                }
                bVar.j0(this.f71303m).Q(this.f71304n).a0(f10).d0(i15).b0(this.f71312v).h0(this.f71313w).J(cVar);
                i14 = 2;
            } else if (!MimeTypes.APPLICATION_SUBRIP.equals(str5) && !MimeTypes.TEXT_SSA.equals(str5) && !MimeTypes.TEXT_VTT.equals(str5) && !MimeTypes.APPLICATION_VOBSUB.equals(str5) && !MimeTypes.APPLICATION_PGS.equals(str5) && !MimeTypes.APPLICATION_DVBSUBS.equals(str5)) {
                throw ParserException.b("Unexpected MIME type.", null);
            } else {
                i14 = 3;
            }
            if (this.f71291a != null && !e.f71261i0.containsKey(this.f71291a)) {
                bVar.U(this.f71291a);
            }
            v0 E = bVar.R(i10).e0(str5).W(i12).V(this.W).g0(i19).T(singletonList).I(str).M(this.f71302l).E();
            b0 track = mVar.track(this.f71293c, i14);
            this.X = track;
            track.b(E);
        }

        public void j() {
            c0 c0Var = this.T;
            if (c0Var != null) {
                c0Var.a(this.X, this.f71300j);
            }
        }

        public void n() {
            c0 c0Var = this.T;
            if (c0Var != null) {
                c0Var.b();
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("htc_video_rotA-000", 0);
        hashMap.put("htc_video_rotA-090", 90);
        hashMap.put("htc_video_rotA-180", 180);
        hashMap.put("htc_video_rotA-270", 270);
        f71261i0 = Collections.unmodifiableMap(hashMap);
    }

    public e() {
        this(0);
    }

    private boolean A(y yVar, long j10) {
        if (this.f71288y) {
            this.A = j10;
            yVar.f67204a = this.f71289z;
            this.f71288y = false;
            return true;
        }
        if (this.f71285v) {
            long j11 = this.A;
            if (j11 != -1) {
                yVar.f67204a = j11;
                this.A = -1L;
                return true;
            }
        }
        return false;
    }

    private void B(l lVar, int i10) throws IOException {
        if (this.f71270g.f() >= i10) {
            return;
        }
        if (this.f71270g.b() < i10) {
            g0 g0Var = this.f71270g;
            g0Var.c(Math.max(g0Var.b() * 2, i10));
        }
        lVar.readFully(this.f71270g.d(), this.f71270g.f(), i10 - this.f71270g.f());
        this.f71270g.O(i10);
    }

    private void C() {
        this.S = 0;
        this.T = 0;
        this.U = 0;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = 0;
        this.Z = (byte) 0;
        this.f71263a0 = false;
        this.f71273j.L(0);
    }

    private long D(long j10) throws ParserException {
        long j11 = this.f71281r;
        if (j11 != -9223372036854775807L) {
            return s0.F0(j10, j11, 1000L);
        }
        throw ParserException.b("Can't scale timecode prior to timecodeScale being set.", null);
    }

    private static void E(String str, long j10, byte[] bArr) {
        byte[] r10;
        int i10;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 738597099:
                if (str.equals("S_TEXT/ASS")) {
                    c10 = 0;
                    break;
                }
                break;
            case 1045209816:
                if (str.equals("S_TEXT/WEBVTT")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1422270023:
                if (str.equals("S_TEXT/UTF8")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                r10 = r(j10, "%01d:%02d:%02d:%02d", 10000L);
                i10 = 21;
                break;
            case 1:
                r10 = r(j10, "%02d:%02d:%02d.%03d", 1000L);
                i10 = 25;
                break;
            case 2:
                r10 = r(j10, "%02d:%02d:%02d,%03d", 1000L);
                i10 = 19;
                break;
            default:
                throw new IllegalArgumentException();
        }
        System.arraycopy(r10, 0, bArr, i10, r10.length);
    }

    private int H(l lVar, c cVar, int i10, boolean z10) throws IOException {
        boolean z11;
        int i11;
        if ("S_TEXT/UTF8".equals(cVar.f71292b)) {
            I(lVar, f71256d0, i10);
            return p();
        } else if ("S_TEXT/ASS".equals(cVar.f71292b)) {
            I(lVar, f71258f0, i10);
            return p();
        } else if ("S_TEXT/WEBVTT".equals(cVar.f71292b)) {
            I(lVar, f71259g0, i10);
            return p();
        } else {
            b0 b0Var = cVar.X;
            boolean z12 = true;
            if (!this.V) {
                if (cVar.f71298h) {
                    this.O &= -1073741825;
                    int i12 = 128;
                    if (!this.W) {
                        lVar.readFully(this.f71270g.d(), 0, 1);
                        this.S++;
                        if ((this.f71270g.d()[0] & ByteCompanionObject.MIN_VALUE) != 128) {
                            this.Z = this.f71270g.d()[0];
                            this.W = true;
                        } else {
                            throw ParserException.b("Extension bit is set in signal byte", null);
                        }
                    }
                    byte b10 = this.Z;
                    if ((b10 & 1) == 1) {
                        if ((b10 & 2) == 2) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        this.O |= 1073741824;
                        if (!this.f71263a0) {
                            lVar.readFully(this.f71275l.d(), 0, 8);
                            this.S += 8;
                            this.f71263a0 = true;
                            byte[] d10 = this.f71270g.d();
                            if (!z11) {
                                i12 = 0;
                            }
                            d10[0] = (byte) (i12 | 8);
                            this.f71270g.P(0);
                            b0Var.c(this.f71270g, 1, 1);
                            this.T++;
                            this.f71275l.P(0);
                            b0Var.c(this.f71275l, 8, 1);
                            this.T += 8;
                        }
                        if (z11) {
                            if (!this.X) {
                                lVar.readFully(this.f71270g.d(), 0, 1);
                                this.S++;
                                this.f71270g.P(0);
                                this.Y = this.f71270g.D();
                                this.X = true;
                            }
                            int i13 = this.Y * 4;
                            this.f71270g.L(i13);
                            lVar.readFully(this.f71270g.d(), 0, i13);
                            this.S += i13;
                            short s10 = (short) ((this.Y / 2) + 1);
                            int i14 = (s10 * 6) + 2;
                            ByteBuffer byteBuffer = this.f71278o;
                            if (byteBuffer == null || byteBuffer.capacity() < i14) {
                                this.f71278o = ByteBuffer.allocate(i14);
                            }
                            this.f71278o.position(0);
                            this.f71278o.putShort(s10);
                            int i15 = 0;
                            int i16 = 0;
                            while (true) {
                                i11 = this.Y;
                                if (i15 >= i11) {
                                    break;
                                }
                                int H = this.f71270g.H();
                                if (i15 % 2 == 0) {
                                    this.f71278o.putShort((short) (H - i16));
                                } else {
                                    this.f71278o.putInt(H - i16);
                                }
                                i15++;
                                i16 = H;
                            }
                            int i17 = (i10 - this.S) - i16;
                            if (i11 % 2 == 1) {
                                this.f71278o.putInt(i17);
                            } else {
                                this.f71278o.putShort((short) i17);
                                this.f71278o.putInt(0);
                            }
                            this.f71276m.N(this.f71278o.array(), i14);
                            b0Var.c(this.f71276m, i14, 1);
                            this.T += i14;
                        }
                    }
                } else {
                    byte[] bArr = cVar.f71299i;
                    if (bArr != null) {
                        this.f71273j.N(bArr, bArr.length);
                    }
                }
                if (cVar.o(z10)) {
                    this.O |= 268435456;
                    this.f71277n.L(0);
                    int f10 = (this.f71273j.f() + i10) - this.S;
                    this.f71270g.L(4);
                    this.f71270g.d()[0] = (byte) ((f10 >> 24) & 255);
                    this.f71270g.d()[1] = (byte) ((f10 >> 16) & 255);
                    this.f71270g.d()[2] = (byte) ((f10 >> 8) & 255);
                    this.f71270g.d()[3] = (byte) (f10 & 255);
                    b0Var.c(this.f71270g, 4, 2);
                    this.T += 4;
                }
                this.V = true;
            }
            int f11 = i10 + this.f71273j.f();
            if (!"V_MPEG4/ISO/AVC".equals(cVar.f71292b) && !"V_MPEGH/ISO/HEVC".equals(cVar.f71292b)) {
                if (cVar.T != null) {
                    if (this.f71273j.f() != 0) {
                        z12 = false;
                    }
                    b7.a.g(z12);
                    cVar.T.d(lVar);
                }
                while (true) {
                    int i18 = this.S;
                    if (i18 >= f11) {
                        break;
                    }
                    int J = J(lVar, b0Var, f11 - i18);
                    this.S += J;
                    this.T += J;
                }
            } else {
                byte[] d11 = this.f71269f.d();
                d11[0] = 0;
                d11[1] = 0;
                d11[2] = 0;
                int i19 = cVar.Y;
                int i20 = 4 - i19;
                while (this.S < f11) {
                    int i21 = this.U;
                    if (i21 == 0) {
                        K(lVar, d11, i20, i19);
                        this.S += i19;
                        this.f71269f.P(0);
                        this.U = this.f71269f.H();
                        this.f71268e.P(0);
                        b0Var.a(this.f71268e, 4);
                        this.T += 4;
                    } else {
                        int J2 = J(lVar, b0Var, i21);
                        this.S += J2;
                        this.T += J2;
                        this.U -= J2;
                    }
                }
            }
            if ("A_VORBIS".equals(cVar.f71292b)) {
                this.f71271h.P(0);
                b0Var.a(this.f71271h, 4);
                this.T += 4;
            }
            return p();
        }
    }

    private void I(l lVar, byte[] bArr, int i10) throws IOException {
        int length = bArr.length + i10;
        if (this.f71274k.b() < length) {
            this.f71274k.M(Arrays.copyOf(bArr, length + i10));
        } else {
            System.arraycopy(bArr, 0, this.f71274k.d(), 0, bArr.length);
        }
        lVar.readFully(this.f71274k.d(), bArr.length, i10);
        this.f71274k.P(0);
        this.f71274k.O(length);
    }

    private int J(l lVar, b0 b0Var, int i10) throws IOException {
        int a10 = this.f71273j.a();
        if (a10 > 0) {
            int min = Math.min(i10, a10);
            b0Var.a(this.f71273j, min);
            return min;
        }
        return b0Var.f(lVar, i10, false);
    }

    private void K(l lVar, byte[] bArr, int i10, int i11) throws IOException {
        int min = Math.min(i11, this.f71273j.a());
        lVar.readFully(bArr, i10 + min, i11 - min);
        if (min > 0) {
            this.f71273j.j(bArr, i10, min);
        }
    }

    private void h(int i10) throws ParserException {
        if (this.C != null && this.D != null) {
            return;
        }
        throw ParserException.b("Element " + i10 + " must be in a Cues", null);
    }

    private void i(int i10) throws ParserException {
        if (this.f71284u != null) {
            return;
        }
        throw ParserException.b("Element " + i10 + " must be in a TrackEntry", null);
    }

    private void j() {
        b7.a.i(this.f71265b0);
    }

    private z l(@Nullable r rVar, @Nullable r rVar2) {
        int i10;
        if (this.f71280q != -1 && this.f71283t != -9223372036854775807L && rVar != null && rVar.c() != 0 && rVar2 != null && rVar2.c() == rVar.c()) {
            int c10 = rVar.c();
            int[] iArr = new int[c10];
            long[] jArr = new long[c10];
            long[] jArr2 = new long[c10];
            long[] jArr3 = new long[c10];
            int i11 = 0;
            for (int i12 = 0; i12 < c10; i12++) {
                jArr3[i12] = rVar.b(i12);
                jArr[i12] = this.f71280q + rVar2.b(i12);
            }
            while (true) {
                i10 = c10 - 1;
                if (i11 >= i10) {
                    break;
                }
                int i13 = i11 + 1;
                iArr[i11] = (int) (jArr[i13] - jArr[i11]);
                jArr2[i11] = jArr3[i13] - jArr3[i11];
                i11 = i13;
            }
            iArr[i10] = (int) ((this.f71280q + this.f71279p) - jArr[i10]);
            long j10 = this.f71283t - jArr3[i10];
            jArr2[i10] = j10;
            if (j10 <= 0) {
                q.i("MatroskaExtractor", "Discarding last cue point with unexpected duration: " + j10);
                iArr = Arrays.copyOf(iArr, i10);
                jArr = Arrays.copyOf(jArr, i10);
                jArr2 = Arrays.copyOf(jArr2, i10);
                jArr3 = Arrays.copyOf(jArr3, i10);
            }
            return new t5.c(iArr, jArr, jArr2, jArr3);
        }
        return new z.b(this.f71283t);
    }

    private void m(c cVar, long j10, int i10, int i11, int i12) {
        c0 c0Var = cVar.T;
        if (c0Var != null) {
            c0Var.c(cVar.X, j10, i10, i11, i12, cVar.f71300j);
        } else {
            if ("S_TEXT/UTF8".equals(cVar.f71292b) || "S_TEXT/ASS".equals(cVar.f71292b) || "S_TEXT/WEBVTT".equals(cVar.f71292b)) {
                if (this.K > 1) {
                    q.i("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j11 = this.I;
                    if (j11 == -9223372036854775807L) {
                        q.i("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        E(cVar.f71292b, j11, this.f71274k.d());
                        int e10 = this.f71274k.e();
                        while (true) {
                            if (e10 >= this.f71274k.f()) {
                                break;
                            } else if (this.f71274k.d()[e10] == 0) {
                                this.f71274k.O(e10);
                                break;
                            } else {
                                e10++;
                            }
                        }
                        b0 b0Var = cVar.X;
                        g0 g0Var = this.f71274k;
                        b0Var.a(g0Var, g0Var.f());
                        i11 += this.f71274k.f();
                    }
                }
            }
            if ((268435456 & i10) != 0) {
                if (this.K > 1) {
                    this.f71277n.L(0);
                } else {
                    int f10 = this.f71277n.f();
                    cVar.X.c(this.f71277n, f10, 2);
                    i11 += f10;
                }
            }
            cVar.X.e(j10, i10, i11, i12, cVar.f71300j);
        }
        this.F = true;
    }

    private static int[] o(@Nullable int[] iArr, int i10) {
        if (iArr == null) {
            return new int[i10];
        }
        if (iArr.length >= i10) {
            return iArr;
        }
        return new int[Math.max(iArr.length * 2, i10)];
    }

    private int p() {
        int i10 = this.T;
        C();
        return i10;
    }

    private static byte[] r(long j10, String str, long j11) {
        boolean z10;
        if (j10 != -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        int i10 = (int) (j10 / 3600000000L);
        long j12 = j10 - (i10 * 3600000000L);
        int i11 = (int) (j12 / 60000000);
        long j13 = j12 - (i11 * 60000000);
        int i12 = (int) (j13 / 1000000);
        return s0.h0(String.format(Locale.US, str, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf((int) ((j13 - (i12 * 1000000)) / j11))));
    }

    private static boolean x(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2095576542:
                if (str.equals("V_MPEG4/ISO/AP")) {
                    c10 = 0;
                    break;
                }
                break;
            case -2095575984:
                if (str.equals("V_MPEG4/ISO/SP")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1985379776:
                if (str.equals("A_MS/ACM")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1784763192:
                if (str.equals("A_TRUEHD")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1730367663:
                if (str.equals("A_VORBIS")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1482641358:
                if (str.equals("A_MPEG/L2")) {
                    c10 = 5;
                    break;
                }
                break;
            case -1482641357:
                if (str.equals("A_MPEG/L3")) {
                    c10 = 6;
                    break;
                }
                break;
            case -1373388978:
                if (str.equals("V_MS/VFW/FOURCC")) {
                    c10 = 7;
                    break;
                }
                break;
            case -933872740:
                if (str.equals("S_DVBSUB")) {
                    c10 = '\b';
                    break;
                }
                break;
            case -538363189:
                if (str.equals("V_MPEG4/ISO/ASP")) {
                    c10 = '\t';
                    break;
                }
                break;
            case -538363109:
                if (str.equals("V_MPEG4/ISO/AVC")) {
                    c10 = '\n';
                    break;
                }
                break;
            case -425012669:
                if (str.equals("S_VOBSUB")) {
                    c10 = 11;
                    break;
                }
                break;
            case -356037306:
                if (str.equals("A_DTS/LOSSLESS")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 62923557:
                if (str.equals("A_AAC")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 62923603:
                if (str.equals("A_AC3")) {
                    c10 = 14;
                    break;
                }
                break;
            case 62927045:
                if (str.equals("A_DTS")) {
                    c10 = 15;
                    break;
                }
                break;
            case 82318131:
                if (str.equals("V_AV1")) {
                    c10 = 16;
                    break;
                }
                break;
            case 82338133:
                if (str.equals("V_VP8")) {
                    c10 = 17;
                    break;
                }
                break;
            case 82338134:
                if (str.equals("V_VP9")) {
                    c10 = 18;
                    break;
                }
                break;
            case 99146302:
                if (str.equals("S_HDMV/PGS")) {
                    c10 = 19;
                    break;
                }
                break;
            case 444813526:
                if (str.equals("V_THEORA")) {
                    c10 = 20;
                    break;
                }
                break;
            case 542569478:
                if (str.equals("A_DTS/EXPRESS")) {
                    c10 = 21;
                    break;
                }
                break;
            case 635596514:
                if (str.equals("A_PCM/FLOAT/IEEE")) {
                    c10 = 22;
                    break;
                }
                break;
            case 725948237:
                if (str.equals("A_PCM/INT/BIG")) {
                    c10 = 23;
                    break;
                }
                break;
            case 725957860:
                if (str.equals("A_PCM/INT/LIT")) {
                    c10 = 24;
                    break;
                }
                break;
            case 738597099:
                if (str.equals("S_TEXT/ASS")) {
                    c10 = 25;
                    break;
                }
                break;
            case 855502857:
                if (str.equals("V_MPEGH/ISO/HEVC")) {
                    c10 = 26;
                    break;
                }
                break;
            case 1045209816:
                if (str.equals("S_TEXT/WEBVTT")) {
                    c10 = 27;
                    break;
                }
                break;
            case 1422270023:
                if (str.equals("S_TEXT/UTF8")) {
                    c10 = 28;
                    break;
                }
                break;
            case 1809237540:
                if (str.equals("V_MPEG2")) {
                    c10 = 29;
                    break;
                }
                break;
            case 1950749482:
                if (str.equals("A_EAC3")) {
                    c10 = 30;
                    break;
                }
                break;
            case 1950789798:
                if (str.equals("A_FLAC")) {
                    c10 = 31;
                    break;
                }
                break;
            case 1951062397:
                if (str.equals("A_OPUS")) {
                    c10 = ' ';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case ' ':
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] z() {
        return new k[]{new e()};
    }

    @CallSuper
    protected void F(int i10, long j10, long j11) throws ParserException {
        j();
        if (i10 != 160) {
            if (i10 != 174) {
                if (i10 != 187) {
                    if (i10 != 19899) {
                        if (i10 != 20533) {
                            if (i10 != 21968) {
                                if (i10 != 408125543) {
                                    if (i10 != 475249515) {
                                        if (i10 == 524531317 && !this.f71285v) {
                                            if (this.f71267d && this.f71289z != -1) {
                                                this.f71288y = true;
                                                return;
                                            }
                                            this.f71265b0.c(new z.b(this.f71283t));
                                            this.f71285v = true;
                                            return;
                                        }
                                        return;
                                    }
                                    this.C = new r();
                                    this.D = new r();
                                    return;
                                }
                                long j12 = this.f71280q;
                                if (j12 != -1 && j12 != j10) {
                                    throw ParserException.b("Multiple Segment elements not supported", null);
                                }
                                this.f71280q = j10;
                                this.f71279p = j11;
                                return;
                            }
                            s(i10).f71314x = true;
                            return;
                        }
                        s(i10).f71298h = true;
                        return;
                    }
                    this.f71286w = -1;
                    this.f71287x = -1L;
                    return;
                }
                this.E = false;
                return;
            }
            this.f71284u = new c();
            return;
        }
        this.Q = false;
        this.R = 0L;
    }

    @CallSuper
    protected void G(int i10, String str) throws ParserException {
        if (i10 != 134) {
            if (i10 != 17026) {
                if (i10 != 21358) {
                    if (i10 == 2274716) {
                        s(i10).W = str;
                        return;
                    }
                    return;
                }
                s(i10).f71291a = str;
                return;
            } else if (!"webm".equals(str) && !"matroska".equals(str)) {
                throw ParserException.b("DocType " + str + " not supported", null);
            } else {
                return;
            }
        }
        s(i10).f71292b = str;
    }

    @Override // t5.k
    public final int b(l lVar, y yVar) throws IOException {
        this.F = false;
        boolean z10 = true;
        while (z10 && !this.F) {
            z10 = this.f71262a.a(lVar);
            if (z10 && A(yVar, lVar.getPosition())) {
                return 1;
            }
        }
        if (z10) {
            return 0;
        }
        for (int i10 = 0; i10 < this.f71266c.size(); i10++) {
            c valueAt = this.f71266c.valueAt(i10);
            valueAt.f();
            valueAt.j();
        }
        return -1;
    }

    @Override // t5.k
    public final boolean c(l lVar) throws IOException {
        return new f().b(lVar);
    }

    @Override // t5.k
    public final void d(m mVar) {
        this.f71265b0 = mVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x0231, code lost:
        throw com.google.android.exoplayer2.ParserException.b("EBML lacing sample size out of range.", null);
     */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void k(int r22, int r23, t5.l r24) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 749
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: z5.e.k(int, int, t5.l):void");
    }

    @CallSuper
    protected void n(int i10) throws ParserException {
        j();
        if (i10 != 160) {
            if (i10 != 174) {
                if (i10 != 19899) {
                    if (i10 != 25152) {
                        if (i10 != 28032) {
                            if (i10 != 357149030) {
                                if (i10 != 374648427) {
                                    if (i10 == 475249515) {
                                        if (!this.f71285v) {
                                            this.f71265b0.c(l(this.C, this.D));
                                            this.f71285v = true;
                                        }
                                        this.C = null;
                                        this.D = null;
                                        return;
                                    }
                                    return;
                                } else if (this.f71266c.size() != 0) {
                                    this.f71265b0.endTracks();
                                    return;
                                } else {
                                    throw ParserException.b("No valid tracks were found", null);
                                }
                            }
                            if (this.f71281r == -9223372036854775807L) {
                                this.f71281r = 1000000L;
                            }
                            long j10 = this.f71282s;
                            if (j10 != -9223372036854775807L) {
                                this.f71283t = D(j10);
                                return;
                            }
                            return;
                        }
                        i(i10);
                        c cVar = this.f71284u;
                        if (cVar.f71298h && cVar.f71299i != null) {
                            throw ParserException.b("Combining encryption and compression is not supported", null);
                        }
                        return;
                    }
                    i(i10);
                    c cVar2 = this.f71284u;
                    if (cVar2.f71298h) {
                        if (cVar2.f71300j != null) {
                            cVar2.f71302l = new DrmInitData(new DrmInitData.SchemeData(o5.l.f63096a, "video/webm", this.f71284u.f71300j.f67101b));
                            return;
                        }
                        throw ParserException.b("Encrypted Track found but ContentEncKeyID was not found", null);
                    }
                    return;
                }
                int i11 = this.f71286w;
                if (i11 != -1) {
                    long j11 = this.f71287x;
                    if (j11 != -1) {
                        if (i11 == 475249515) {
                            this.f71289z = j11;
                            return;
                        }
                        return;
                    }
                }
                throw ParserException.b("Mandatory element SeekID or SeekPosition not found", null);
            }
            c cVar3 = (c) b7.a.i(this.f71284u);
            String str = cVar3.f71292b;
            if (str != null) {
                if (x(str)) {
                    cVar3.i(this.f71265b0, cVar3.f71293c);
                    this.f71266c.put(cVar3.f71293c, cVar3);
                }
                this.f71284u = null;
                return;
            }
            throw ParserException.b("CodecId is missing in TrackEntry element", null);
        } else if (this.G == 2) {
            c cVar4 = this.f71266c.get(this.M);
            cVar4.f();
            if (this.R > 0 && "A_OPUS".equals(cVar4.f71292b)) {
                this.f71277n.M(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.R).array());
            }
            int i12 = 0;
            for (int i13 = 0; i13 < this.K; i13++) {
                i12 += this.L[i13];
            }
            int i14 = 0;
            while (i14 < this.K) {
                long j12 = this.H + ((cVar4.f71295e * i14) / 1000);
                int i15 = this.O;
                if (i14 == 0 && !this.Q) {
                    i15 |= 1;
                }
                int i16 = this.L[i14];
                int i17 = i12 - i16;
                m(cVar4, j12, i15, i16, i17);
                i14++;
                i12 = i17;
            }
            this.G = 0;
        }
    }

    @CallSuper
    protected void q(int i10, double d10) throws ParserException {
        if (i10 != 181) {
            if (i10 != 17545) {
                switch (i10) {
                    case 21969:
                        s(i10).D = (float) d10;
                        return;
                    case 21970:
                        s(i10).E = (float) d10;
                        return;
                    case 21971:
                        s(i10).F = (float) d10;
                        return;
                    case 21972:
                        s(i10).G = (float) d10;
                        return;
                    case 21973:
                        s(i10).H = (float) d10;
                        return;
                    case 21974:
                        s(i10).I = (float) d10;
                        return;
                    case 21975:
                        s(i10).J = (float) d10;
                        return;
                    case 21976:
                        s(i10).K = (float) d10;
                        return;
                    case 21977:
                        s(i10).L = (float) d10;
                        return;
                    case 21978:
                        s(i10).M = (float) d10;
                        return;
                    default:
                        switch (i10) {
                            case 30323:
                                s(i10).f71309s = (float) d10;
                                return;
                            case 30324:
                                s(i10).f71310t = (float) d10;
                                return;
                            case 30325:
                                s(i10).f71311u = (float) d10;
                                return;
                            default:
                                return;
                        }
                }
            }
            this.f71282s = (long) d10;
            return;
        }
        s(i10).Q = (int) d10;
    }

    protected c s(int i10) throws ParserException {
        i(i10);
        return this.f71284u;
    }

    @Override // t5.k
    @CallSuper
    public void seek(long j10, long j11) {
        this.B = -9223372036854775807L;
        this.G = 0;
        this.f71262a.reset();
        this.f71264b.e();
        C();
        for (int i10 = 0; i10 < this.f71266c.size(); i10++) {
            this.f71266c.valueAt(i10).n();
        }
    }

    @CallSuper
    protected int t(int i10) {
        switch (i10) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 238:
            case 241:
            case 251:
            case 16871:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30114:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 21358:
            case 2274716:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30113:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16877:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    protected void u(c cVar, l lVar, int i10) throws IOException {
        if (cVar.f71297g != 1685485123 && cVar.f71297g != 1685480259) {
            lVar.skipFully(i10);
            return;
        }
        byte[] bArr = new byte[i10];
        cVar.N = bArr;
        lVar.readFully(bArr, 0, i10);
    }

    protected void v(c cVar, int i10, l lVar, int i11) throws IOException {
        if (i10 == 4 && "V_VP9".equals(cVar.f71292b)) {
            this.f71277n.L(i11);
            lVar.readFully(this.f71277n.d(), 0, i11);
            return;
        }
        lVar.skipFully(i11);
    }

    @CallSuper
    protected void w(int i10, long j10) throws ParserException {
        if (i10 != 20529) {
            if (i10 != 20530) {
                boolean z10 = false;
                switch (i10) {
                    case 131:
                        s(i10).f71294d = (int) j10;
                        return;
                    case 136:
                        c s10 = s(i10);
                        if (j10 == 1) {
                            z10 = true;
                        }
                        s10.V = z10;
                        return;
                    case 155:
                        this.I = D(j10);
                        return;
                    case 159:
                        s(i10).O = (int) j10;
                        return;
                    case 176:
                        s(i10).f71303m = (int) j10;
                        return;
                    case 179:
                        h(i10);
                        this.C.a(D(j10));
                        return;
                    case 186:
                        s(i10).f71304n = (int) j10;
                        return;
                    case 215:
                        s(i10).f71293c = (int) j10;
                        return;
                    case 231:
                        this.B = D(j10);
                        return;
                    case 238:
                        this.P = (int) j10;
                        return;
                    case 241:
                        if (!this.E) {
                            h(i10);
                            this.D.a(j10);
                            this.E = true;
                            return;
                        }
                        return;
                    case 251:
                        this.Q = true;
                        return;
                    case 16871:
                        s(i10).f71297g = (int) j10;
                        return;
                    case 16980:
                        if (j10 != 3) {
                            throw ParserException.b("ContentCompAlgo " + j10 + " not supported", null);
                        }
                        return;
                    case 17029:
                        if (j10 < 1 || j10 > 2) {
                            throw ParserException.b("DocTypeReadVersion " + j10 + " not supported", null);
                        }
                        return;
                    case 17143:
                        if (j10 != 1) {
                            throw ParserException.b("EBMLReadVersion " + j10 + " not supported", null);
                        }
                        return;
                    case 18401:
                        if (j10 != 5) {
                            throw ParserException.b("ContentEncAlgo " + j10 + " not supported", null);
                        }
                        return;
                    case 18408:
                        if (j10 != 1) {
                            throw ParserException.b("AESSettingsCipherMode " + j10 + " not supported", null);
                        }
                        return;
                    case 21420:
                        this.f71287x = j10 + this.f71280q;
                        return;
                    case 21432:
                        int i11 = (int) j10;
                        i(i10);
                        if (i11 != 0) {
                            if (i11 != 1) {
                                if (i11 != 3) {
                                    if (i11 == 15) {
                                        this.f71284u.f71313w = 3;
                                        return;
                                    }
                                    return;
                                }
                                this.f71284u.f71313w = 1;
                                return;
                            }
                            this.f71284u.f71313w = 2;
                            return;
                        }
                        this.f71284u.f71313w = 0;
                        return;
                    case 21680:
                        s(i10).f71305o = (int) j10;
                        return;
                    case 21682:
                        s(i10).f71307q = (int) j10;
                        return;
                    case 21690:
                        s(i10).f71306p = (int) j10;
                        return;
                    case 21930:
                        c s11 = s(i10);
                        if (j10 == 1) {
                            z10 = true;
                        }
                        s11.U = z10;
                        return;
                    case 21998:
                        s(i10).f71296f = (int) j10;
                        return;
                    case 22186:
                        s(i10).R = j10;
                        return;
                    case 22203:
                        s(i10).S = j10;
                        return;
                    case 25188:
                        s(i10).P = (int) j10;
                        return;
                    case 30114:
                        this.R = j10;
                        return;
                    case 30321:
                        i(i10);
                        int i12 = (int) j10;
                        if (i12 != 0) {
                            if (i12 != 1) {
                                if (i12 != 2) {
                                    if (i12 == 3) {
                                        this.f71284u.f71308r = 3;
                                        return;
                                    }
                                    return;
                                }
                                this.f71284u.f71308r = 2;
                                return;
                            }
                            this.f71284u.f71308r = 1;
                            return;
                        }
                        this.f71284u.f71308r = 0;
                        return;
                    case 2352003:
                        s(i10).f71295e = (int) j10;
                        return;
                    case 2807729:
                        this.f71281r = j10;
                        return;
                    default:
                        switch (i10) {
                            case 21945:
                                i(i10);
                                int i13 = (int) j10;
                                if (i13 != 1) {
                                    if (i13 == 2) {
                                        this.f71284u.A = 1;
                                        return;
                                    }
                                    return;
                                }
                                this.f71284u.A = 2;
                                return;
                            case 21946:
                                i(i10);
                                int c10 = c7.c.c((int) j10);
                                if (c10 != -1) {
                                    this.f71284u.f71316z = c10;
                                    return;
                                }
                                return;
                            case 21947:
                                i(i10);
                                this.f71284u.f71314x = true;
                                int b10 = c7.c.b((int) j10);
                                if (b10 != -1) {
                                    this.f71284u.f71315y = b10;
                                    return;
                                }
                                return;
                            case 21948:
                                s(i10).B = (int) j10;
                                return;
                            case 21949:
                                s(i10).C = (int) j10;
                                return;
                            default:
                                return;
                        }
                }
            } else if (j10 != 1) {
                throw ParserException.b("ContentEncodingScope " + j10 + " not supported", null);
            }
        } else if (j10 == 0) {
        } else {
            throw ParserException.b("ContentEncodingOrder " + j10 + " not supported", null);
        }
    }

    @CallSuper
    protected boolean y(int i10) {
        if (i10 != 357149030 && i10 != 524531317 && i10 != 475249515 && i10 != 374648427) {
            return false;
        }
        return true;
    }

    public e(int i10) {
        this(new z5.a(), i10);
    }

    e(z5.c cVar, int i10) {
        this.f71280q = -1L;
        this.f71281r = -9223372036854775807L;
        this.f71282s = -9223372036854775807L;
        this.f71283t = -9223372036854775807L;
        this.f71289z = -1L;
        this.A = -1L;
        this.B = -9223372036854775807L;
        this.f71262a = cVar;
        cVar.b(new b());
        this.f71267d = (i10 & 1) == 0;
        this.f71264b = new g();
        this.f71266c = new SparseArray<>();
        this.f71270g = new g0(4);
        this.f71271h = new g0(ByteBuffer.allocate(4).putInt(-1).array());
        this.f71272i = new g0(4);
        this.f71268e = new g0(v.f2528a);
        this.f71269f = new g0(4);
        this.f71273j = new g0();
        this.f71274k = new g0();
        this.f71275l = new g0(8);
        this.f71276m = new g0();
        this.f71277n = new g0();
        this.L = new int[1];
    }

    @Override // t5.k
    public final void release() {
    }
}
