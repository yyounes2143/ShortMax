package cn;

import android.annotation.SuppressLint;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.exifinterface.media.ExifInterface;
import com.google.common.collect.ImmutableList;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: CodecSpecificDataUtil.java */
@SuppressLint({"InlinedApi"})
/* loaded from: classes8.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f3599a = {0, 0, 0, 1};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f3600b = {"", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C"};

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f3601c = Pattern.compile("^\\D?(\\d+)$");

    private static int a(int i10) {
        switch (i10) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            case 13:
                return 8192;
            case 14:
                return 16384;
            case 15:
                return 32768;
            case 16:
                return 65536;
            case 17:
                return 131072;
            case 18:
                return 262144;
            case 19:
                return 524288;
            case 20:
                return 1048576;
            case 21:
                return 2097152;
            case 22:
                return 4194304;
            case 23:
                return 8388608;
            default:
                return -1;
        }
    }

    private static int b(int i10) {
        switch (i10) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            default:
                switch (i10) {
                    case 20:
                        return 32;
                    case 21:
                        return 64;
                    case 22:
                        return 128;
                    default:
                        switch (i10) {
                            case 30:
                                return 256;
                            case 31:
                                return 512;
                            case 32:
                                return 1024;
                            default:
                                switch (i10) {
                                    case 40:
                                        return 2048;
                                    case 41:
                                        return 4096;
                                    case 42:
                                        return 8192;
                                    default:
                                        switch (i10) {
                                            case 50:
                                                return 16384;
                                            case 51:
                                                return 32768;
                                            case 52:
                                                return 65536;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
        }
    }

    private static int c(int i10) {
        if (i10 != 66) {
            if (i10 != 77) {
                if (i10 != 88) {
                    if (i10 != 100) {
                        if (i10 != 110) {
                            if (i10 != 122) {
                                if (i10 != 244) {
                                    return -1;
                                }
                                return 64;
                            }
                            return 32;
                        }
                        return 16;
                    }
                    return 8;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    public static String d(int i10, int i11, int i12) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
    }

    public static List<byte[]> e(boolean z10) {
        return Collections.singletonList(z10 ? new byte[]{1} : new byte[]{0});
    }

    public static String f(int i10, boolean z10, int i11, int i12, int[] iArr, int i13) {
        char c10;
        String str = f3600b[i10];
        Integer valueOf = Integer.valueOf(i11);
        Integer valueOf2 = Integer.valueOf(i12);
        if (z10) {
            c10 = 'H';
        } else {
            c10 = 'L';
        }
        StringBuilder sb2 = new StringBuilder(m0.G("hvc1.%s%d.%X.%c%d", str, valueOf, valueOf2, Character.valueOf(c10), Integer.valueOf(i13)));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i14 = 0; i14 < length; i14++) {
            sb2.append(String.format(".%02X", Integer.valueOf(iArr[i14])));
        }
        return sb2.toString();
    }

    public static byte[] g(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = f3599a;
        byte[] bArr3 = new byte[bArr2.length + i11];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i10, bArr3, bArr2.length, i11);
        return bArr3;
    }

    public static ImmutableList<byte[]> h(byte b10, byte b11, byte b12, byte b13) {
        return ImmutableList.B(new byte[]{1, 1, b10, 2, 1, b11, 3, 1, b12, 4, 1, b13});
    }

    @Nullable
    private static Integer i(@Nullable String str) {
        if (str == null) {
            return null;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 1537:
                if (str.equals(HiAnalyticsConstant.KeyAndValue.NUMBER_01)) {
                    c10 = 0;
                    break;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1567:
                if (str.equals("10")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1568:
                if (str.equals("11")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1569:
                if (str.equals("12")) {
                    c10 = 11;
                    break;
                }
                break;
            case 1570:
                if (str.equals("13")) {
                    c10 = '\f';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case '\b':
                return 256;
            case '\t':
                return 512;
            case '\n':
                return 1024;
            case 11:
                return 2048;
            case '\f':
                return 4096;
            default:
                return null;
        }
    }

    @Nullable
    private static Integer j(@Nullable String str) {
        if (str == null) {
            return null;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 1536:
                if (str.equals("00")) {
                    c10 = 0;
                    break;
                }
                break;
            case 1537:
                if (str.equals(HiAnalyticsConstant.KeyAndValue.NUMBER_01)) {
                    c10 = 1;
                    break;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1567:
                if (str.equals("10")) {
                    c10 = '\n';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case '\b':
                return 256;
            case '\t':
                return 512;
            case '\n':
                return 1024;
            default:
                return null;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> k(String str, String[] strArr) {
        int t10;
        if (strArr.length != 3) {
            r.h("CodecSpecificDataUtil", "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
        try {
            if (MimeTypes.AUDIO_AAC.equals(zm.u.h(Integer.parseInt(strArr[1], 16))) && (t10 = t(Integer.parseInt(strArr[2]))) != -1) {
                return new Pair<>(Integer.valueOf(t10), 0);
            }
        } catch (NumberFormatException unused) {
            r.h("CodecSpecificDataUtil", "Ignoring malformed MP4A codec string: " + str);
        }
        return null;
    }

    @Nullable
    private static Pair<Integer, Integer> l(String str, String[] strArr, @Nullable zm.g gVar) {
        int i10;
        if (strArr.length < 4) {
            r.h("CodecSpecificDataUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
        int i11 = 1;
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2].substring(0, 2));
            int parseInt3 = Integer.parseInt(strArr[3]);
            if (parseInt != 0) {
                r.h("CodecSpecificDataUtil", "Unknown AV1 profile: " + parseInt);
                return null;
            } else if (parseInt3 != 8 && parseInt3 != 10) {
                r.h("CodecSpecificDataUtil", "Unknown AV1 bit depth: " + parseInt3);
                return null;
            } else {
                if (parseInt3 != 8) {
                    if (gVar != null && (gVar.f71945d != null || (i10 = gVar.f71944c) == 7 || i10 == 6)) {
                        i11 = 4096;
                    } else {
                        i11 = 2;
                    }
                }
                int a10 = a(parseInt2);
                if (a10 == -1) {
                    r.h("CodecSpecificDataUtil", "Unknown AV1 level: " + parseInt2);
                    return null;
                }
                return new Pair<>(Integer.valueOf(i11), Integer.valueOf(a10));
            }
        } catch (NumberFormatException unused) {
            r.h("CodecSpecificDataUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> m(String str, String[] strArr) {
        int parseInt;
        int i10;
        if (strArr.length < 2) {
            r.h("CodecSpecificDataUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i10 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                parseInt = Integer.parseInt(strArr[1].substring(4), 16);
            } else if (strArr.length >= 3) {
                int parseInt2 = Integer.parseInt(strArr[1]);
                parseInt = Integer.parseInt(strArr[2]);
                i10 = parseInt2;
            } else {
                r.h("CodecSpecificDataUtil", "Ignoring malformed AVC codec string: " + str);
                return null;
            }
            int c10 = c(i10);
            if (c10 == -1) {
                r.h("CodecSpecificDataUtil", "Unknown AVC profile: " + i10);
                return null;
            }
            int b10 = b(parseInt);
            if (b10 == -1) {
                r.h("CodecSpecificDataUtil", "Unknown AVC level: " + parseInt);
                return null;
            }
            return new Pair<>(Integer.valueOf(c10), Integer.valueOf(b10));
        } catch (NumberFormatException unused) {
            r.h("CodecSpecificDataUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0080, code lost:
        if (r3.equals("av01") == false) goto L11;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> n(io.bidmachine.media3.common.a r6) {
        /*
            r0 = 0
            java.lang.String r1 = r6.f55170k
            r2 = 0
            if (r1 != 0) goto L7
            return r2
        L7:
            java.lang.String r3 = "\\."
            java.lang.String[] r1 = r1.split(r3)
            java.lang.String r3 = "video/dolby-vision"
            java.lang.String r4 = r6.f55174o
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L1e
            java.lang.String r6 = r6.f55170k
            android.util.Pair r6 = o(r6, r1)
            return r6
        L1e:
            r3 = r1[r0]
            r3.hashCode()
            r4 = -1
            int r5 = r3.hashCode()
            switch(r5) {
                case 3004662: goto L7a;
                case 3006243: goto L6f;
                case 3006244: goto L64;
                case 3199032: goto L59;
                case 3214780: goto L4e;
                case 3356560: goto L43;
                case 3475740: goto L38;
                case 3624515: goto L2d;
                default: goto L2b;
            }
        L2b:
            r0 = r4
            goto L83
        L2d:
            java.lang.String r0 = "vp09"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L36
            goto L2b
        L36:
            r0 = 7
            goto L83
        L38:
            java.lang.String r0 = "s263"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L41
            goto L2b
        L41:
            r0 = 6
            goto L83
        L43:
            java.lang.String r0 = "mp4a"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L4c
            goto L2b
        L4c:
            r0 = 5
            goto L83
        L4e:
            java.lang.String r0 = "hvc1"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L57
            goto L2b
        L57:
            r0 = 4
            goto L83
        L59:
            java.lang.String r0 = "hev1"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L62
            goto L2b
        L62:
            r0 = 3
            goto L83
        L64:
            java.lang.String r0 = "avc2"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L6d
            goto L2b
        L6d:
            r0 = 2
            goto L83
        L6f:
            java.lang.String r0 = "avc1"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L78
            goto L2b
        L78:
            r0 = 1
            goto L83
        L7a:
            java.lang.String r5 = "av01"
            boolean r3 = r3.equals(r5)
            if (r3 != 0) goto L83
            goto L2b
        L83:
            switch(r0) {
                case 0: goto Lac;
                case 1: goto La5;
                case 2: goto La5;
                case 3: goto L9c;
                case 4: goto L9c;
                case 5: goto L95;
                case 6: goto L8e;
                case 7: goto L87;
                default: goto L86;
            }
        L86:
            return r2
        L87:
            java.lang.String r6 = r6.f55170k
            android.util.Pair r6 = r(r6, r1)
            return r6
        L8e:
            java.lang.String r6 = r6.f55170k
            android.util.Pair r6 = p(r6, r1)
            return r6
        L95:
            java.lang.String r6 = r6.f55170k
            android.util.Pair r6 = k(r6, r1)
            return r6
        L9c:
            java.lang.String r0 = r6.f55170k
            zm.g r6 = r6.C
            android.util.Pair r6 = q(r0, r1, r6)
            return r6
        La5:
            java.lang.String r6 = r6.f55170k
            android.util.Pair r6 = m(r6, r1)
            return r6
        Lac:
            java.lang.String r0 = r6.f55170k
            zm.g r6 = r6.C
            android.util.Pair r6 = l(r0, r1, r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.i.n(io.bidmachine.media3.common.a):android.util.Pair");
    }

    @Nullable
    private static Pair<Integer, Integer> o(String str, String[] strArr) {
        if (strArr.length < 3) {
            r.h("CodecSpecificDataUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        Matcher matcher = f3601c.matcher(strArr[1]);
        if (!matcher.matches()) {
            r.h("CodecSpecificDataUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        String group = matcher.group(1);
        Integer j10 = j(group);
        if (j10 == null) {
            r.h("CodecSpecificDataUtil", "Unknown Dolby Vision profile string: " + group);
            return null;
        }
        String str2 = strArr[2];
        Integer i10 = i(str2);
        if (i10 == null) {
            r.h("CodecSpecificDataUtil", "Unknown Dolby Vision level string: " + str2);
            return null;
        }
        return new Pair<>(j10, i10);
    }

    private static Pair<Integer, Integer> p(String str, String[] strArr) {
        Pair<Integer, Integer> pair = new Pair<>(1, 1);
        if (strArr.length < 3) {
            r.h("CodecSpecificDataUtil", "Ignoring malformed H263 codec string: " + str);
            return pair;
        }
        try {
            return new Pair<>(Integer.valueOf(Integer.parseInt(strArr[1])), Integer.valueOf(Integer.parseInt(strArr[2])));
        } catch (NumberFormatException unused) {
            r.h("CodecSpecificDataUtil", "Ignoring malformed H263 codec string: " + str);
            return pair;
        }
    }

    @Nullable
    public static Pair<Integer, Integer> q(String str, String[] strArr, @Nullable zm.g gVar) {
        if (strArr.length < 4) {
            r.h("CodecSpecificDataUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        int i10 = 1;
        Matcher matcher = f3601c.matcher(strArr[1]);
        if (!matcher.matches()) {
            r.h("CodecSpecificDataUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        String group = matcher.group(1);
        if (!"1".equals(group)) {
            i10 = 6;
            if ("2".equals(group)) {
                if (gVar != null && gVar.f71944c == 6) {
                    i10 = 4096;
                } else {
                    i10 = 2;
                }
            } else if (!SubsSku.SCENE_AD_2_PAY.equals(group)) {
                r.h("CodecSpecificDataUtil", "Unknown HEVC profile string: " + group);
                return null;
            }
        }
        String str2 = strArr[3];
        Integer s10 = s(str2);
        if (s10 == null) {
            r.h("CodecSpecificDataUtil", "Unknown HEVC level string: " + str2);
            return null;
        }
        return new Pair<>(Integer.valueOf(i10), s10);
    }

    @Nullable
    private static Pair<Integer, Integer> r(String str, String[] strArr) {
        if (strArr.length < 3) {
            r.h("CodecSpecificDataUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2]);
            int x10 = x(parseInt);
            if (x10 == -1) {
                r.h("CodecSpecificDataUtil", "Unknown VP9 profile: " + parseInt);
                return null;
            }
            int w10 = w(parseInt2);
            if (w10 == -1) {
                r.h("CodecSpecificDataUtil", "Unknown VP9 level: " + parseInt2);
                return null;
            }
            return new Pair<>(Integer.valueOf(x10), Integer.valueOf(w10));
        } catch (NumberFormatException unused) {
            r.h("CodecSpecificDataUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
    }

    @Nullable
    private static Integer s(@Nullable String str) {
        if (str == null) {
            return null;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 70821:
                if (str.equals("H30")) {
                    c10 = 0;
                    break;
                }
                break;
            case 70914:
                if (str.equals("H60")) {
                    c10 = 1;
                    break;
                }
                break;
            case 70917:
                if (str.equals("H63")) {
                    c10 = 2;
                    break;
                }
                break;
            case 71007:
                if (str.equals("H90")) {
                    c10 = 3;
                    break;
                }
                break;
            case 71010:
                if (str.equals("H93")) {
                    c10 = 4;
                    break;
                }
                break;
            case 74665:
                if (str.equals("L30")) {
                    c10 = 5;
                    break;
                }
                break;
            case 74758:
                if (str.equals("L60")) {
                    c10 = 6;
                    break;
                }
                break;
            case 74761:
                if (str.equals("L63")) {
                    c10 = 7;
                    break;
                }
                break;
            case 74851:
                if (str.equals("L90")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 74854:
                if (str.equals("L93")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 2193639:
                if (str.equals("H120")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 2193642:
                if (str.equals("H123")) {
                    c10 = 11;
                    break;
                }
                break;
            case 2193732:
                if (str.equals("H150")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 2193735:
                if (str.equals("H153")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 2193738:
                if (str.equals("H156")) {
                    c10 = 14;
                    break;
                }
                break;
            case 2193825:
                if (str.equals("H180")) {
                    c10 = 15;
                    break;
                }
                break;
            case 2193828:
                if (str.equals("H183")) {
                    c10 = 16;
                    break;
                }
                break;
            case 2193831:
                if (str.equals("H186")) {
                    c10 = 17;
                    break;
                }
                break;
            case 2312803:
                if (str.equals("L120")) {
                    c10 = 18;
                    break;
                }
                break;
            case 2312806:
                if (str.equals("L123")) {
                    c10 = 19;
                    break;
                }
                break;
            case 2312896:
                if (str.equals("L150")) {
                    c10 = 20;
                    break;
                }
                break;
            case 2312899:
                if (str.equals("L153")) {
                    c10 = 21;
                    break;
                }
                break;
            case 2312902:
                if (str.equals("L156")) {
                    c10 = 22;
                    break;
                }
                break;
            case 2312989:
                if (str.equals("L180")) {
                    c10 = 23;
                    break;
                }
                break;
            case 2312992:
                if (str.equals("L183")) {
                    c10 = 24;
                    break;
                }
                break;
            case 2312995:
                if (str.equals("L186")) {
                    c10 = 25;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 2;
            case 1:
                return 8;
            case 2:
                return 32;
            case 3:
                return 128;
            case 4:
                return 512;
            case 5:
                return 1;
            case 6:
                return 4;
            case 7:
                return 16;
            case '\b':
                return 64;
            case '\t':
                return 256;
            case '\n':
                return 2048;
            case 11:
                return 8192;
            case '\f':
                return 32768;
            case '\r':
                return 131072;
            case 14:
                return 524288;
            case 15:
                return 2097152;
            case 16:
                return 8388608;
            case 17:
                return 33554432;
            case 18:
                return 1024;
            case 19:
                return 4096;
            case 20:
                return 16384;
            case 21:
                return 65536;
            case 22:
                return 262144;
            case 23:
                return 1048576;
            case 24:
                return 4194304;
            case 25:
                return 16777216;
            default:
                return null;
        }
    }

    private static int t(int i10) {
        int i11 = 17;
        if (i10 != 17) {
            i11 = 20;
            if (i10 != 20) {
                i11 = 23;
                if (i10 != 23) {
                    i11 = 29;
                    if (i10 != 29) {
                        i11 = 39;
                        if (i10 != 39) {
                            i11 = 42;
                            if (i10 != 42) {
                                switch (i10) {
                                    case 1:
                                        return 1;
                                    case 2:
                                        return 2;
                                    case 3:
                                        return 3;
                                    case 4:
                                        return 4;
                                    case 5:
                                        return 5;
                                    case 6:
                                        return 6;
                                    default:
                                        return -1;
                                }
                            }
                        }
                    }
                }
            }
        }
        return i11;
    }

    public static Pair<Integer, Integer> u(byte[] bArr) {
        b0 b0Var = new b0(bArr);
        b0Var.W(9);
        int H = b0Var.H();
        b0Var.W(20);
        return Pair.create(Integer.valueOf(b0Var.L()), Integer.valueOf(H));
    }

    public static boolean v(List<byte[]> list) {
        if (list.size() != 1 || list.get(0).length != 1 || list.get(0)[0] != 1) {
            return false;
        }
        return true;
    }

    private static int w(int i10) {
        if (i10 != 10) {
            if (i10 != 11) {
                if (i10 != 20) {
                    if (i10 != 21) {
                        if (i10 != 30) {
                            if (i10 != 31) {
                                if (i10 != 40) {
                                    if (i10 != 41) {
                                        if (i10 != 50) {
                                            if (i10 != 51) {
                                                switch (i10) {
                                                    case 60:
                                                        return 2048;
                                                    case 61:
                                                        return 4096;
                                                    case 62:
                                                        return 8192;
                                                    default:
                                                        return -1;
                                                }
                                            }
                                            return 512;
                                        }
                                        return 256;
                                    }
                                    return 128;
                                }
                                return 64;
                            }
                            return 32;
                        }
                        return 16;
                    }
                    return 8;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    private static int x(int i10) {
        if (i10 == 0) {
            return 1;
        }
        if (i10 == 1) {
            return 2;
        }
        if (i10 != 2) {
            if (i10 != 3) {
                return -1;
            }
            return 8;
        }
        return 4;
    }
}
