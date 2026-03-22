package zo;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import bn.a;
import cn.b0;
import cn.r;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.model.VideoRef;
import io.bidmachine.media3.extractor.text.SubtitleDecoderException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
import yo.k;
import yo.o;
import yo.p;
/* compiled from: Cea608Decoder.java */
/* loaded from: classes8.dex */
public final class a extends e {

    /* renamed from: i  reason: collision with root package name */
    private final int f72248i;

    /* renamed from: j  reason: collision with root package name */
    private final int f72249j;

    /* renamed from: k  reason: collision with root package name */
    private final int f72250k;

    /* renamed from: l  reason: collision with root package name */
    private final long f72251l;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private List<bn.a> f72254o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private List<bn.a> f72255p;

    /* renamed from: q  reason: collision with root package name */
    private int f72256q;

    /* renamed from: r  reason: collision with root package name */
    private int f72257r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f72258s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f72259t;

    /* renamed from: u  reason: collision with root package name */
    private byte f72260u;

    /* renamed from: v  reason: collision with root package name */
    private byte f72261v;

    /* renamed from: x  reason: collision with root package name */
    private boolean f72263x;

    /* renamed from: y  reason: collision with root package name */
    private long f72264y;

    /* renamed from: z  reason: collision with root package name */
    private static final int[] f72246z = {11, 1, 3, 12, 14, 5, 7, 9};
    private static final int[] A = {0, 4, 8, 12, 16, 20, 24, 28};
    private static final int[] B = {-1, -16711936, -16776961, -16711681, SupportMenu.CATEGORY_MASK, InputDeviceCompat.SOURCE_ANY, -65281};
    private static final int[] C = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, VideoRef.VALUE_VIDEO_REF_FIRST_SUB_VID, 93, VideoRef.VALUE_VIDEO_REF_PALLAS_VID_LABELS, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};
    private static final int[] D = {174, 176, 189, MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_SPEED, 8482, 162, 163, 9834, 224, 32, VideoRef.VALUE_VIDEO_REF_CATEGORY, 226, VideoRef.VALUE_VIDEO_REF_ORIGINAL_AUDIO_INFO_LIST, 238, 244, 251};
    private static final int[] E = {MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_COUNT, 201, 211, 218, 220, 252, AVMDLDataLoader.KeyIsLoaderFactoryP2PLevel, 161, 42, 39, 8212, 169, 8480, AVMDLDataLoader.KeyIsSpeedEngineSetting, AVMDLDataLoader.KeyIsEnableSpeedPredict, AVMDLDataLoader.KeyIsP2PConfigStr, 192, MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY, 199, 200, 202, 203, VideoRef.VALUE_VIDEO_REF_AI_BARRAGE_URL, 206, 207, VideoRef.VALUE_VIDEO_REF_SUBTITLE_POSITION_X, 212, 217, 249, 219, 171, 187};
    private static final int[] F = {MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, VideoRef.VALUE_VIDEO_REF_POPULARITY_LEVEL, 205, 204, VideoRef.VALUE_VIDEO_REF_CONST_DEPTH, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE, VideoRef.VALUE_VIDEO_REF_CODEC_HAS_h266, 214, 246, 223, 165, 164, 9474, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, VideoRef.VALUE_VIDEO_REF_HAS_EMBEDED_SUBTITLE, 216, 248, 9484, 9488, 9492, 9496};
    private static final boolean[] G = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* renamed from: h  reason: collision with root package name */
    private final b0 f72247h = new b0();

    /* renamed from: m  reason: collision with root package name */
    private final ArrayList<C0990a> f72252m = new ArrayList<>();

    /* renamed from: n  reason: collision with root package name */
    private C0990a f72253n = new C0990a(0, 4);

    /* renamed from: w  reason: collision with root package name */
    private int f72262w = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cea608Decoder.java */
    /* renamed from: zo.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0990a {

        /* renamed from: a  reason: collision with root package name */
        private final List<C0991a> f72265a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final List<SpannableString> f72266b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private final StringBuilder f72267c = new StringBuilder();

        /* renamed from: d  reason: collision with root package name */
        private int f72268d;

        /* renamed from: e  reason: collision with root package name */
        private int f72269e;

        /* renamed from: f  reason: collision with root package name */
        private int f72270f;

        /* renamed from: g  reason: collision with root package name */
        private int f72271g;

        /* renamed from: h  reason: collision with root package name */
        private int f72272h;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: Cea608Decoder.java */
        /* renamed from: zo.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static class C0991a {

            /* renamed from: a  reason: collision with root package name */
            public final int f72273a;

            /* renamed from: b  reason: collision with root package name */
            public final boolean f72274b;

            /* renamed from: c  reason: collision with root package name */
            public int f72275c;

            public C0991a(int i10, boolean z10, int i11) {
                this.f72273a = i10;
                this.f72274b = z10;
                this.f72275c = i11;
            }
        }

        public C0990a(int i10, int i11) {
            j(i10);
            this.f72272h = i11;
        }

        private SpannableString h() {
            int i10;
            boolean z10;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f72267c);
            int length = spannableStringBuilder.length();
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = 0;
            int i16 = 0;
            boolean z11 = false;
            while (i15 < this.f72265a.size()) {
                C0991a c0991a = this.f72265a.get(i15);
                boolean z12 = c0991a.f72274b;
                int i17 = c0991a.f72273a;
                if (i17 != 8) {
                    if (i17 == 7) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (i17 != 7) {
                        i14 = a.B[i17];
                    }
                    z11 = z10;
                }
                int i18 = c0991a.f72275c;
                i15++;
                if (i15 < this.f72265a.size()) {
                    i10 = this.f72265a.get(i15).f72275c;
                } else {
                    i10 = length;
                }
                if (i18 != i10) {
                    if (i11 != -1 && !z12) {
                        q(spannableStringBuilder, i11, i18);
                        i11 = -1;
                    } else if (i11 == -1 && z12) {
                        i11 = i18;
                    }
                    if (i12 != -1 && !z11) {
                        o(spannableStringBuilder, i12, i18);
                        i12 = -1;
                    } else if (i12 == -1 && z11) {
                        i12 = i18;
                    }
                    if (i14 != i13) {
                        n(spannableStringBuilder, i16, i18, i13);
                        i13 = i14;
                        i16 = i18;
                    }
                }
            }
            if (i11 != -1 && i11 != length) {
                q(spannableStringBuilder, i11, length);
            }
            if (i12 != -1 && i12 != length) {
                o(spannableStringBuilder, i12, length);
            }
            if (i16 != length) {
                n(spannableStringBuilder, i16, length, i13);
            }
            return new SpannableString(spannableStringBuilder);
        }

        private static void n(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12) {
            if (i12 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i12), i10, i11, 33);
        }

        private static void o(SpannableStringBuilder spannableStringBuilder, int i10, int i11) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i10, i11, 33);
        }

        private static void q(SpannableStringBuilder spannableStringBuilder, int i10, int i11) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i10, i11, 33);
        }

        public void e(char c10) {
            if (this.f72267c.length() < 32) {
                this.f72267c.append(c10);
            }
        }

        public void f() {
            int length = this.f72267c.length();
            if (length > 0) {
                this.f72267c.delete(length - 1, length);
                for (int size = this.f72265a.size() - 1; size >= 0; size--) {
                    C0991a c0991a = this.f72265a.get(size);
                    int i10 = c0991a.f72275c;
                    if (i10 == length) {
                        c0991a.f72275c = i10 - 1;
                    } else {
                        return;
                    }
                }
            }
        }

        @Nullable
        public bn.a g(int i10) {
            float f10;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i11 = 0; i11 < this.f72266b.size(); i11++) {
                spannableStringBuilder.append((CharSequence) this.f72266b.get(i11));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) h());
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int i12 = this.f72269e + this.f72270f;
            int length = (32 - i12) - spannableStringBuilder.length();
            int i13 = i12 - length;
            if (i10 == Integer.MIN_VALUE) {
                if (this.f72271g == 2 && (Math.abs(i13) < 3 || length < 0)) {
                    i10 = 1;
                } else if (this.f72271g == 2 && i13 > 0) {
                    i10 = 2;
                } else {
                    i10 = 0;
                }
            }
            if (i10 != 1) {
                if (i10 == 2) {
                    i12 = 32 - length;
                }
                f10 = ((i12 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f10 = 0.5f;
            }
            int i14 = this.f72268d;
            if (i14 > 7) {
                i14 -= 17;
            } else if (this.f72271g == 1) {
                i14 -= this.f72272h - 1;
            }
            return new a.b().o(spannableStringBuilder).p(Layout.Alignment.ALIGN_NORMAL).h(i14, 1).k(f10).l(i10).a();
        }

        public boolean i() {
            if (this.f72265a.isEmpty() && this.f72266b.isEmpty() && this.f72267c.length() == 0) {
                return true;
            }
            return false;
        }

        public void j(int i10) {
            this.f72271g = i10;
            this.f72265a.clear();
            this.f72266b.clear();
            this.f72267c.setLength(0);
            this.f72268d = 15;
            this.f72269e = 0;
            this.f72270f = 0;
        }

        public void k() {
            this.f72266b.add(h());
            this.f72267c.setLength(0);
            this.f72265a.clear();
            int min = Math.min(this.f72272h, this.f72268d);
            while (this.f72266b.size() >= min) {
                this.f72266b.remove(0);
            }
        }

        public void l(int i10) {
            this.f72271g = i10;
        }

        public void m(int i10) {
            this.f72272h = i10;
        }

        public void p(int i10, boolean z10) {
            this.f72265a.add(new C0991a(i10, z10, this.f72267c.length()));
        }
    }

    public a(String str, int i10, long j10) {
        int i11;
        boolean z10;
        if (j10 != -9223372036854775807L) {
            if (j10 >= 16000) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.a(z10);
            this.f72251l = j10 * 1000;
        } else {
            this.f72251l = -9223372036854775807L;
        }
        if (MimeTypes.APPLICATION_MP4CEA608.equals(str)) {
            i11 = 2;
        } else {
            i11 = 3;
        }
        this.f72248i = i11;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        r.h("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
                        this.f72250k = 0;
                        this.f72249j = 0;
                    } else {
                        this.f72250k = 1;
                        this.f72249j = 1;
                    }
                } else {
                    this.f72250k = 0;
                    this.f72249j = 1;
                }
            } else {
                this.f72250k = 1;
                this.f72249j = 0;
            }
        } else {
            this.f72250k = 0;
            this.f72249j = 0;
        }
        K(0);
        J();
        this.f72263x = true;
        this.f72264y = -9223372036854775807L;
    }

    private static boolean A(byte b10, byte b11) {
        if ((b10 & 246) == 20 && (b11 & 240) == 32) {
            return true;
        }
        return false;
    }

    private static boolean B(byte b10, byte b11) {
        if ((b10 & 240) == 16 && (b11 & 192) == 64) {
            return true;
        }
        return false;
    }

    private static boolean C(byte b10) {
        if ((b10 & 240) == 16) {
            return true;
        }
        return false;
    }

    private boolean D(boolean z10, byte b10, byte b11) {
        if (z10 && C(b10)) {
            if (this.f72259t && this.f72260u == b10 && this.f72261v == b11) {
                this.f72259t = false;
                return true;
            }
            this.f72259t = true;
            this.f72260u = b10;
            this.f72261v = b11;
        } else {
            this.f72259t = false;
        }
        return false;
    }

    private static boolean E(byte b10) {
        if ((b10 & 246) == 20) {
            return true;
        }
        return false;
    }

    private static boolean F(byte b10, byte b11) {
        if ((b10 & 247) == 17 && (b11 & 240) == 48) {
            return true;
        }
        return false;
    }

    private static boolean G(byte b10, byte b11) {
        if ((b10 & 247) == 23 && b11 >= 33 && b11 <= 35) {
            return true;
        }
        return false;
    }

    private static boolean H(byte b10) {
        if (1 <= b10 && b10 <= 15) {
            return true;
        }
        return false;
    }

    private void I(byte b10, byte b11) {
        if (H(b10)) {
            this.f72263x = false;
        } else if (E(b10)) {
            if (b11 != 32 && b11 != 47) {
                switch (b11) {
                    case 37:
                    case 38:
                    case 39:
                        break;
                    default:
                        switch (b11) {
                            case 41:
                                break;
                            case 42:
                            case 43:
                                this.f72263x = false;
                                return;
                            default:
                                return;
                        }
                }
            }
            this.f72263x = true;
        }
    }

    private void J() {
        this.f72253n.j(this.f72256q);
        this.f72252m.clear();
        this.f72252m.add(this.f72253n);
    }

    private void K(int i10) {
        int i11 = this.f72256q;
        if (i11 == i10) {
            return;
        }
        this.f72256q = i10;
        if (i10 == 3) {
            for (int i12 = 0; i12 < this.f72252m.size(); i12++) {
                this.f72252m.get(i12).l(i10);
            }
            return;
        }
        J();
        if (i11 == 3 || i10 == 1 || i10 == 0) {
            this.f72254o = Collections.emptyList();
        }
    }

    private void L(int i10) {
        this.f72257r = i10;
        this.f72253n.m(i10);
    }

    private boolean M() {
        if (this.f72251l == -9223372036854775807L || this.f72264y == -9223372036854775807L || h() - this.f72264y < this.f72251l) {
            return false;
        }
        return true;
    }

    private boolean N(byte b10) {
        if (x(b10)) {
            this.f72262w = o(b10);
        }
        if (this.f72262w == this.f72250k) {
            return true;
        }
        return false;
    }

    private static char n(byte b10) {
        return (char) C[(b10 & ByteCompanionObject.MAX_VALUE) - 32];
    }

    private static int o(byte b10) {
        return (b10 >> 3) & 1;
    }

    private List<bn.a> p() {
        int size = this.f72252m.size();
        ArrayList arrayList = new ArrayList(size);
        int i10 = 2;
        for (int i11 = 0; i11 < size; i11++) {
            bn.a g10 = this.f72252m.get(i11).g(Integer.MIN_VALUE);
            arrayList.add(g10);
            if (g10 != null) {
                i10 = Math.min(i10, g10.f2708i);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i12 = 0; i12 < size; i12++) {
            bn.a aVar = (bn.a) arrayList.get(i12);
            if (aVar != null) {
                if (aVar.f2708i != i10) {
                    aVar = (bn.a) cn.a.e(this.f72252m.get(i12).g(i10));
                }
                arrayList2.add(aVar);
            }
        }
        return arrayList2;
    }

    private static char q(byte b10) {
        return (char) E[b10 & 31];
    }

    private static char r(byte b10) {
        return (char) F[b10 & 31];
    }

    private static char s(byte b10, byte b11) {
        if ((b10 & 1) == 0) {
            return q(b11);
        }
        return r(b11);
    }

    private static char t(byte b10) {
        return (char) D[b10 & 15];
    }

    private void u(byte b10) {
        boolean z10;
        this.f72253n.e(' ');
        if ((b10 & 1) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f72253n.p((b10 >> 1) & 7, z10);
    }

    private void v(byte b10) {
        if (b10 != 32) {
            if (b10 != 41) {
                switch (b10) {
                    case 37:
                        K(1);
                        L(2);
                        return;
                    case 38:
                        K(1);
                        L(3);
                        return;
                    case 39:
                        K(1);
                        L(4);
                        return;
                    default:
                        int i10 = this.f72256q;
                        if (i10 == 0) {
                            return;
                        }
                        if (b10 != 33) {
                            switch (b10) {
                                case 44:
                                    this.f72254o = Collections.emptyList();
                                    int i11 = this.f72256q;
                                    if (i11 == 1 || i11 == 3) {
                                        J();
                                        return;
                                    }
                                    return;
                                case 45:
                                    if (i10 == 1 && !this.f72253n.i()) {
                                        this.f72253n.k();
                                        return;
                                    }
                                    return;
                                case 46:
                                    J();
                                    return;
                                case 47:
                                    this.f72254o = p();
                                    J();
                                    return;
                                default:
                                    return;
                            }
                        }
                        this.f72253n.f();
                        return;
                }
            }
            K(3);
            return;
        }
        K(2);
    }

    private void w(byte b10, byte b11) {
        boolean z10;
        int i10;
        int i11 = f72246z[b10 & 7];
        if ((b11 & 32) != 0) {
            i11++;
        }
        if (i11 != this.f72253n.f72268d) {
            if (this.f72256q != 1 && !this.f72253n.i()) {
                C0990a c0990a = new C0990a(this.f72256q, this.f72257r);
                this.f72253n = c0990a;
                this.f72252m.add(c0990a);
            }
            this.f72253n.f72268d = i11;
        }
        boolean z11 = false;
        if ((b11 & 16) == 16) {
            z10 = true;
        } else {
            z10 = false;
        }
        if ((b11 & 1) == 1) {
            z11 = true;
        }
        int i12 = (b11 >> 1) & 7;
        C0990a c0990a2 = this.f72253n;
        if (z10) {
            i10 = 8;
        } else {
            i10 = i12;
        }
        c0990a2.p(i10, z11);
        if (z10) {
            this.f72253n.f72269e = A[i12];
        }
    }

    private static boolean x(byte b10) {
        if ((b10 & 224) == 0) {
            return true;
        }
        return false;
    }

    private static boolean y(byte b10, byte b11) {
        if ((b10 & 246) == 18 && (b11 & 224) == 32) {
            return true;
        }
        return false;
    }

    private static boolean z(byte b10, byte b11) {
        if ((b10 & 247) == 17 && (b11 & 240) == 32) {
            return true;
        }
        return false;
    }

    @Override // zo.e
    protected k c() {
        List<bn.a> list = this.f72254o;
        this.f72255p = list;
        return new f((List) cn.a.e(list));
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x006d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0017 A[SYNTHETIC] */
    @Override // zo.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void d(yo.o r10) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: zo.a.d(yo.o):void");
    }

    @Override // zo.e
    @Nullable
    public /* bridge */ /* synthetic */ o e() throws SubtitleDecoderException {
        return super.dequeueInputBuffer();
    }

    @Override // zo.e, fn.d
    @Nullable
    /* renamed from: f */
    public p dequeueOutputBuffer() throws SubtitleDecoderException {
        p g10;
        p dequeueOutputBuffer = super.dequeueOutputBuffer();
        if (dequeueOutputBuffer != null) {
            return dequeueOutputBuffer;
        }
        if (M() && (g10 = g()) != null) {
            this.f72254o = Collections.emptyList();
            this.f72264y = -9223372036854775807L;
            g10.m(h(), c(), Long.MAX_VALUE);
            return g10;
        }
        return null;
    }

    @Override // zo.e, fn.d
    public void flush() {
        super.flush();
        this.f72254o = null;
        this.f72255p = null;
        K(0);
        L(4);
        J();
        this.f72258s = false;
        this.f72259t = false;
        this.f72260u = (byte) 0;
        this.f72261v = (byte) 0;
        this.f72262w = 0;
        this.f72263x = true;
        this.f72264y = -9223372036854775807L;
    }

    @Override // zo.e
    protected boolean i() {
        if (this.f72254o != this.f72255p) {
            return true;
        }
        return false;
    }

    @Override // zo.e
    public /* bridge */ /* synthetic */ void j(o oVar) throws SubtitleDecoderException {
        super.queueInputBuffer(oVar);
    }

    @Override // zo.e, yo.l
    public /* bridge */ /* synthetic */ void setPositionUs(long j10) {
        super.setPositionUs(j10);
    }

    @Override // zo.e, fn.d
    public void release() {
    }
}
