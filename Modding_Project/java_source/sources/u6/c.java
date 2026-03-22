package u6;

import android.graphics.Color;
import android.graphics.PointF;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import b7.q;
import b7.s0;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SsaStyle.java */
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final String f67828a;

    /* renamed from: b  reason: collision with root package name */
    public final int f67829b;
    @Nullable
    @ColorInt

    /* renamed from: c  reason: collision with root package name */
    public final Integer f67830c;
    @Nullable
    @ColorInt

    /* renamed from: d  reason: collision with root package name */
    public final Integer f67831d;

    /* renamed from: e  reason: collision with root package name */
    public final float f67832e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f67833f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f67834g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f67835h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f67836i;

    /* renamed from: j  reason: collision with root package name */
    public final int f67837j;

    /* compiled from: SsaStyle.java */
    /* loaded from: classes4.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f67838a;

        /* renamed from: b  reason: collision with root package name */
        public final int f67839b;

        /* renamed from: c  reason: collision with root package name */
        public final int f67840c;

        /* renamed from: d  reason: collision with root package name */
        public final int f67841d;

        /* renamed from: e  reason: collision with root package name */
        public final int f67842e;

        /* renamed from: f  reason: collision with root package name */
        public final int f67843f;

        /* renamed from: g  reason: collision with root package name */
        public final int f67844g;

        /* renamed from: h  reason: collision with root package name */
        public final int f67845h;

        /* renamed from: i  reason: collision with root package name */
        public final int f67846i;

        /* renamed from: j  reason: collision with root package name */
        public final int f67847j;

        /* renamed from: k  reason: collision with root package name */
        public final int f67848k;

        private a(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20) {
            this.f67838a = i10;
            this.f67839b = i11;
            this.f67840c = i12;
            this.f67841d = i13;
            this.f67842e = i14;
            this.f67843f = i15;
            this.f67844g = i16;
            this.f67845h = i17;
            this.f67846i = i18;
            this.f67847j = i19;
            this.f67848k = i20;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Nullable
        public static a a(String str) {
            char c10;
            String[] split = TextUtils.split(str.substring(7), ",");
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            int i18 = -1;
            int i19 = -1;
            for (int i20 = 0; i20 < split.length; i20++) {
                String e10 = h7.a.e(split[i20].trim());
                e10.hashCode();
                switch (e10.hashCode()) {
                    case -1178781136:
                        if (e10.equals(TtmlNode.ITALIC)) {
                            c10 = 0;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -1026963764:
                        if (e10.equals(TtmlNode.UNDERLINE)) {
                            c10 = 1;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -192095652:
                        if (e10.equals("strikeout")) {
                            c10 = 2;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -70925746:
                        if (e10.equals("primarycolour")) {
                            c10 = 3;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 3029637:
                        if (e10.equals(TtmlNode.BOLD)) {
                            c10 = 4;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 3373707:
                        if (e10.equals("name")) {
                            c10 = 5;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 366554320:
                        if (e10.equals("fontsize")) {
                            c10 = 6;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 767321349:
                        if (e10.equals("borderstyle")) {
                            c10 = 7;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 1767875043:
                        if (e10.equals("alignment")) {
                            c10 = '\b';
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 1988365454:
                        if (e10.equals("outlinecolour")) {
                            c10 = '\t';
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
                        i16 = i20;
                        break;
                    case 1:
                        i17 = i20;
                        break;
                    case 2:
                        i18 = i20;
                        break;
                    case 3:
                        i12 = i20;
                        break;
                    case 4:
                        i15 = i20;
                        break;
                    case 5:
                        i10 = i20;
                        break;
                    case 6:
                        i14 = i20;
                        break;
                    case 7:
                        i19 = i20;
                        break;
                    case '\b':
                        i11 = i20;
                        break;
                    case '\t':
                        i13 = i20;
                        break;
                }
            }
            if (i10 != -1) {
                return new a(i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, split.length);
            }
            return null;
        }
    }

    /* compiled from: SsaStyle.java */
    /* loaded from: classes4.dex */
    static final class b {

        /* renamed from: c  reason: collision with root package name */
        private static final Pattern f67849c = Pattern.compile("\\{([^}]*)\\}");

        /* renamed from: d  reason: collision with root package name */
        private static final Pattern f67850d = Pattern.compile(s0.z("\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* renamed from: e  reason: collision with root package name */
        private static final Pattern f67851e = Pattern.compile(s0.z("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* renamed from: f  reason: collision with root package name */
        private static final Pattern f67852f = Pattern.compile("\\\\an(\\d+)");

        /* renamed from: a  reason: collision with root package name */
        public final int f67853a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final PointF f67854b;

        private b(int i10, @Nullable PointF pointF) {
            this.f67853a = i10;
            this.f67854b = pointF;
        }

        private static int a(String str) {
            Matcher matcher = f67852f.matcher(str);
            if (matcher.find()) {
                return c.e((String) b7.a.e(matcher.group(1)));
            }
            return -1;
        }

        public static b b(String str) {
            Matcher matcher = f67849c.matcher(str);
            PointF pointF = null;
            int i10 = -1;
            while (matcher.find()) {
                String str2 = (String) b7.a.e(matcher.group(1));
                try {
                    PointF c10 = c(str2);
                    if (c10 != null) {
                        pointF = c10;
                    }
                } catch (RuntimeException unused) {
                }
                try {
                    int a10 = a(str2);
                    if (a10 != -1) {
                        i10 = a10;
                    }
                } catch (RuntimeException unused2) {
                }
            }
            return new b(i10, pointF);
        }

        @Nullable
        private static PointF c(String str) {
            String group;
            String group2;
            Matcher matcher = f67850d.matcher(str);
            Matcher matcher2 = f67851e.matcher(str);
            boolean find = matcher.find();
            boolean find2 = matcher2.find();
            if (find) {
                if (find2) {
                    q.f("SsaStyle.Overrides", "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='" + str + "'");
                }
                group = matcher.group(1);
                group2 = matcher.group(2);
            } else if (find2) {
                group = matcher2.group(1);
                group2 = matcher2.group(2);
            } else {
                return null;
            }
            return new PointF(Float.parseFloat(((String) b7.a.e(group)).trim()), Float.parseFloat(((String) b7.a.e(group2)).trim()));
        }

        public static String d(String str) {
            return f67849c.matcher(str).replaceAll("");
        }
    }

    private c(String str, int i10, @Nullable @ColorInt Integer num, @Nullable @ColorInt Integer num2, float f10, boolean z10, boolean z11, boolean z12, boolean z13, int i11) {
        this.f67828a = str;
        this.f67829b = i10;
        this.f67830c = num;
        this.f67831d = num2;
        this.f67832e = f10;
        this.f67833f = z10;
        this.f67834g = z11;
        this.f67835h = z12;
        this.f67836i = z13;
        this.f67837j = i11;
    }

    @Nullable
    public static c b(String str, a aVar) {
        int i10;
        Integer num;
        Integer num2;
        float f10;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        int i11;
        b7.a.a(str.startsWith("Style:"));
        String[] split = TextUtils.split(str.substring(6), ",");
        int length = split.length;
        int i12 = aVar.f67848k;
        if (length != i12) {
            q.i("SsaStyle", s0.z("Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", Integer.valueOf(i12), Integer.valueOf(split.length), str));
            return null;
        }
        try {
            String trim = split[aVar.f67838a].trim();
            int i13 = aVar.f67839b;
            if (i13 != -1) {
                i10 = e(split[i13].trim());
            } else {
                i10 = -1;
            }
            int i14 = aVar.f67840c;
            if (i14 != -1) {
                num = h(split[i14].trim());
            } else {
                num = null;
            }
            int i15 = aVar.f67841d;
            if (i15 != -1) {
                num2 = h(split[i15].trim());
            } else {
                num2 = null;
            }
            int i16 = aVar.f67842e;
            if (i16 != -1) {
                f10 = i(split[i16].trim());
            } else {
                f10 = -3.4028235E38f;
            }
            float f11 = f10;
            int i17 = aVar.f67843f;
            if (i17 != -1 && f(split[i17].trim())) {
                z10 = true;
            } else {
                z10 = false;
            }
            int i18 = aVar.f67844g;
            if (i18 != -1 && f(split[i18].trim())) {
                z11 = true;
            } else {
                z11 = false;
            }
            int i19 = aVar.f67845h;
            if (i19 != -1 && f(split[i19].trim())) {
                z12 = true;
            } else {
                z12 = false;
            }
            int i20 = aVar.f67846i;
            if (i20 != -1 && f(split[i20].trim())) {
                z13 = true;
            } else {
                z13 = false;
            }
            int i21 = aVar.f67847j;
            if (i21 != -1) {
                i11 = g(split[i21].trim());
            } else {
                i11 = -1;
            }
            return new c(trim, i10, num, num2, f11, z10, z11, z12, z13, i11);
        } catch (RuntimeException e10) {
            q.j("SsaStyle", "Skipping malformed 'Style:' line: '" + str + "'", e10);
            return null;
        }
    }

    private static boolean c(int i10) {
        switch (i10) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    private static boolean d(int i10) {
        if (i10 == 1 || i10 == 3) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int e(String str) {
        try {
            int parseInt = Integer.parseInt(str.trim());
            if (c(parseInt)) {
                return parseInt;
            }
        } catch (NumberFormatException unused) {
        }
        q.i("SsaStyle", "Ignoring unknown alignment: " + str);
        return -1;
    }

    private static boolean f(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            if (parseInt != 1 && parseInt != -1) {
                return false;
            }
            return true;
        } catch (NumberFormatException e10) {
            q.j("SsaStyle", "Failed to parse boolean value: '" + str + "'", e10);
            return false;
        }
    }

    private static int g(String str) {
        try {
            int parseInt = Integer.parseInt(str.trim());
            if (d(parseInt)) {
                return parseInt;
            }
        } catch (NumberFormatException unused) {
        }
        q.i("SsaStyle", "Ignoring unknown BorderStyle: " + str);
        return -1;
    }

    @Nullable
    @ColorInt
    public static Integer h(String str) {
        long parseLong;
        boolean z10;
        try {
            if (str.startsWith("&H")) {
                parseLong = Long.parseLong(str.substring(2), 16);
            } else {
                parseLong = Long.parseLong(str);
            }
            if (parseLong <= 4294967295L) {
                z10 = true;
            } else {
                z10 = false;
            }
            b7.a.a(z10);
            int d10 = Ints.d(((parseLong >> 24) & 255) ^ 255);
            int d11 = Ints.d((parseLong >> 16) & 255);
            return Integer.valueOf(Color.argb(d10, Ints.d(parseLong & 255), Ints.d((parseLong >> 8) & 255), d11));
        } catch (IllegalArgumentException e10) {
            q.j("SsaStyle", "Failed to parse color expression: '" + str + "'", e10);
            return null;
        }
    }

    private static float i(String str) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e10) {
            q.j("SsaStyle", "Failed to parse font size: '" + str + "'", e10);
            return -3.4028235E38f;
        }
    }
}
