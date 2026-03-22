package q6;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import b7.g0;
import b7.q;
import b7.s0;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.model.VideoRef;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
import p6.b;
import p6.i;
import p6.m;
import p6.n;
/* compiled from: Cea608Decoder.java */
/* loaded from: classes4.dex */
public final class a extends e {

    /* renamed from: h  reason: collision with root package name */
    private final int f65130h;

    /* renamed from: i  reason: collision with root package name */
    private final int f65131i;

    /* renamed from: j  reason: collision with root package name */
    private final int f65132j;

    /* renamed from: k  reason: collision with root package name */
    private final long f65133k;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private List<p6.b> f65136n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private List<p6.b> f65137o;

    /* renamed from: p  reason: collision with root package name */
    private int f65138p;

    /* renamed from: q  reason: collision with root package name */
    private int f65139q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f65140r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f65141s;

    /* renamed from: t  reason: collision with root package name */
    private byte f65142t;

    /* renamed from: u  reason: collision with root package name */
    private byte f65143u;

    /* renamed from: w  reason: collision with root package name */
    private boolean f65145w;

    /* renamed from: x  reason: collision with root package name */
    private long f65146x;

    /* renamed from: y  reason: collision with root package name */
    private static final int[] f65127y = {11, 1, 3, 12, 14, 5, 7, 9};

