package b7;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: MimeTypes.java */
/* loaded from: classes4.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private static final ArrayList<a> f2521a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f2522b = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MimeTypes.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f2523a;

        /* renamed from: b  reason: collision with root package name */
        public final String f2524b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2525c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MimeTypes.java */
    @VisibleForTesting
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f2526a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2527b;

        public b(int i10, int i11) {
            this.f2526a = i10;
            this.f2527b = i11;
        }

        public int a() {
            int i10 = this.f2527b;
            if (i10 != 2) {
                if (i10 != 5) {
                    if (i10 != 29) {
                        if (i10 != 42) {
                            if (i10 != 22) {
                                if (i10 != 23) {
                                    return 0;
                                }
                                return 15;
                            }
                            return 1073741824;
                        }
                        return 16;
                    }
                    return 12;
                }
                return 11;
            }
            return 10;
        }
    }

    public static boolean a(@Nullable String str, @Nullable String str2) {
        b g10;
        if (str == null) {
            return false;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals(MimeTypes.AUDIO_E_AC3_JOC)) {
                    c10 = 0;
                    break;
                }
                break;
            case -432837260:
                if (str.equals(MimeTypes.AUDIO_MPEG_L1)) {
                    c10 = 1;
                    break;
                }
                break;
            case -432837259:
                if (str.equals(MimeTypes.AUDIO_MPEG_L2)) {
                    c10 = 2;
                    break;
                }
                break;
            case -53558318:
                if (str.equals(MimeTypes.AUDIO_AAC)) {
                    c10 = 3;
                    break;
                }
                break;
            case 187078296:
                if (str.equals(MimeTypes.AUDIO_AC3)) {
                    c10 = 4;
                    break;
                }
                break;
            case 187094639:
                if (str.equals(MimeTypes.AUDIO_RAW)) {
                    c10 = 5;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals(MimeTypes.AUDIO_E_AC3)) {
                    c10 = 6;
                    break;
                }
                break;
            case 1504619009:
                if (str.equals(MimeTypes.AUDIO_FLAC)) {
                    c10 = 7;
                    break;
                }
                break;
            case 1504831518:
                if (str.equals(MimeTypes.AUDIO_MPEG)) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1903231877:
                if (str.equals(MimeTypes.AUDIO_ALAW)) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1903589369:
                if (str.equals(MimeTypes.AUDIO_MLAW)) {
                    c10 = '\n';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
                return true;
            case 3:
                if (str2 == null || (g10 = g(str2)) == null) {
                    return false;
                }
                int a10 = g10.a();
                if (a10 != 0 && a10 != 16) {
                    return true;
                }
                return false;
            default:
                return false;
        }
    }

    @Nullable
    public static String b(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : s0.J0(str)) {
            String e10 = e(str2);
            if (e10 != null && l(e10)) {
                return e10;
            }
        }
        return null;
    }

    @Nullable
    private static String c(String str) {
        int size = f2521a.size();
        for (int i10 = 0; i10 < size; i10++) {
            a aVar = f2521a.get(i10);
            if (str.startsWith(aVar.f2524b)) {
                return aVar.f2523a;
            }
        }
        return null;
    }

    public static int d(String str, @Nullable String str2) {
        b g10;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals(MimeTypes.AUDIO_E_AC3_JOC)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1095064472:
                if (str.equals(MimeTypes.AUDIO_DTS)) {
                    c10 = 1;
                    break;
                }
                break;
            case -53558318:
                if (str.equals(MimeTypes.AUDIO_AAC)) {
                    c10 = 2;
                    break;
                }
                break;
            case 187078296:
                if (str.equals(MimeTypes.AUDIO_AC3)) {
                    c10 = 3;
                    break;
                }
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals(MimeTypes.AUDIO_E_AC3)) {
                    c10 = 5;
                    break;
                }
                break;
            case 1504831518:
                if (str.equals(MimeTypes.AUDIO_MPEG)) {
                    c10 = 6;
                    break;
                }
                break;
            case 1505942594:
                if (str.equals(MimeTypes.AUDIO_DTS_HD)) {
                    c10 = 7;
                    break;
                }
                break;
            case 1556697186:
                if (str.equals(MimeTypes.AUDIO_TRUEHD)) {
                    c10 = '\b';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 18;
            case 1:
                return 7;
            case 2:
                if (str2 == null || (g10 = g(str2)) == null) {
                    return 0;
                }
                return g10.a();
            case 3:
                return 5;
            case 4:
                return 17;
            case 5:
                return 6;
            case 6:
                return 9;
            case 7:
                return 8;
            case '\b':
                return 14;
            default:
                return 0;
        }
    }

    @Nullable
    public static String e(@Nullable String str) {
        b g10;
        String str2 = null;
        if (str == null) {
            return null;
        }
        String e10 = h7.a.e(str.trim());
        if (!e10.startsWith("avc1") && !e10.startsWith("avc3")) {
            if (!e10.startsWith("hev1") && !e10.startsWith("hvc1")) {
                if (!e10.startsWith("dvav") && !e10.startsWith("dva1") && !e10.startsWith("dvhe") && !e10.startsWith("dvh1")) {
                    if (e10.startsWith("av01")) {
                        return com.unity3d.services.core.device.MimeTypes.VIDEO_AV1;
                    }
                    if (!e10.startsWith("vp9") && !e10.startsWith("vp09")) {
                        if (!e10.startsWith("vp8") && !e10.startsWith("vp08")) {
                            if (e10.startsWith("mp4a")) {
                                if (e10.startsWith("mp4a.") && (g10 = g(e10)) != null) {
                                    str2 = f(g10.f2526a);
                                }
                                if (str2 == null) {
                                    return MimeTypes.AUDIO_AAC;
                                }
                                return str2;
                            } else if (e10.startsWith("mha1")) {
                                return "audio/mha1";
                            } else {
                                if (e10.startsWith("mhm1")) {
                                    return "audio/mhm1";
                                }
                                if (!e10.startsWith("ac-3") && !e10.startsWith("dac3")) {
                                    if (!e10.startsWith("ec-3") && !e10.startsWith("dec3")) {
                                        if (e10.startsWith("ec+3")) {
                                            return MimeTypes.AUDIO_E_AC3_JOC;
                                        }
                                        if (!e10.startsWith("ac-4") && !e10.startsWith("dac4")) {
                                            if (e10.startsWith("dtsc")) {
                                                return MimeTypes.AUDIO_DTS;
                                            }
                                            if (e10.startsWith("dtse")) {
                                                return MimeTypes.AUDIO_DTS_EXPRESS;
                                            }
                                            if (!e10.startsWith("dtsh") && !e10.startsWith("dtsl")) {
                                                if (e10.startsWith("dtsx")) {
                                                    return "audio/vnd.dts.uhd;profile=p2";
                                                }
                                                if (e10.startsWith("opus")) {
                                                    return MimeTypes.AUDIO_OPUS;
                                                }
                                                if (e10.startsWith("vorbis")) {
                                                    return MimeTypes.AUDIO_VORBIS;
                                                }
                                                if (e10.startsWith("flac")) {
                                                    return MimeTypes.AUDIO_FLAC;
                                                }
                                                if (e10.startsWith("stpp")) {
                                                    return MimeTypes.APPLICATION_TTML;
                                                }
                                                if (e10.startsWith("wvtt")) {
                                                    return MimeTypes.TEXT_VTT;
                                                }
                                                if (e10.contains("cea708")) {
                                                    return MimeTypes.APPLICATION_CEA708;
                                                }
                                                if (!e10.contains("eia608") && !e10.contains("cea608")) {
                                                    return c(e10);
                                                }
                                                return MimeTypes.APPLICATION_CEA608;
                                            }
                                            return MimeTypes.AUDIO_DTS_HD;
                                        }
                                        return "audio/ac4";
                                    }
                                    return MimeTypes.AUDIO_E_AC3;
                                }
                                return MimeTypes.AUDIO_AC3;
                            }
                        }
                        return MimeTypes.VIDEO_VP8;
                    }
                    return MimeTypes.VIDEO_VP9;
                }
                return "video/dolby-vision";
            }
            return "video/hevc";
        }
        return "video/avc";
    }

    @Nullable
    public static String f(int i10) {
        if (i10 != 32) {
            if (i10 != 33) {
                if (i10 != 35) {
                    if (i10 != 64) {
                        if (i10 != 163) {
                            if (i10 != 177) {
                                if (i10 != 165) {
                                    if (i10 != 166) {
                                        switch (i10) {
                                            case 96:
                                            case 97:
                                            case 98:
                                            case 99:
                                            case 100:
                                            case 101:
                                                return MimeTypes.VIDEO_MPEG2;
                                            case 102:
                                            case 103:
                                            case 104:
                                                return MimeTypes.AUDIO_AAC;
                                            case 105:
                                            case 107:
                                                return MimeTypes.AUDIO_MPEG;
                                            case 106:
                                                return MimeTypes.VIDEO_MPEG;
                                            default:
                                                switch (i10) {
                                                    case 169:
                                                    case 172:
                                                        return MimeTypes.AUDIO_DTS;
                                                    case 170:
                                                    case 171:
                                                        return MimeTypes.AUDIO_DTS_HD;
                                                    case 173:
                                                        return MimeTypes.AUDIO_OPUS;
                                                    case 174:
                                                        return "audio/ac4";
                                                    default:
                                                        return null;
                                                }
                                        }
                                    }
                                    return MimeTypes.AUDIO_E_AC3;
                                }
                                return MimeTypes.AUDIO_AC3;
                            }
                            return MimeTypes.VIDEO_VP9;
                        }
                        return MimeTypes.VIDEO_VC1;
                    }
                    return MimeTypes.AUDIO_AAC;
                }
                return "video/hevc";
            }
            return "video/avc";
        }
        return MimeTypes.VIDEO_MP4V;
    }

    @Nullable
    @VisibleForTesting
    static b g(String str) {
        int i10;
        Matcher matcher = f2522b.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String str2 = (String) b7.a.e(matcher.group(1));
        String group = matcher.group(2);
        try {
            int parseInt = Integer.parseInt(str2, 16);
            if (group != null) {
                i10 = Integer.parseInt(group);
            } else {
                i10 = 0;
            }
            return new b(parseInt, i10);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @Nullable
    private static String h(@Nullable String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    public static int i(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (l(str)) {
            return 1;
        }
        if (o(str)) {
            return 2;
        }
        if (n(str)) {
            return 3;
        }
        if (m(str)) {
            return 4;
        }
        if (!MimeTypes.APPLICATION_ID3.equals(str) && !MimeTypes.APPLICATION_EMSG.equals(str) && !MimeTypes.APPLICATION_SCTE35.equals(str)) {
            if (MimeTypes.APPLICATION_CAMERA_MOTION.equals(str)) {
                return 6;
            }
            return j(str);
        }
        return 5;
    }

    private static int j(String str) {
        int size = f2521a.size();
        for (int i10 = 0; i10 < size; i10++) {
            a aVar = f2521a.get(i10);
            if (str.equals(aVar.f2523a)) {
                return aVar.f2525c;
            }
        }
        return -1;
    }

    @Nullable
    public static String k(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : s0.J0(str)) {
            String e10 = e(str2);
            if (e10 != null && o(e10)) {
                return e10;
            }
        }
        return null;
    }

    public static boolean l(@Nullable String str) {
        return "audio".equals(h(str));
    }

    public static boolean m(@Nullable String str) {
        return "image".equals(h(str));
    }

    public static boolean n(@Nullable String str) {
        if (!MimeTypes.BASE_TYPE_TEXT.equals(h(str)) && !MimeTypes.APPLICATION_CEA608.equals(str) && !MimeTypes.APPLICATION_CEA708.equals(str) && !MimeTypes.APPLICATION_MP4CEA608.equals(str) && !MimeTypes.APPLICATION_SUBRIP.equals(str) && !MimeTypes.APPLICATION_TTML.equals(str) && !MimeTypes.APPLICATION_TX3G.equals(str) && !MimeTypes.APPLICATION_MP4VTT.equals(str) && !MimeTypes.APPLICATION_RAWCC.equals(str) && !MimeTypes.APPLICATION_VOBSUB.equals(str) && !MimeTypes.APPLICATION_PGS.equals(str) && !MimeTypes.APPLICATION_DVBSUBS.equals(str)) {
            return false;
        }
        return true;
    }

    public static boolean o(@Nullable String str) {
        return "video".equals(h(str));
    }

    public static String p(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1007807498:
                if (str.equals("audio/x-flac")) {
                    c10 = 0;
                    break;
                }
                break;
            case -586683234:
                if (str.equals("audio/x-wav")) {
                    c10 = 1;
                    break;
                }
                break;
            case 187090231:
                if (str.equals("audio/mp3")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return MimeTypes.AUDIO_FLAC;
            case 1:
                return "audio/wav";
            case 2:
                return MimeTypes.AUDIO_MPEG;
            default:
                return str;
        }
    }
}
