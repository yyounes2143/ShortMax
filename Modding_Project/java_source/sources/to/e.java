package to;

import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import ao.a;
import ao.c0;
import ao.i0;
import ao.j0;
import ao.n;
import ao.o0;
import ao.p;
import ao.p0;
import ao.q;
import ao.r;
import ao.u;
import cn.b0;
import cn.m0;
import cn.s;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
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
import java.util.Objects;
import java.util.UUID;
import kotlin.jvm.internal.ByteCompanionObject;
import yo.r;
import zm.g;
/* compiled from: MatroskaExtractor.java */
/* loaded from: classes8.dex */
public class e implements p {
    @Deprecated

    /* renamed from: f0  reason: collision with root package name */
    public static final u f67529f0 = new u() { // from class: to.d
        @Override // ao.u
        public final p[] createExtractors() {
            p[] B;
            B = e.B();
            return B;
        }
    };

    /* renamed from: g0  reason: collision with root package name */
    private static final byte[] f67530g0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: h0  reason: collision with root package name */
    private static final byte[] f67531h0 = m0.u0("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* renamed from: i0  reason: collision with root package name */
    private static final byte[] f67532i0 = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* renamed from: j0  reason: collision with root package name */
    private static final byte[] f67533j0 = {87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};

    /* renamed from: k0  reason: collision with root package name */
    private static final UUID f67534k0 = new UUID(72057594037932032L, -9223371306706625679L);

    /* renamed from: l0  reason: collision with root package name */
    private static final Map<String, Integer> f67535l0;
    private long A;
    private boolean B;
    private long C;
    private long D;
    private long E;
    @Nullable
    private s F;
    @Nullable
    private s G;
    private boolean H;
    private boolean I;
    private int J;
    private long K;
    private long L;
    private int M;
    private int N;
    private int[] O;
    private int P;
    private int Q;
    private int R;
    private int S;
    private boolean T;
    private long U;
    private int V;
    private int W;
    private int X;
    private boolean Y;
    private boolean Z;

    /* renamed from: a  reason: collision with root package name */
    private final to.c f67536a;

    /* renamed from: a0  reason: collision with root package name */
    private boolean f67537a0;

    /* renamed from: b  reason: collision with root package name */
    private final g f67538b;

    /* renamed from: b0  reason: collision with root package name */
    private int f67539b0;

    /* renamed from: c  reason: collision with root package name */
    private final SparseArray<c> f67540c;

    /* renamed from: c0  reason: collision with root package name */
    private byte f67541c0;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f67542d;

    /* renamed from: d0  reason: collision with root package name */
    private boolean f67543d0;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f67544e;

    /* renamed from: e0  reason: collision with root package name */
    private r f67545e0;

    /* renamed from: f  reason: collision with root package name */
    private final r.a f67546f;

    /* renamed from: g  reason: collision with root package name */
    private final b0 f67547g;

    /* renamed from: h  reason: collision with root package name */
    private final b0 f67548h;

    /* renamed from: i  reason: collision with root package name */
    private final b0 f67549i;

    /* renamed from: j  reason: collision with root package name */
    private final b0 f67550j;

    /* renamed from: k  reason: collision with root package name */
    private final b0 f67551k;

    /* renamed from: l  reason: collision with root package name */
    private final b0 f67552l;

    /* renamed from: m  reason: collision with root package name */
    private final b0 f67553m;

    /* renamed from: n  reason: collision with root package name */
    private final b0 f67554n;

    /* renamed from: o  reason: collision with root package name */
    private final b0 f67555o;

    /* renamed from: p  reason: collision with root package name */
    private final b0 f67556p;

    /* renamed from: q  reason: collision with root package name */
    private ByteBuffer f67557q;

    /* renamed from: r  reason: collision with root package name */
    private long f67558r;

    /* renamed from: s  reason: collision with root package name */
    private long f67559s;

    /* renamed from: t  reason: collision with root package name */
    private long f67560t;

    /* renamed from: u  reason: collision with root package name */
    private long f67561u;

    /* renamed from: v  reason: collision with root package name */
    private long f67562v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f67563w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private c f67564x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f67565y;

    /* renamed from: z  reason: collision with root package name */
    private int f67566z;

    /* compiled from: MatroskaExtractor.java */
    /* loaded from: classes8.dex */
    private final class b implements to.b {
        private b() {
        }

        @Override // to.b
        public void a(int i10, int i11, q qVar) throws IOException {
            e.this.m(i10, i11, qVar);
        }

        @Override // to.b
        public void endMasterElement(int i10) throws ParserException {
            e.this.p(i10);
        }

        @Override // to.b
        public void floatElement(int i10, double d10) throws ParserException {
            e.this.s(i10, d10);
        }

        @Override // to.b
        public int getElementType(int i10) {
            return e.this.v(i10);
        }

        @Override // to.b
        public void integerElement(int i10, long j10) throws ParserException {
            e.this.y(i10, j10);
        }

        @Override // to.b
        public boolean isLevel1Element(int i10) {
            return e.this.A(i10);
        }

        @Override // to.b
        public void startMasterElement(int i10, long j10, long j11) throws ParserException {
            e.this.H(i10, j10, j11);
        }

        @Override // to.b
        public void stringElement(int i10, String str) throws ParserException {
            e.this.I(i10, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: MatroskaExtractor.java */
    /* loaded from: classes8.dex */
    public static final class c {
        public byte[] P;
        public p0 V;
        public boolean W;
        public o0 Z;

        /* renamed from: a  reason: collision with root package name */
        public boolean f67568a;

        /* renamed from: a0  reason: collision with root package name */
        public int f67569a0;

        /* renamed from: b  reason: collision with root package name */
        public String f67570b;

        /* renamed from: c  reason: collision with root package name */
        public String f67571c;

        /* renamed from: d  reason: collision with root package name */
        public int f67572d;

        /* renamed from: e  reason: collision with root package name */
        public int f67573e;

        /* renamed from: f  reason: collision with root package name */
        public int f67574f;

        /* renamed from: g  reason: collision with root package name */
        public int f67575g;

        /* renamed from: h  reason: collision with root package name */
        private int f67576h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f67577i;

        /* renamed from: j  reason: collision with root package name */
        public byte[] f67578j;

        /* renamed from: k  reason: collision with root package name */
        public o0.a f67579k;

        /* renamed from: l  reason: collision with root package name */
        public byte[] f67580l;

        /* renamed from: m  reason: collision with root package name */
        public DrmInitData f67581m;

        /* renamed from: n  reason: collision with root package name */
        public int f67582n = -1;

        /* renamed from: o  reason: collision with root package name */
        public int f67583o = -1;

        /* renamed from: p  reason: collision with root package name */
        public int f67584p = -1;

        /* renamed from: q  reason: collision with root package name */
        public int f67585q = -1;

        /* renamed from: r  reason: collision with root package name */
        public int f67586r = -1;

        /* renamed from: s  reason: collision with root package name */
        public int f67587s = 0;

        /* renamed from: t  reason: collision with root package name */
        public int f67588t = -1;

        /* renamed from: u  reason: collision with root package name */
        public float f67589u = 0.0f;

        /* renamed from: v  reason: collision with root package name */
        public float f67590v = 0.0f;

        /* renamed from: w  reason: collision with root package name */
        public float f67591w = 0.0f;

        /* renamed from: x  reason: collision with root package name */
        public byte[] f67592x = null;

        /* renamed from: y  reason: collision with root package name */
        public int f67593y = -1;

        /* renamed from: z  reason: collision with root package name */
        public boolean f67594z = false;
        public int A = -1;
        public int B = -1;
        public int C = -1;
        public int D = 1000;
        public int E = 200;
        public float F = -1.0f;
        public float G = -1.0f;
        public float H = -1.0f;
        public float I = -1.0f;
        public float J = -1.0f;
        public float K = -1.0f;
        public float L = -1.0f;
        public float M = -1.0f;
        public float N = -1.0f;
        public float O = -1.0f;
        public int Q = 1;
        public int R = -1;
        public int S = 8000;
        public long T = 0;
        public long U = 0;
        public boolean X = true;
        private String Y = "eng";

        protected c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            cn.a.e(this.Z);
        }

        private byte[] g(String str) throws ParserException {
            byte[] bArr = this.f67580l;
            if (bArr != null) {
                return bArr;
            }
            throw ParserException.b("Missing CodecPrivate for codec " + str, null);
        }

        @Nullable
        private byte[] h() {
            if (this.F != -1.0f && this.G != -1.0f && this.H != -1.0f && this.I != -1.0f && this.J != -1.0f && this.K != -1.0f && this.L != -1.0f && this.M != -1.0f && this.N != -1.0f && this.O != -1.0f) {
                byte[] bArr = new byte[25];
                ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                order.put((byte) 0);
                order.putShort((short) ((this.F * 50000.0f) + 0.5f));
                order.putShort((short) ((this.G * 50000.0f) + 0.5f));
                order.putShort((short) ((this.H * 50000.0f) + 0.5f));
                order.putShort((short) ((this.I * 50000.0f) + 0.5f));
                order.putShort((short) ((this.J * 50000.0f) + 0.5f));
                order.putShort((short) ((this.K * 50000.0f) + 0.5f));
                order.putShort((short) ((this.L * 50000.0f) + 0.5f));
                order.putShort((short) ((this.M * 50000.0f) + 0.5f));
                order.putShort((short) (this.N + 0.5f));
                order.putShort((short) (this.O + 0.5f));
                order.putShort((short) this.D);
                order.putShort((short) this.E);
                return bArr;
            }
            return null;
        }

        private static Pair<String, List<byte[]>> k(b0 b0Var) throws ParserException {
            try {
                b0Var.X(16);
                long x10 = b0Var.x();
                if (x10 == 1482049860) {
                    return new Pair<>("video/divx", null);
                }
                if (x10 == 859189832) {
                    return new Pair<>(MimeTypes.VIDEO_H263, null);
                }
                if (x10 == 826496599) {
                    byte[] e10 = b0Var.e();
                    for (int f10 = b0Var.f() + 20; f10 < e10.length - 4; f10++) {
                        if (e10[f10] == 0 && e10[f10 + 1] == 0 && e10[f10 + 2] == 1 && e10[f10 + 3] == 15) {
                            return new Pair<>(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(e10, f10, e10.length)));
                        }
                    }
                    throw ParserException.b("Failed to find FourCC VC1 initialization data", null);
                }
                cn.r.h("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair<>(MimeTypes.VIDEO_UNKNOWN, null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.b("Error parsing FourCC private data", null);
            }
        }

        private static boolean l(b0 b0Var) throws ParserException {
            try {
                int z10 = b0Var.z();
                if (z10 == 1) {
                    return true;
                }
                if (z10 != 65534) {
                    return false;
                }
                b0Var.W(24);
                if (b0Var.A() == e.f67534k0.getMostSignificantBits()) {
                    if (b0Var.A() == e.f67534k0.getLeastSignificantBits()) {
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
            if ("A_OPUS".equals(this.f67571c)) {
                return z10;
            }
            if (this.f67575g > 0) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public void i(ao.r rVar, int i10) throws ParserException {
            char c10;
            int i11;
            List<byte[]> singletonList;
            String str;
            int i12;
            int i13;
            List<byte[]> list;
            String str2;
            int i14;
            int i15;
            int i16;
            int i17;
            float f10;
            int i18;
            String str3;
            n a10;
            String str4 = this.f67571c;
            str4.hashCode();
            String str5 = MimeTypes.AUDIO_RAW;
            zm.g gVar = null;
            switch (str4.hashCode()) {
                case -2095576542:
                    if (str4.equals("V_MPEG4/ISO/AP")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -2095575984:
                    if (str4.equals("V_MPEG4/ISO/SP")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1985379776:
                    if (str4.equals("A_MS/ACM")) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1784763192:
                    if (str4.equals("A_TRUEHD")) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1730367663:
                    if (str4.equals("A_VORBIS")) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1482641358:
                    if (str4.equals("A_MPEG/L2")) {
                        c10 = 5;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1482641357:
                    if (str4.equals("A_MPEG/L3")) {
                        c10 = 6;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1373388978:
                    if (str4.equals("V_MS/VFW/FOURCC")) {
                        c10 = 7;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -933872740:
                    if (str4.equals("S_DVBSUB")) {
                        c10 = '\b';
                        break;
                    }
                    c10 = 65535;
                    break;
                case -538363189:
                    if (str4.equals("V_MPEG4/ISO/ASP")) {
                        c10 = '\t';
                        break;
                    }
                    c10 = 65535;
                    break;
                case -538363109:
                    if (str4.equals("V_MPEG4/ISO/AVC")) {
                        c10 = '\n';
                        break;
                    }
                    c10 = 65535;
                    break;
                case -425012669:
                    if (str4.equals("S_VOBSUB")) {
                        c10 = 11;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -356037306:
                    if (str4.equals("A_DTS/LOSSLESS")) {
                        c10 = '\f';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 62923557:
                    if (str4.equals("A_AAC")) {
                        c10 = '\r';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 62923603:
                    if (str4.equals("A_AC3")) {
                        c10 = 14;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 62927045:
                    if (str4.equals("A_DTS")) {
                        c10 = 15;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 82318131:
                    if (str4.equals("V_AV1")) {
                        c10 = 16;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 82338133:
                    if (str4.equals("V_VP8")) {
                        c10 = 17;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 82338134:
                    if (str4.equals("V_VP9")) {
                        c10 = 18;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 99146302:
                    if (str4.equals("S_HDMV/PGS")) {
                        c10 = 19;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 444813526:
                    if (str4.equals("V_THEORA")) {
                        c10 = 20;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 542569478:
                    if (str4.equals("A_DTS/EXPRESS")) {
                        c10 = 21;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 635596514:
                    if (str4.equals("A_PCM/FLOAT/IEEE")) {
                        c10 = 22;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 725948237:
                    if (str4.equals("A_PCM/INT/BIG")) {
                        c10 = 23;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 725957860:
                    if (str4.equals("A_PCM/INT/LIT")) {
                        c10 = 24;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 738597099:
                    if (str4.equals("S_TEXT/ASS")) {
                        c10 = 25;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 855502857:
                    if (str4.equals("V_MPEGH/ISO/HEVC")) {
                        c10 = 26;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1045209816:
                    if (str4.equals("S_TEXT/WEBVTT")) {
                        c10 = 27;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1422270023:
                    if (str4.equals("S_TEXT/UTF8")) {
                        c10 = 28;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1809237540:
                    if (str4.equals("V_MPEG2")) {
                        c10 = 29;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1950749482:
                    if (str4.equals("A_EAC3")) {
                        c10 = 30;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1950789798:
                    if (str4.equals("A_FLAC")) {
                        c10 = 31;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1951062397:
                    if (str4.equals("A_OPUS")) {
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
                    i11 = 0;
                    byte[] bArr = this.f67580l;
                    if (bArr == null) {
                        singletonList = null;
                    } else {
                        singletonList = Collections.singletonList(bArr);
                    }
                    str5 = MimeTypes.VIDEO_MP4V;
                    str = null;
                    i13 = -1;
                    i12 = -1;
                    break;
                case 2:
                    i11 = 0;
                    if (l(new b0(g(this.f67571c)))) {
                        int i02 = m0.i0(this.R);
                        if (i02 == 0) {
                            cn.r.h("MatroskaExtractor", "Unsupported PCM bit depth: " + this.R + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        } else {
                            i12 = i02;
                            singletonList = null;
                            str = null;
                            i13 = -1;
                            break;
                        }
                    } else {
                        cn.r.h("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    }
                    singletonList = null;
                    str = null;
                    str5 = MimeTypes.AUDIO_UNKNOWN;
                    i13 = -1;
                    i12 = -1;
                    break;
                case 3:
                    i11 = 0;
                    this.V = new p0();
                    str5 = MimeTypes.AUDIO_TRUEHD;
                    singletonList = null;
                    str = null;
                    i13 = -1;
                    i12 = -1;
                    break;
                case 4:
                    i11 = 0;
                    singletonList = m(g(this.f67571c));
                    str5 = MimeTypes.AUDIO_VORBIS;
                    i13 = 8192;
                    str = null;
                    i12 = -1;
                    break;
                case 5:
                    i11 = 0;
                    str5 = MimeTypes.AUDIO_MPEG_L2;
                    singletonList = null;
                    str = null;
                    i13 = 4096;
                    i12 = -1;
                    break;
                case 6:
                    i11 = 0;
                    str5 = MimeTypes.AUDIO_MPEG;
                    singletonList = null;
                    str = null;
                    i13 = 4096;
                    i12 = -1;
                    break;
                case 7:
                    i11 = 0;
                    Pair<String, List<byte[]>> k10 = k(new b0(g(this.f67571c)));
                    str5 = (String) k10.first;
                    singletonList = (List) k10.second;
                    str = null;
                    i13 = -1;
                    i12 = -1;
                    break;
                case '\b':
                    byte[] bArr2 = new byte[4];
                    i11 = 0;
                    System.arraycopy(g(this.f67571c), 0, bArr2, 0, 4);
                    singletonList = ImmutableList.B(bArr2);
                    str5 = MimeTypes.APPLICATION_DVBSUBS;
                    str = null;
                    i13 = -1;
                    i12 = -1;
                    break;
                case '\n':
                    ao.d b10 = ao.d.b(new b0(g(this.f67571c)));
                    list = b10.f1782a;
                    this.f67569a0 = b10.f1783b;
                    str2 = b10.f1793l;
                    str5 = "video/avc";
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    List<byte[]> list2 = list;
                    str = str2;
                    singletonList = list2;
                    break;
                case 11:
                    singletonList = ImmutableList.B(g(this.f67571c));
                    str5 = MimeTypes.APPLICATION_VOBSUB;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    break;
                case '\f':
                    str5 = MimeTypes.AUDIO_DTS_HD;
                    singletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    break;
                case '\r':
                    singletonList = Collections.singletonList(g(this.f67571c));
                    a.b e10 = ao.a.e(this.f67580l);
                    this.S = e10.f1735a;
                    this.Q = e10.f1736b;
                    str = e10.f1737c;
                    str5 = MimeTypes.AUDIO_AAC;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    break;
                case 14:
                    str5 = MimeTypes.AUDIO_AC3;
                    singletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    break;
                case 15:
                case 21:
                    str5 = MimeTypes.AUDIO_DTS;
                    singletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    break;
                case 16:
                    byte[] bArr3 = this.f67580l;
                    if (bArr3 == null) {
                        singletonList = null;
                    } else {
                        singletonList = ImmutableList.B(bArr3);
                    }
                    str5 = com.unity3d.services.core.device.MimeTypes.VIDEO_AV1;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    break;
                case 17:
                    str5 = MimeTypes.VIDEO_VP8;
                    singletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    break;
                case 18:
                    byte[] bArr4 = this.f67580l;
                    if (bArr4 == null) {
                        singletonList = null;
                    } else {
                        singletonList = ImmutableList.B(bArr4);
                    }
                    str5 = MimeTypes.VIDEO_VP9;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    break;
                case 19:
                    str5 = MimeTypes.APPLICATION_PGS;
                    singletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    break;
                case 20:
                    str5 = MimeTypes.VIDEO_UNKNOWN;
                    singletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    break;
                case 22:
                    if (this.R == 32) {
                        singletonList = null;
                        str = null;
                        i11 = 0;
                        i13 = -1;
                        i12 = 4;
                        break;
                    } else {
                        cn.r.h("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + this.R + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        singletonList = null;
                        str = null;
                        str5 = MimeTypes.AUDIO_UNKNOWN;
                        i11 = 0;
                        i13 = -1;
                        i12 = -1;
                        break;
                    }
                case 23:
                    int i19 = this.R;
                    if (i19 == 8) {
                        i12 = 3;
                    } else if (i19 == 16) {
                        i12 = 268435456;
                    } else if (i19 == 24) {
                        i12 = 1342177280;
                    } else if (i19 == 32) {
                        i12 = 1610612736;
                    } else {
                        cn.r.h("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + this.R + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        singletonList = null;
                        str = null;
                        str5 = MimeTypes.AUDIO_UNKNOWN;
                        i11 = 0;
                        i13 = -1;
                        i12 = -1;
                        break;
                    }
                    singletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    break;
                case 24:
                    int i03 = m0.i0(this.R);
                    if (i03 == 0) {
                        cn.r.h("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + this.R + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        singletonList = null;
                        str = null;
                        str5 = MimeTypes.AUDIO_UNKNOWN;
                        i11 = 0;
                        i13 = -1;
                        i12 = -1;
                        break;
                    } else {
                        i12 = i03;
                        singletonList = null;
                        str = null;
                        i11 = 0;
                        i13 = -1;
                        break;
                    }
                case 25:
                    singletonList = ImmutableList.C(e.f67531h0, g(this.f67571c));
                    str = null;
                    str5 = MimeTypes.TEXT_SSA;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    break;
                case 26:
                    c0 a11 = c0.a(new b0(g(this.f67571c)));
                    list = a11.f1767a;
                    this.f67569a0 = a11.f1768b;
                    str2 = a11.f1780n;
                    str5 = "video/hevc";
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    List<byte[]> list22 = list;
                    str = str2;
                    singletonList = list22;
                    break;
                case 27:
                    singletonList = null;
                    str = null;
                    str5 = MimeTypes.TEXT_VTT;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    break;
                case 28:
                    singletonList = null;
                    str = null;
                    str5 = MimeTypes.APPLICATION_SUBRIP;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    break;
                case 29:
                    str5 = MimeTypes.VIDEO_MPEG2;
                    singletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    break;
                case 30:
                    str5 = MimeTypes.AUDIO_E_AC3;
                    singletonList = null;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    break;
                case 31:
                    singletonList = Collections.singletonList(g(this.f67571c));
                    str5 = MimeTypes.AUDIO_FLAC;
                    str = null;
                    i11 = 0;
                    i13 = -1;
                    i12 = -1;
                    break;
                case ' ':
                    singletonList = new ArrayList<>(3);
                    singletonList.add(g(this.f67571c));
                    ByteBuffer allocate = ByteBuffer.allocate(8);
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    singletonList.add(allocate.order(byteOrder).putLong(this.T).array());
                    singletonList.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.U).array());
                    str5 = MimeTypes.AUDIO_OPUS;
                    i13 = 5760;
                    str = null;
                    i11 = 0;
                    i12 = -1;
                    break;
                default:
                    throw ParserException.b("Unrecognized codec identifier.", null);
            }
            if (this.P != null && (a10 = n.a(new b0(this.P))) != null) {
                str = a10.f1898c;
                str5 = "video/dolby-vision";
            }
            String str6 = str5;
            boolean z10 = this.X;
            if (this.W) {
                i14 = 2;
            } else {
                i14 = i11;
            }
            int i20 = i14 | (z10 ? 1 : 0);
            a.b bVar = new a.b();
            if (zm.u.o(str6)) {
                bVar.R(this.Q).v0(this.S).o0(i12);
                i15 = 1;
            } else if (zm.u.t(str6)) {
                if (this.f67587s == 0) {
                    int i21 = this.f67585q;
                    i16 = -1;
                    if (i21 == -1) {
                        i21 = this.f67582n;
                    }
                    this.f67585q = i21;
                    int i22 = this.f67586r;
                    if (i22 == -1) {
                        i22 = this.f67583o;
                    }
                    this.f67586r = i22;
                } else {
                    i16 = -1;
                }
                if (this.f67585q != i16 && (i18 = this.f67586r) != i16) {
                    f10 = (this.f67583o * i17) / (this.f67582n * i18);
                } else {
                    f10 = -1.0f;
                }
                if (this.f67594z) {
                    gVar = new g.b().d(this.A).c(this.C).e(this.B).f(h()).g(this.f67584p).b(this.f67584p).a();
                }
                if (this.f67570b != null && e.f67535l0.containsKey(this.f67570b)) {
                    i16 = ((Integer) e.f67535l0.get(this.f67570b)).intValue();
                }
                if (this.f67588t == 0 && Float.compare(this.f67589u, 0.0f) == 0 && Float.compare(this.f67590v, 0.0f) == 0) {
                    if (Float.compare(this.f67591w, 0.0f) != 0) {
                        if (Float.compare(this.f67591w, 90.0f) == 0) {
                            i11 = 90;
                        } else if (Float.compare(this.f67591w, -180.0f) != 0 && Float.compare(this.f67591w, 180.0f) != 0) {
                            if (Float.compare(this.f67591w, -90.0f) == 0) {
                                i11 = 270;
                            }
                        } else {
                            i11 = 180;
                        }
                    }
                    bVar.B0(this.f67582n).d0(this.f67583o).q0(f10).t0(i11).r0(this.f67592x).x0(this.f67593y).T(gVar);
                    i15 = 2;
                }
                i11 = i16;
                bVar.B0(this.f67582n).d0(this.f67583o).q0(f10).t0(i11).r0(this.f67592x).x0(this.f67593y).T(gVar);
                i15 = 2;
            } else if (!MimeTypes.APPLICATION_SUBRIP.equals(str6) && !MimeTypes.TEXT_SSA.equals(str6) && !MimeTypes.TEXT_VTT.equals(str6) && !MimeTypes.APPLICATION_VOBSUB.equals(str6) && !MimeTypes.APPLICATION_PGS.equals(str6) && !MimeTypes.APPLICATION_DVBSUBS.equals(str6)) {
                throw ParserException.b("Unexpected MIME type.", null);
            } else {
                i15 = 3;
            }
            if (this.f67570b != null && !e.f67535l0.containsKey(this.f67570b)) {
                bVar.h0(this.f67570b);
            }
            a.b e02 = bVar.e0(i10);
            if (this.f67568a) {
                str3 = "video/webm";
            } else {
                str3 = "video/x-matroska";
            }
            io.bidmachine.media3.common.a N = e02.U(str3).u0(str6).k0(i13).j0(this.Y).w0(i20).g0(singletonList).S(str).Y(this.f67581m).N();
            o0 track = rVar.track(this.f67572d, i15);
            this.Z = track;
            track.g(N);
        }

        public void j() {
            p0 p0Var = this.V;
            if (p0Var != null) {
                p0Var.a(this.Z, this.f67579k);
            }
        }

        public void n() {
            p0 p0Var = this.V;
            if (p0Var != null) {
                p0Var.b();
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("htc_video_rotA-000", 0);
        hashMap.put("htc_video_rotA-090", 90);
        hashMap.put("htc_video_rotA-180", 180);
        hashMap.put("htc_video_rotA-270", 270);
        f67535l0 = Collections.unmodifiableMap(hashMap);
    }

    public e(r.a aVar, int i10) {
        this(new to.a(), i10, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ p[] B() {
        return new p[]{new e(r.a.f71100a, 2)};
    }

    private boolean C(i0 i0Var, long j10) {
        if (this.B) {
            this.D = j10;
            i0Var.f1855a = this.C;
            this.B = false;
            return true;
        }
        if (this.f67565y) {
            long j11 = this.D;
            if (j11 != -1) {
                i0Var.f1855a = j11;
                this.D = -1L;
                return true;
            }
        }
        return false;
    }

    private void D(q qVar, int i10) throws IOException {
        if (this.f67549i.g() >= i10) {
            return;
        }
        if (this.f67549i.b() < i10) {
            b0 b0Var = this.f67549i;
            b0Var.c(Math.max(b0Var.b() * 2, i10));
        }
        qVar.readFully(this.f67549i.e(), this.f67549i.g(), i10 - this.f67549i.g());
        this.f67549i.V(i10);
    }

    private void E() {
        this.V = 0;
        this.W = 0;
        this.X = 0;
        this.Y = false;
        this.Z = false;
        this.f67537a0 = false;
        this.f67539b0 = 0;
        this.f67541c0 = (byte) 0;
        this.f67543d0 = false;
        this.f67552l.S(0);
    }

    private long F(long j10) throws ParserException {
        long j11 = this.f67560t;
        if (j11 != -9223372036854775807L) {
            return m0.f1(j10, j11, 1000L);
        }
        throw ParserException.b("Can't scale timecode prior to timecodeScale being set.", null);
    }

    private static void G(String str, long j10, byte[] bArr) {
        byte[] t10;
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
                t10 = t(j10, "%01d:%02d:%02d:%02d", 10000L);
                i10 = 21;
                break;
            case 1:
                t10 = t(j10, "%02d:%02d:%02d.%03d", 1000L);
                i10 = 25;
                break;
            case 2:
                t10 = t(j10, "%02d:%02d:%02d,%03d", 1000L);
                i10 = 19;
                break;
            default:
                throw new IllegalArgumentException();
        }
        System.arraycopy(t10, 0, bArr, i10, t10.length);
    }

    private int J(q qVar, c cVar, int i10, boolean z10) throws IOException {
        boolean z11;
        int i11;
        if ("S_TEXT/UTF8".equals(cVar.f67571c)) {
            K(qVar, f67530g0, i10);
            return r();
        } else if ("S_TEXT/ASS".equals(cVar.f67571c)) {
            K(qVar, f67532i0, i10);
            return r();
        } else if ("S_TEXT/WEBVTT".equals(cVar.f67571c)) {
            K(qVar, f67533j0, i10);
            return r();
        } else {
            o0 o0Var = cVar.Z;
            boolean z12 = true;
            if (!this.Y) {
                if (cVar.f67577i) {
                    this.R &= -1073741825;
                    int i12 = 128;
                    if (!this.Z) {
                        qVar.readFully(this.f67549i.e(), 0, 1);
                        this.V++;
                        if ((this.f67549i.e()[0] & ByteCompanionObject.MIN_VALUE) != 128) {
                            this.f67541c0 = this.f67549i.e()[0];
                            this.Z = true;
                        } else {
                            throw ParserException.b("Extension bit is set in signal byte", null);
                        }
                    }
                    byte b10 = this.f67541c0;
                    if ((b10 & 1) == 1) {
                        if ((b10 & 2) == 2) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        this.R |= 1073741824;
                        if (!this.f67543d0) {
                            qVar.readFully(this.f67554n.e(), 0, 8);
                            this.V += 8;
                            this.f67543d0 = true;
                            byte[] e10 = this.f67549i.e();
                            if (!z11) {
                                i12 = 0;
                            }
                            e10[0] = (byte) (i12 | 8);
                            this.f67549i.W(0);
                            o0Var.f(this.f67549i, 1, 1);
                            this.W++;
                            this.f67554n.W(0);
                            o0Var.f(this.f67554n, 8, 1);
                            this.W += 8;
                        }
                        if (z11) {
                            if (!this.f67537a0) {
                                qVar.readFully(this.f67549i.e(), 0, 1);
                                this.V++;
                                this.f67549i.W(0);
                                this.f67539b0 = this.f67549i.H();
                                this.f67537a0 = true;
                            }
                            int i13 = this.f67539b0 * 4;
                            this.f67549i.S(i13);
                            qVar.readFully(this.f67549i.e(), 0, i13);
                            this.V += i13;
                            short s10 = (short) ((this.f67539b0 / 2) + 1);
                            int i14 = (s10 * 6) + 2;
                            ByteBuffer byteBuffer = this.f67557q;
                            if (byteBuffer == null || byteBuffer.capacity() < i14) {
                                this.f67557q = ByteBuffer.allocate(i14);
                            }
                            this.f67557q.position(0);
                            this.f67557q.putShort(s10);
                            int i15 = 0;
                            int i16 = 0;
                            while (true) {
                                i11 = this.f67539b0;
                                if (i15 >= i11) {
                                    break;
                                }
                                int L = this.f67549i.L();
                                if (i15 % 2 == 0) {
                                    this.f67557q.putShort((short) (L - i16));
                                } else {
                                    this.f67557q.putInt(L - i16);
                                }
                                i15++;
                                i16 = L;
                            }
                            int i17 = (i10 - this.V) - i16;
                            if (i11 % 2 == 1) {
                                this.f67557q.putInt(i17);
                            } else {
                                this.f67557q.putShort((short) i17);
                                this.f67557q.putInt(0);
                            }
                            this.f67555o.U(this.f67557q.array(), i14);
                            o0Var.f(this.f67555o, i14, 1);
                            this.W += i14;
                        }
                    }
                } else {
                    byte[] bArr = cVar.f67578j;
                    if (bArr != null) {
                        this.f67552l.U(bArr, bArr.length);
                    }
                }
                if (cVar.o(z10)) {
                    this.R |= 268435456;
                    this.f67556p.S(0);
                    int g10 = (this.f67552l.g() + i10) - this.V;
                    this.f67549i.S(4);
                    this.f67549i.e()[0] = (byte) ((g10 >> 24) & 255);
                    this.f67549i.e()[1] = (byte) ((g10 >> 16) & 255);
                    this.f67549i.e()[2] = (byte) ((g10 >> 8) & 255);
                    this.f67549i.e()[3] = (byte) (g10 & 255);
                    o0Var.f(this.f67549i, 4, 2);
                    this.W += 4;
                }
                this.Y = true;
            }
            int g11 = i10 + this.f67552l.g();
            if (!"V_MPEG4/ISO/AVC".equals(cVar.f67571c) && !"V_MPEGH/ISO/HEVC".equals(cVar.f67571c)) {
                if (cVar.V != null) {
                    if (this.f67552l.g() != 0) {
                        z12 = false;
                    }
                    cn.a.g(z12);
                    cVar.V.d(qVar);
                }
                while (true) {
                    int i18 = this.V;
                    if (i18 >= g11) {
                        break;
                    }
                    int L2 = L(qVar, o0Var, g11 - i18);
                    this.V += L2;
                    this.W += L2;
                }
            } else {
                byte[] e11 = this.f67548h.e();
                e11[0] = 0;
                e11[1] = 0;
                e11[2] = 0;
                int i19 = cVar.f67569a0;
                int i20 = 4 - i19;
                while (this.V < g11) {
                    int i21 = this.X;
                    if (i21 == 0) {
                        M(qVar, e11, i20, i19);
                        this.V += i19;
                        this.f67548h.W(0);
                        this.X = this.f67548h.L();
                        this.f67547g.W(0);
                        o0Var.a(this.f67547g, 4);
                        this.W += 4;
                    } else {
                        int L3 = L(qVar, o0Var, i21);
                        this.V += L3;
                        this.W += L3;
                        this.X -= L3;
                    }
                }
            }
            if ("A_VORBIS".equals(cVar.f67571c)) {
                this.f67550j.W(0);
                o0Var.a(this.f67550j, 4);
                this.W += 4;
            }
            return r();
        }
    }

    private void K(q qVar, byte[] bArr, int i10) throws IOException {
        int length = bArr.length + i10;
        if (this.f67553m.b() < length) {
            this.f67553m.T(Arrays.copyOf(bArr, length + i10));
        } else {
            System.arraycopy(bArr, 0, this.f67553m.e(), 0, bArr.length);
        }
        qVar.readFully(this.f67553m.e(), bArr.length, i10);
        this.f67553m.W(0);
        this.f67553m.V(length);
    }

    private int L(q qVar, o0 o0Var, int i10) throws IOException {
        int a10 = this.f67552l.a();
        if (a10 > 0) {
            int min = Math.min(i10, a10);
            o0Var.a(this.f67552l, min);
            return min;
        }
        return o0Var.b(qVar, i10, false);
    }

    private void M(q qVar, byte[] bArr, int i10, int i11) throws IOException {
        int min = Math.min(i11, this.f67552l.a());
        qVar.readFully(bArr, i10 + min, i11 - min);
        if (min > 0) {
            this.f67552l.l(bArr, i10, min);
        }
    }

    private void j(int i10) throws ParserException {
        if (this.F != null && this.G != null) {
            return;
        }
        throw ParserException.b("Element " + i10 + " must be in a Cues", null);
    }

    private void k(int i10) throws ParserException {
        if (this.f67564x != null) {
            return;
        }
        throw ParserException.b("Element " + i10 + " must be in a TrackEntry", null);
    }

    private void l() {
        cn.a.i(this.f67545e0);
    }

    private j0 n(@Nullable s sVar, @Nullable s sVar2) {
        int i10;
        if (this.f67559s != -1 && this.f67562v != -9223372036854775807L && sVar != null && sVar.d() != 0 && sVar2 != null && sVar2.d() == sVar.d()) {
            int d10 = sVar.d();
            int[] iArr = new int[d10];
            long[] jArr = new long[d10];
            long[] jArr2 = new long[d10];
            long[] jArr3 = new long[d10];
            int i11 = 0;
            for (int i12 = 0; i12 < d10; i12++) {
                jArr3[i12] = sVar.c(i12);
                jArr[i12] = this.f67559s + sVar2.c(i12);
            }
            while (true) {
                i10 = d10 - 1;
                if (i11 >= i10) {
                    break;
                }
                int i13 = i11 + 1;
                iArr[i11] = (int) (jArr[i13] - jArr[i11]);
                jArr2[i11] = jArr3[i13] - jArr3[i11];
                i11 = i13;
            }
            int i14 = i10;
            while (i14 > 0 && jArr3[i14] > this.f67562v) {
                i14--;
            }
            iArr[i14] = (int) ((this.f67559s + this.f67558r) - jArr[i14]);
            jArr2[i14] = this.f67562v - jArr3[i14];
            if (i14 < i10) {
                cn.r.h("MatroskaExtractor", "Discarding trailing cue points with timestamps greater than total duration");
                int i15 = i14 + 1;
                iArr = Arrays.copyOf(iArr, i15);
                jArr = Arrays.copyOf(jArr, i15);
                jArr2 = Arrays.copyOf(jArr2, i15);
                jArr3 = Arrays.copyOf(jArr3, i15);
            }
            return new ao.g(iArr, jArr, jArr2, jArr3);
        }
        return new j0.b(this.f67562v);
    }

    private void o(c cVar, long j10, int i10, int i11, int i12) {
        p0 p0Var = cVar.V;
        if (p0Var != null) {
            p0Var.c(cVar.Z, j10, i10, i11, i12, cVar.f67579k);
        } else {
            if ("S_TEXT/UTF8".equals(cVar.f67571c) || "S_TEXT/ASS".equals(cVar.f67571c) || "S_TEXT/WEBVTT".equals(cVar.f67571c)) {
                if (this.N > 1) {
                    cn.r.h("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j11 = this.L;
                    if (j11 == -9223372036854775807L) {
                        cn.r.h("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        G(cVar.f67571c, j11, this.f67553m.e());
                        int f10 = this.f67553m.f();
                        while (true) {
                            if (f10 >= this.f67553m.g()) {
                                break;
                            } else if (this.f67553m.e()[f10] == 0) {
                                this.f67553m.V(f10);
                                break;
                            } else {
                                f10++;
                            }
                        }
                        o0 o0Var = cVar.Z;
                        b0 b0Var = this.f67553m;
                        o0Var.a(b0Var, b0Var.g());
                        i11 += this.f67553m.g();
                    }
                }
            }
            if ((268435456 & i10) != 0) {
                if (this.N > 1) {
                    this.f67556p.S(0);
                } else {
                    int g10 = this.f67556p.g();
                    cVar.Z.f(this.f67556p, g10, 2);
                    i11 += g10;
                }
            }
            cVar.Z.c(j10, i10, i11, i12, cVar.f67579k);
        }
        this.I = true;
    }

    private static int[] q(@Nullable int[] iArr, int i10) {
        if (iArr == null) {
            return new int[i10];
        }
        if (iArr.length >= i10) {
            return iArr;
        }
        return new int[Math.max(iArr.length * 2, i10)];
    }

    private int r() {
        int i10 = this.W;
        E();
        return i10;
    }

    private static byte[] t(long j10, String str, long j11) {
        boolean z10;
        if (j10 != -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        int i10 = (int) (j10 / 3600000000L);
        long j12 = j10 - (i10 * 3600000000L);
        int i11 = (int) (j12 / 60000000);
        long j13 = j12 - (i11 * 60000000);
        int i12 = (int) (j13 / 1000000);
        return m0.u0(String.format(Locale.US, str, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf((int) ((j13 - (i12 * 1000000)) / j11))));
    }

    private static boolean z(String str) {
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

    @CallSuper
    protected boolean A(int i10) {
        if (i10 != 357149030 && i10 != 524531317 && i10 != 475249515 && i10 != 374648427) {
            return false;
        }
        return true;
    }

    @CallSuper
    protected void H(int i10, long j10, long j11) throws ParserException {
        l();
        if (i10 != 160) {
            if (i10 != 174) {
                if (i10 != 187) {
                    if (i10 != 19899) {
                        if (i10 != 20533) {
                            if (i10 != 21968) {
                                if (i10 != 408125543) {
                                    if (i10 != 475249515) {
                                        if (i10 == 524531317 && !this.f67565y) {
                                            if (this.f67542d && this.C != -1) {
                                                this.B = true;
                                                return;
                                            }
                                            this.f67545e0.d(new j0.b(this.f67562v));
                                            this.f67565y = true;
                                            return;
                                        }
                                        return;
                                    }
                                    this.F = new s();
                                    this.G = new s();
                                    return;
                                }
                                long j12 = this.f67559s;
                                if (j12 != -1 && j12 != j10) {
                                    throw ParserException.b("Multiple Segment elements not supported", null);
                                }
                                this.f67559s = j10;
                                this.f67558r = j11;
                                return;
                            }
                            u(i10).f67594z = true;
                            return;
                        }
                        u(i10).f67577i = true;
                        return;
                    }
                    this.f67566z = -1;
                    this.A = -1L;
                    return;
                }
                this.H = false;
                return;
            }
            c cVar = new c();
            this.f67564x = cVar;
            cVar.f67568a = this.f67563w;
            return;
        }
        this.T = false;
        this.U = 0L;
    }

    @CallSuper
    protected void I(int i10, String str) throws ParserException {
        if (i10 != 134) {
            if (i10 != 17026) {
                if (i10 != 21358) {
                    if (i10 == 2274716) {
                        u(i10).Y = str;
                        return;
                    }
                    return;
                }
                u(i10).f67570b = str;
                return;
            } else if (!"webm".equals(str) && !"matroska".equals(str)) {
                throw ParserException.b("DocType " + str + " not supported", null);
            } else {
                this.f67563w = Objects.equals(str, "webm");
                return;
            }
        }
        u(i10).f67571c = str;
    }

    @Override // ao.p
    public final void b(ao.r rVar) {
        if (this.f67544e) {
            rVar = new yo.s(rVar, this.f67546f);
        }
        this.f67545e0 = rVar;
    }

    @Override // ao.p
    public final boolean e(q qVar) throws IOException {
        return new f().b(qVar);
    }

    @Override // ao.p
    public final int f(q qVar, i0 i0Var) throws IOException {
        this.I = false;
        boolean z10 = true;
        while (z10 && !this.I) {
            z10 = this.f67536a.a(qVar);
            if (z10 && C(i0Var, qVar.getPosition())) {
                return 1;
            }
        }
        if (z10) {
            return 0;
        }
        for (int i10 = 0; i10 < this.f67540c.size(); i10++) {
            c valueAt = this.f67540c.valueAt(i10);
            valueAt.f();
            valueAt.j();
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x0231, code lost:
        throw io.bidmachine.media3.common.ParserException.b("EBML lacing sample size out of range.", null);
     */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void m(int r22, int r23, ao.q r24) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 749
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: to.e.m(int, int, ao.q):void");
    }

    @CallSuper
    protected void p(int i10) throws ParserException {
        l();
        if (i10 != 160) {
            if (i10 != 174) {
                if (i10 != 19899) {
                    if (i10 != 25152) {
                        if (i10 != 28032) {
                            if (i10 != 357149030) {
                                if (i10 != 374648427) {
                                    if (i10 == 475249515) {
                                        if (!this.f67565y) {
                                            this.f67545e0.d(n(this.F, this.G));
                                            this.f67565y = true;
                                        }
                                        this.F = null;
                                        this.G = null;
                                        return;
                                    }
                                    return;
                                } else if (this.f67540c.size() != 0) {
                                    this.f67545e0.endTracks();
                                    return;
                                } else {
                                    throw ParserException.b("No valid tracks were found", null);
                                }
                            }
                            if (this.f67560t == -9223372036854775807L) {
                                this.f67560t = 1000000L;
                            }
                            long j10 = this.f67561u;
                            if (j10 != -9223372036854775807L) {
                                this.f67562v = F(j10);
                                return;
                            }
                            return;
                        }
                        k(i10);
                        c cVar = this.f67564x;
                        if (cVar.f67577i && cVar.f67578j != null) {
                            throw ParserException.b("Combining encryption and compression is not supported", null);
                        }
                        return;
                    }
                    k(i10);
                    c cVar2 = this.f67564x;
                    if (cVar2.f67577i) {
                        if (cVar2.f67579k != null) {
                            cVar2.f67581m = new DrmInitData(new DrmInitData.SchemeData(zm.f.f71928a, "video/webm", this.f67564x.f67579k.f1915b));
                            return;
                        }
                        throw ParserException.b("Encrypted Track found but ContentEncKeyID was not found", null);
                    }
                    return;
                }
                int i11 = this.f67566z;
                if (i11 != -1) {
                    long j11 = this.A;
                    if (j11 != -1) {
                        if (i11 == 475249515) {
                            this.C = j11;
                            return;
                        }
                        return;
                    }
                }
                throw ParserException.b("Mandatory element SeekID or SeekPosition not found", null);
            }
            c cVar3 = (c) cn.a.i(this.f67564x);
            String str = cVar3.f67571c;
            if (str != null) {
                if (z(str)) {
                    cVar3.i(this.f67545e0, cVar3.f67572d);
                    this.f67540c.put(cVar3.f67572d, cVar3);
                }
                this.f67564x = null;
                return;
            }
            throw ParserException.b("CodecId is missing in TrackEntry element", null);
        } else if (this.J == 2) {
            c cVar4 = this.f67540c.get(this.P);
            cVar4.f();
            if (this.U > 0 && "A_OPUS".equals(cVar4.f67571c)) {
                this.f67556p.T(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.U).array());
            }
            int i12 = 0;
            for (int i13 = 0; i13 < this.N; i13++) {
                i12 += this.O[i13];
            }
            int i14 = 0;
            while (i14 < this.N) {
                long j12 = this.K + ((cVar4.f67574f * i14) / 1000);
                int i15 = this.R;
                if (i14 == 0 && !this.T) {
                    i15 |= 1;
                }
                int i16 = this.O[i14];
                int i17 = i12 - i16;
                o(cVar4, j12, i15, i16, i17);
                i14++;
                i12 = i17;
            }
            this.J = 0;
        }
    }

    @CallSuper
    protected void s(int i10, double d10) throws ParserException {
        if (i10 != 181) {
            if (i10 != 17545) {
                switch (i10) {
                    case 21969:
                        u(i10).F = (float) d10;
                        return;
                    case 21970:
                        u(i10).G = (float) d10;
                        return;
                    case 21971:
                        u(i10).H = (float) d10;
                        return;
                    case 21972:
                        u(i10).I = (float) d10;
                        return;
                    case 21973:
                        u(i10).J = (float) d10;
                        return;
                    case 21974:
                        u(i10).K = (float) d10;
                        return;
                    case 21975:
                        u(i10).L = (float) d10;
                        return;
                    case 21976:
                        u(i10).M = (float) d10;
                        return;
                    case 21977:
                        u(i10).N = (float) d10;
                        return;
                    case 21978:
                        u(i10).O = (float) d10;
                        return;
                    default:
                        switch (i10) {
                            case 30323:
                                u(i10).f67589u = (float) d10;
                                return;
                            case 30324:
                                u(i10).f67590v = (float) d10;
                                return;
                            case 30325:
                                u(i10).f67591w = (float) d10;
                                return;
                            default:
                                return;
                        }
                }
            }
            this.f67561u = (long) d10;
            return;
        }
        u(i10).S = (int) d10;
    }

    @Override // ao.p
    @CallSuper
    public void seek(long j10, long j11) {
        this.E = -9223372036854775807L;
        this.J = 0;
        this.f67536a.reset();
        this.f67538b.e();
        E();
        for (int i10 = 0; i10 < this.f67540c.size(); i10++) {
            this.f67540c.valueAt(i10).n();
        }
    }

    protected c u(int i10) throws ParserException {
        k(i10);
        return this.f67564x;
    }

    @CallSuper
    protected int v(int i10) {
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
            case 21938:
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

    protected void w(c cVar, q qVar, int i10) throws IOException {
        if (cVar.f67576h != 1685485123 && cVar.f67576h != 1685480259) {
            qVar.skipFully(i10);
            return;
        }
        byte[] bArr = new byte[i10];
        cVar.P = bArr;
        qVar.readFully(bArr, 0, i10);
    }

    protected void x(c cVar, int i10, q qVar, int i11) throws IOException {
        if (i10 == 4 && "V_VP9".equals(cVar.f67571c)) {
            this.f67556p.S(i11);
            qVar.readFully(this.f67556p.e(), 0, i11);
            return;
        }
        qVar.skipFully(i11);
    }

    @CallSuper
    protected void y(int i10, long j10) throws ParserException {
        if (i10 != 20529) {
            if (i10 != 20530) {
                boolean z10 = false;
                switch (i10) {
                    case 131:
                        u(i10).f67573e = (int) j10;
                        return;
                    case 136:
                        c u10 = u(i10);
                        if (j10 == 1) {
                            z10 = true;
                        }
                        u10.X = z10;
                        return;
                    case 155:
                        this.L = F(j10);
                        return;
                    case 159:
                        u(i10).Q = (int) j10;
                        return;
                    case 176:
                        u(i10).f67582n = (int) j10;
                        return;
                    case 179:
                        j(i10);
                        this.F.a(F(j10));
                        return;
                    case 186:
                        u(i10).f67583o = (int) j10;
                        return;
                    case 215:
                        u(i10).f67572d = (int) j10;
                        return;
                    case 231:
                        this.E = F(j10);
                        return;
                    case 238:
                        this.S = (int) j10;
                        return;
                    case 241:
                        if (!this.H) {
                            j(i10);
                            this.G.a(j10);
                            this.H = true;
                            return;
                        }
                        return;
                    case 251:
                        this.T = true;
                        return;
                    case 16871:
                        u(i10).f67576h = (int) j10;
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
                        this.A = j10 + this.f67559s;
                        return;
                    case 21432:
                        int i11 = (int) j10;
                        k(i10);
                        if (i11 != 0) {
                            if (i11 != 1) {
                                if (i11 != 3) {
                                    if (i11 == 15) {
                                        this.f67564x.f67593y = 3;
                                        return;
                                    }
                                    return;
                                }
                                this.f67564x.f67593y = 1;
                                return;
                            }
                            this.f67564x.f67593y = 2;
                            return;
                        }
                        this.f67564x.f67593y = 0;
                        return;
                    case 21680:
                        u(i10).f67585q = (int) j10;
                        return;
                    case 21682:
                        u(i10).f67587s = (int) j10;
                        return;
                    case 21690:
                        u(i10).f67586r = (int) j10;
                        return;
                    case 21930:
                        c u11 = u(i10);
                        if (j10 == 1) {
                            z10 = true;
                        }
                        u11.W = z10;
                        return;
                    case 21938:
                        k(i10);
                        c cVar = this.f67564x;
                        cVar.f67594z = true;
                        cVar.f67584p = (int) j10;
                        return;
                    case 21998:
                        u(i10).f67575g = (int) j10;
                        return;
                    case 22186:
                        u(i10).T = j10;
                        return;
                    case 22203:
                        u(i10).U = j10;
                        return;
                    case 25188:
                        u(i10).R = (int) j10;
                        return;
                    case 30114:
                        this.U = j10;
                        return;
                    case 30321:
                        k(i10);
                        int i12 = (int) j10;
                        if (i12 != 0) {
                            if (i12 != 1) {
                                if (i12 != 2) {
                                    if (i12 == 3) {
                                        this.f67564x.f67588t = 3;
                                        return;
                                    }
                                    return;
                                }
                                this.f67564x.f67588t = 2;
                                return;
                            }
                            this.f67564x.f67588t = 1;
                            return;
                        }
                        this.f67564x.f67588t = 0;
                        return;
                    case 2352003:
                        u(i10).f67574f = (int) j10;
                        return;
                    case 2807729:
                        this.f67560t = j10;
                        return;
                    default:
                        switch (i10) {
                            case 21945:
                                k(i10);
                                int i13 = (int) j10;
                                if (i13 != 1) {
                                    if (i13 == 2) {
                                        this.f67564x.C = 1;
                                        return;
                                    }
                                    return;
                                }
                                this.f67564x.C = 2;
                                return;
                            case 21946:
                                k(i10);
                                int k10 = zm.g.k((int) j10);
                                if (k10 != -1) {
                                    this.f67564x.B = k10;
                                    return;
                                }
                                return;
                            case 21947:
                                k(i10);
                                this.f67564x.f67594z = true;
                                int j11 = zm.g.j((int) j10);
                                if (j11 != -1) {
                                    this.f67564x.A = j11;
                                    return;
                                }
                                return;
                            case 21948:
                                u(i10).D = (int) j10;
                                return;
                            case 21949:
                                u(i10).E = (int) j10;
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

    e(to.c cVar, int i10, r.a aVar) {
        this.f67559s = -1L;
        this.f67560t = -9223372036854775807L;
        this.f67561u = -9223372036854775807L;
        this.f67562v = -9223372036854775807L;
        this.C = -1L;
        this.D = -1L;
        this.E = -9223372036854775807L;
        this.f67536a = cVar;
        cVar.b(new b());
        this.f67546f = aVar;
        this.f67542d = (i10 & 1) == 0;
        this.f67544e = (i10 & 2) == 0;
        this.f67538b = new g();
        this.f67540c = new SparseArray<>();
        this.f67549i = new b0(4);
        this.f67550j = new b0(ByteBuffer.allocate(4).putInt(-1).array());
        this.f67551k = new b0(4);
        this.f67547g = new b0(dn.g.f50462a);
        this.f67548h = new b0(4);
        this.f67552l = new b0();
        this.f67553m = new b0();
        this.f67554n = new b0(8);
        this.f67555o = new b0();
        this.f67556p = new b0();
        this.O = new int[1];
    }

    @Override // ao.p
    public final void release() {
    }
}