    /* renamed from: z  reason: collision with root package name */
    private static final int[] f65128z = {0, 4, 8, 12, 16, 20, 24, 28};
    private static final int[] A = {-1, -16711936, -16776961, -16711681, SupportMenu.CATEGORY_MASK, InputDeviceCompat.SOURCE_ANY, -65281};
    private static final int[] B = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, VideoRef.VALUE_VIDEO_REF_FIRST_SUB_VID, 93, VideoRef.VALUE_VIDEO_REF_PALLAS_VID_LABELS, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};
    private static final int[] C = {174, 176, 189, MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_SPEED, 8482, 162, 163, 9834, 224, 32, VideoRef.VALUE_VIDEO_REF_CATEGORY, 226, VideoRef.VALUE_VIDEO_REF_ORIGINAL_AUDIO_INFO_LIST, 238, 244, 251};
    private static final int[] D = {MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_COUNT, 201, 211, 218, 220, 252, AVMDLDataLoader.KeyIsLoaderFactoryP2PLevel, 161, 42, 39, 8212, 169, 8480, AVMDLDataLoader.KeyIsSpeedEngineSetting, AVMDLDataLoader.KeyIsEnableSpeedPredict, AVMDLDataLoader.KeyIsP2PConfigStr, 192, MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY, 199, 200, 202, 203, VideoRef.VALUE_VIDEO_REF_AI_BARRAGE_URL, 206, 207, VideoRef.VALUE_VIDEO_REF_SUBTITLE_POSITION_X, 212, 217, 249, 219, 171, 187};
    private static final int[] E = {MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, VideoRef.VALUE_VIDEO_REF_POPULARITY_LEVEL, 205, 204, VideoRef.VALUE_VIDEO_REF_CONST_DEPTH, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE, VideoRef.VALUE_VIDEO_REF_CODEC_HAS_h266, 214, 246, 223, 165, 164, 9474, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, VideoRef.VALUE_VIDEO_REF_HAS_EMBEDED_SUBTITLE, 216, 248, 9484, 9488, 9492, 9496};
    private static final boolean[] F = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* renamed from: g  reason: collision with root package name */
    private final g0 f65129g = new g0();

    /* renamed from: l  reason: collision with root package name */
    private final ArrayList<C0905a> f65134l = new ArrayList<>();

    /* renamed from: m  reason: collision with root package name */
    private C0905a f65135m = new C0905a(0, 4);

    /* renamed from: v  reason: collision with root package name */
    private int f65144v = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cea608Decoder.java */
    /* renamed from: q6.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0905a {

        /* renamed from: a  reason: collision with root package name */
        private final List<C0906a> f65147a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final List<SpannableString> f65148b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private final StringBuilder f65149c = new StringBuilder();

        /* renamed from: d  reason: collision with root package name */
        private int f65150d;

        /* renamed from: e  reason: collision with root package name */
        private int f65151e;

        /* renamed from: f  reason: collision with root package name */
        private int f65152f;

        /* renamed from: g  reason: collision with root package name */
        private int f65153g;

        /* renamed from: h  reason: collision with root package name */
        private int f65154h;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: Cea608Decoder.java */
        /* renamed from: q6.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static class C0906a {

            /* renamed from: a  reason: collision with root package name */
            public final int f65155a;

            /* renamed from: b  reason: collision with root package name */
            public final boolean f65156b;

            /* renamed from: c  reason: collision with root package name */
            public int f65157c;

            public C0906a(int i10, boolean z10, int i11) {
                this.f65155a = i10;
                this.f65156b = z10;
                this.f65157c = i11;
            }
        }

        public C0905a(int i10, int i11) {
            j(i10);
            this.f65154h = i11;
        }

        private SpannableString h() {
            int i10;
            boolean z10;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f65149c);
            int length = spannableStringBuilder.length();
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = 0;
            int i16 = 0;
            boolean z11 = false;
            while (i15 < this.f65147a.size()) {
                C0906a c0906a = this.f65147a.get(i15);
                boolean z12 = c0906a.f65156b;
                int i17 = c0906a.f65155a;
                if (i17 != 8) {
                    if (i17 == 7) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (i17 != 7) {
                        i14 = a.A[i17];
                    }
                    z11 = z10;
                }
                int i18 = c0906a.f65157c;
                i15++;
                if (i15 < this.f65147a.size()) {
                    i10 = this.f65147a.get(i15).f65157c;
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
            if (this.f65149c.length() < 32) {
                this.f65149c.append(c10);
            }
        }

        public void f() {
            int length = this.f65149c.length();
            if (length > 0) {
                this.f65149c.delete(length - 1, length);
                for (int size = this.f65147a.size() - 1; size >= 0; size--) {
                    C0906a c0906a = this.f65147a.get(size);
                    int i10 = c0906a.f65157c;
                    if (i10 == length) {
                        c0906a.f65157c = i10 - 1;
                    } else {
                        return;
                    }
                }
            }
        }

        @Nullable
        public p6.b g(int i10) {
            float f10;
            int i11 = this.f65151e + this.f65152f;
            int i12 = 32 - i11;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i13 = 0; i13 < this.f65148b.size(); i13++) {
                spannableStringBuilder.append(s0.P0(this.f65148b.get(i13), i12));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(s0.P0(h(), i12));
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int length = i12 - spannableStringBuilder.length();
            int i14 = i11 - length;
            if (i10 == Integer.MIN_VALUE) {
                if (this.f65153g == 2 && (Math.abs(i14) < 3 || length < 0)) {
                    i10 = 1;
                } else if (this.f65153g == 2 && i14 > 0) {
                    i10 = 2;
                } else {
                    i10 = 0;
                }
            }
            if (i10 != 1) {
                if (i10 == 2) {
                    i11 = 32 - length;
                }
                f10 = ((i11 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f10 = 0.5f;
            }
            int i15 = this.f65150d;
            if (i15 > 7) {
                i15 -= 17;
            } else if (this.f65153g == 1) {
                i15 -= this.f65154h - 1;
            }
            return new b.C0897b().o(spannableStringBuilder).p(Layout.Alignment.ALIGN_NORMAL).h(i15, 1).k(f10).l(i10).a();
        }

        public boolean i() {
            if (this.f65147a.isEmpty() && this.f65148b.isEmpty() && this.f65149c.length() == 0) {
                return true;
            }
            return false;
        }

        public void j(int i10) {
            this.f65153g = i10;
            this.f65147a.clear();
            this.f65148b.clear();
            this.f65149c.setLength(0);
            this.f65150d = 15;
            this.f65151e = 0;
            this.f65152f = 0;
        }

        public void k() {
            this.f65148b.add(h());
            this.f65149c.setLength(0);
            this.f65147a.clear();
            int min = Math.min(this.f65154h, this.f65150d);
            while (this.f65148b.size() >= min) {
                this.f65148b.remove(0);
            }
        }

        public void l(int i10) {
            this.f65153g = i10;
        }

        public void m(int i10) {
            this.f65154h = i10;
        }

        public void p(int i10, boolean z10) {
            this.f65147a.add(new C0906a(i10, z10, this.f65149c.length()));
        }
    }

    public a(String str, int i10, long j10) {
        long j11;
        int i11;
        if (j10 > 0) {
            j11 = j10 * 1000;
        } else {
            j11 = -9223372036854775807L;
        }
        this.f65133k = j11;
        if (MimeTypes.APPLICATION_MP4CEA608.equals(str)) {
            i11 = 2;
        } else {
            i11 = 3;
        }
        this.f65130h = i11;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        q.i("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
                        this.f65132j = 0;
                        this.f65131i = 0;
                    } else {
                        this.f65132j = 1;
                        this.f65131i = 1;
                    }
                } else {
                    this.f65132j = 0;
                    this.f65131i = 1;
                }
            } else {
                this.f65132j = 1;
                this.f65131i = 0;
            }
        } else {
            this.f65132j = 0;
            this.f65131i = 0;
        }
        I(0);
        H();
        this.f65145w = true;
        this.f65146x = -9223372036854775807L;
    }

    private static boolean A(byte b10) {
        if ((b10 & 240) == 16) {
            return true;
        }
        return false;
    }

    private boolean B(boolean z10, byte b10, byte b11) {
        if (z10 && A(b10)) {
            if (this.f65141s && this.f65142t == b10 && this.f65143u == b11) {
                this.f65141s = false;
                return true;
            }
            this.f65141s = true;
            this.f65142t = b10;
            this.f65143u = b11;
        } else {
            this.f65141s = false;
        }
        return false;
    }

    private static boolean C(byte b10) {
        if ((b10 & 246) == 20) {
            return true;
        }
        return false;
    }

    private static boolean D(byte b10, byte b11) {
        if ((b10 & 247) == 17 && (b11 & 240) == 48) {
            return true;
        }
        return false;
    }

    private static boolean E(byte b10, byte b11) {
        if ((b10 & 247) == 23 && b11 >= 33 && b11 <= 35) {
            return true;
        }
        return false;
    }

    private static boolean F(byte b10) {
        if (1 <= b10 && b10 <= 15) {
            return true;
        }
        return false;
    }

    private void G(byte b10, byte b11) {
        if (F(b10)) {
            this.f65145w = false;
        } else if (C(b10)) {
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
                                this.f65145w = false;
                                return;
                            default:
                                return;
                        }
                }
            }
            this.f65145w = true;
        }
    }

    private void H() {
        this.f65135m.j(this.f65138p);
        this.f65134l.clear();
        this.f65134l.add(this.f65135m);
    }

    private void I(int i10) {
        int i11 = this.f65138p;
        if (i11 == i10) {
            return;
        }
        this.f65138p = i10;
        if (i10 == 3) {
            for (int i12 = 0; i12 < this.f65134l.size(); i12++) {
                this.f65134l.get(i12).l(i10);
            }
            return;
        }
        H();
        if (i11 == 3 || i10 == 1 || i10 == 0) {
            this.f65136n = Collections.emptyList();
        }
    }

    private void J(int i10) {
        this.f65139q = i10;
        this.f65135m.m(i10);
    }

    private boolean K() {
        if (this.f65133k == -9223372036854775807L || this.f65146x == -9223372036854775807L || f() - this.f65146x < this.f65133k) {
            return false;
        }
        return true;
    }

    private boolean L(byte b10) {
        if (v(b10)) {
            this.f65144v = m(b10);
        }
        if (this.f65144v == this.f65132j) {
            return true;
        }
        return false;
    }

    private static char l(byte b10) {
        return (char) B[(b10 & ByteCompanionObject.MAX_VALUE) - 32];
    }

    private static int m(byte b10) {
        return (b10 >> 3) & 1;
    }

    private List<p6.b> n() {
        int size = this.f65134l.size();
        ArrayList arrayList = new ArrayList(size);
        int i10 = 2;
        for (int i11 = 0; i11 < size; i11++) {
            p6.b g10 = this.f65134l.get(i11).g(Integer.MIN_VALUE);
            arrayList.add(g10);
            if (g10 != null) {
                i10 = Math.min(i10, g10.f64743i);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i12 = 0; i12 < size; i12++) {
            p6.b bVar = (p6.b) arrayList.get(i12);
            if (bVar != null) {
                if (bVar.f64743i != i10) {
                    bVar = (p6.b) b7.a.e(this.f65134l.get(i12).g(i10));
                }
                arrayList2.add(bVar);
            }
        }
        return arrayList2;
    }

    private static char o(byte b10) {
        return (char) D[b10 & 31];
    }

    private static char p(byte b10) {
        return (char) E[b10 & 31];
    }

    private static char q(byte b10, byte b11) {
        if ((b10 & 1) == 0) {
            return o(b11);
        }
        return p(b11);
    }

    private static char r(byte b10) {
        return (char) C[b10 & 15];
    }

    private void s(byte b10) {
        boolean z10;
        this.f65135m.e(' ');
        if ((b10 & 1) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f65135m.p((b10 >> 1) & 7, z10);
    }

    private void t(byte b10) {
        if (b10 != 32) {
            if (b10 != 41) {
                switch (b10) {
                    case 37:
                        I(1);
                        J(2);
                        return;
                    case 38:
                        I(1);
                        J(3);
                        return;
                    case 39:
                        I(1);
                        J(4);
                        return;
                    default:
                        int i10 = this.f65138p;
                        if (i10 == 0) {
                            return;
                        }
                        if (b10 != 33) {
                            switch (b10) {
                                case 44:
                                    this.f65136n = Collections.emptyList();
                                    int i11 = this.f65138p;
                                    if (i11 == 1 || i11 == 3) {
                                        H();
                                        return;
                                    }
                                    return;
                                case 45:
                                    if (i10 == 1 && !this.f65135m.i()) {
                                        this.f65135m.k();
                                        return;
                                    }
                                    return;
                                case 46:
                                    H();
                                    return;
                                case 47:
                                    this.f65136n = n();
                                    H();
                                    return;
                                default:
                                    return;
                            }
                        }
                        this.f65135m.f();
                        return;
                }
            }
            I(3);
            return;
        }
        I(2);
    }

    private void u(byte b10, byte b11) {
        boolean z10;
        int i10;
        int i11 = f65127y[b10 & 7];
        if ((b11 & 32) != 0) {
            i11++;
        }
        if (i11 != this.f65135m.f65150d) {
            if (this.f65138p != 1 && !this.f65135m.i()) {
                C0905a c0905a = new C0905a(this.f65138p, this.f65139q);
                this.f65135m = c0905a;
                this.f65134l.add(c0905a);
            }
            this.f65135m.f65150d = i11;
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
        C0905a c0905a2 = this.f65135m;
        if (z10) {
            i10 = 8;
        } else {
            i10 = i12;
        }
        c0905a2.p(i10, z11);
        if (z10) {
            this.f65135m.f65151e = f65128z[i12];
        }
    }

    private static boolean v(byte b10) {
        if ((b10 & 224) == 0) {
            return true;
        }
        return false;
    }

    private static boolean w(byte b10, byte b11) {
        if ((b10 & 246) == 18 && (b11 & 224) == 32) {
            return true;
        }
        return false;
    }

    private static boolean x(byte b10, byte b11) {
        if ((b10 & 247) == 17 && (b11 & 240) == 32) {
            return true;
        }
        return false;
    }

    private static boolean y(byte b10, byte b11) {
        if ((b10 & 246) == 20 && (b11 & 240) == 32) {
            return true;
        }
        return false;
    }

    private static boolean z(byte b10, byte b11) {
        if ((b10 & 240) == 16 && (b11 & 192) == 64) {
            return true;
        }
        return false;
    }

    @Override // q6.e
    protected i a() {
        List<p6.b> list = this.f65136n;
        this.f65137o = list;
        return new f((List) b7.a.e(list));
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x006d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0017 A[SYNTHETIC] */
    @Override // q6.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void b(p6.m r10) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: q6.a.b(p6.m):void");
    }

    @Override // q6.e
    @Nullable
    public /* bridge */ /* synthetic */ m c() throws SubtitleDecoderException {
        return super.dequeueInputBuffer();
    }

    @Override // q6.e, r5.d
    @Nullable
    /* renamed from: d */
    public n dequeueOutputBuffer() throws SubtitleDecoderException {
        n e10;
        n dequeueOutputBuffer = super.dequeueOutputBuffer();
        if (dequeueOutputBuffer != null) {
            return dequeueOutputBuffer;
        }
        if (K() && (e10 = e()) != null) {
            this.f65136n = Collections.emptyList();
            this.f65146x = -9223372036854775807L;
            e10.m(f(), a(), Long.MAX_VALUE);
            return e10;
        }
        return null;
    }

    @Override // q6.e, r5.d
    public void flush() {
        super.flush();
        this.f65136n = null;
        this.f65137o = null;
        I(0);
        J(4);
        H();
        this.f65140r = false;
        this.f65141s = false;
        this.f65142t = (byte) 0;
        this.f65143u = (byte) 0;
        this.f65144v = 0;
        this.f65145w = true;
        this.f65146x = -9223372036854775807L;
    }

    @Override // q6.e
    protected boolean g() {
        if (this.f65136n != this.f65137o) {
            return true;
        }
        return false;
    }

    @Override // q6.e
    public /* bridge */ /* synthetic */ void h(m mVar) throws SubtitleDecoderException {
        super.queueInputBuffer(mVar);
    }

    @Override // q6.e, p6.j
    public /* bridge */ /* synthetic */ void setPositionUs(long j10) {
        super.setPositionUs(j10);
    }

    @Override // q6.e, r5.d
    public void release() {
    }
}
