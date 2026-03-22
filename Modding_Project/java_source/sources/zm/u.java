package zm;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import cn.m0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: MimeTypes.java */
/* loaded from: classes8.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private static final ArrayList<a> f72198a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f72199b = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MimeTypes.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f72200a;

        /* renamed from: b  reason: collision with root package name */
        public final String f72201b;

        /* renamed from: c  reason: collision with root package name */
        public final int f72202c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MimeTypes.java */
    @VisibleForTesting
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f72203a;

        /* renamed from: b  reason: collision with root package name */
        public final int f72204b;

        public b(int i10, int i11) {
            this.f72203a = i10;
            this.f72204b = i11;
        }

        public int a() {
            int i10 = this.f72204b;
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
        b i10;
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
                if (str2 == null || (i10 = i(str2)) == null) {
                    return false;
                }
                int a10 = i10.a();
                if (a10 != 0 && a10 != 16) {
                    return true;
                }
                return false;
            default:
                return false;
        }
    }

    public static boolean b(@Nullable String str, String str2) {
        if (d(str, str2) != null) {
            return true;
        }
        return false;
    }

    @Nullable
    public static String c(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : m0.o1(str)) {
            String g10 = g(str2);
            if (g10 != null && o(g10)) {
                return g10;
            }
        }
        return null;
    }

    @Nullable
    public static String d(@Nullable String str, @Nullable String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        String[] o12 = m0.o1(str);
        StringBuilder sb2 = new StringBuilder();
        for (String str3 : o12) {
            if (str2.equals(g(str3))) {
                if (sb2.length() > 0) {
                    sb2.append(",");
                }
                sb2.append(str3);
            }
        }
        if (sb2.length() <= 0) {
            return null;
        }
        return sb2.toString();
    }

    @Nullable
    private static String e(String str) {
        int size = f72198a.size();
        for (int i10 = 0; i10 < size; i10++) {
            a aVar = f72198a.get(i10);
            if (str.startsWith(aVar.f72201b)) {
                return aVar.f72200a;
            }
        }
        return null;
    }

    public static int f(String str, @Nullable String str2) {
        b i10;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals(MimeTypes.AUDIO_E_AC3_JOC)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1365340241:
                if (str.equals(MimeTypes.AUDIO_DTS_EXPRESS)) {
                    c10 = 1;
                    break;
                }
                break;
            case -1095064472:
                if (str.equals(MimeTypes.AUDIO_DTS)) {
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
            case 187078297:
                if (str.equals("audio/ac4")) {
                    c10 = 5;
                    break;
                }
                break;
            case 550520934:
                if (str.equals("audio/vnd.dts.uhd;profile=p2")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals(MimeTypes.AUDIO_E_AC3)) {
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
            case 1504891608:
                if (str.equals(MimeTypes.AUDIO_OPUS)) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1505942594:
                if (str.equals(MimeTypes.AUDIO_DTS_HD)) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1556697186:
                if (str.equals(MimeTypes.AUDIO_TRUEHD)) {
                    c10 = 11;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 18;
            case 1:
                return 8;
            case 2:
                return 7;
            case 3:
                if (str2 == null || (i10 = i(str2)) == null) {
                    return 0;
                }
                return i10.a();
            case 4:
                return 5;
            case 5:
                return 17;
            case 6:
                return 30;
            case 7:
                return 6;
            case '\b':
                return 9;
            case '\t':
                return 20;
            case '\n':
                return 8;
            case 11:
                return 14;
            default:
                return 0;
        }
    }

    @Nullable
    public static String g(@Nullable String str) {
        b i10;
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
                                if (e10.startsWith("mp4a.") && (i10 = i(e10)) != null) {
                                    str2 = h(i10.f72203a);
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
                                                    return e(e10);
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
    public static String h(int i10) {
        if (i10 != 32) {
            if (i10 != 33) {
                if (i10 != 35) {
                    if (i10 != 64) {
                        if (i10 != 163) {
                            if (i10 != 177) {
                                if (i10 != 221) {
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
                                                case 108:
                                                    return "image/jpeg";
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
                                return MimeTypes.AUDIO_VORBIS;
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
    static b i(String str) {
        int i10;
        Matcher matcher = f72199b.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String str2 = (String) cn.a.e(matcher.group(1));
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
    private static String j(@Nullable String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    public static int k(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (o(str)) {
            return 1;
        }
        if (t(str)) {
            return 2;
        }
        if (s(str)) {
            return 3;
        }
        if (q(str)) {
            return 4;
        }
        if (!MimeTypes.APPLICATION_ID3.equals(str) && !MimeTypes.APPLICATION_EMSG.equals(str) && !MimeTypes.APPLICATION_SCTE35.equals(str) && !"application/x-icy".equals(str) && !"application/vnd.dvb.ait".equals(str)) {
            if (MimeTypes.APPLICATION_CAMERA_MOTION.equals(str)) {
                return 6;
            }
            return l(str);
        }
        return 5;
    }

    private static int l(String str) {
        int size = f72198a.size();
        for (int i10 = 0; i10 < size; i10++) {
            a aVar = f72198a.get(i10);
            if (str.equals(aVar.f72200a)) {
                return aVar.f72202c;
            }
        }
        return -1;
    }

    public static int m(String str) {
        return k(g(str));
    }

    @Nullable
    public static String n(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : m0.o1(str)) {
            String g10 = g(str2);
            if (g10 != null && t(g10)) {
                return g10;
            }
        }
        return null;
    }

    public static boolean o(@Nullable String str) {
        return "audio".equals(j(str));
    }

    public static boolean p(@Nullable String str, @Nullable String str2) {
        if (str == null) {
            return false;
        }
        if (str.startsWith("dvhe") || str.startsWith("dvh1")) {
            return true;
        }
        if (str2 == null) {
            return false;
        }
        if ((!str2.startsWith("dvhe") || !str.startsWith("hev1")) && ((!str2.startsWith("dvh1") || !str.startsWith("hvc1")) && ((!str2.startsWith("dvav") || !str.startsWith("avc3")) && ((!str2.startsWith("dva1") || !str.startsWith("avc1")) && (!str2.startsWith("dav1") || !str.startsWith("av01")))))) {
            return false;
        }
        return true;
    }

    public static boolean q(@Nullable String str) {
        if (!"image".equals(j(str)) && !"application/x-image-uri".equals(str)) {
            return false;
        }
        return true;
    }

    public static boolean r(@Nullable String str) {
        if (str == null) {
            return false;
        }
        if (!str.startsWith("video/webm") && !str.startsWith(MimeTypes.AUDIO_WEBM) && !str.startsWith(MimeTypes.APPLICATION_WEBM) && !str.startsWith("video/x-matroska") && !str.startsWith("audio/x-matroska") && !str.startsWith("application/x-matroska")) {
            return false;
        }
        return true;
    }

    public static boolean s(@Nullable String str) {
        if (!MimeTypes.BASE_TYPE_TEXT.equals(j(str)) && !"application/x-media3-cues".equals(str) && !MimeTypes.APPLICATION_CEA608.equals(str) && !MimeTypes.APPLICATION_CEA708.equals(str) && !MimeTypes.APPLICATION_MP4CEA608.equals(str) && !MimeTypes.APPLICATION_SUBRIP.equals(str) && !MimeTypes.APPLICATION_TTML.equals(str) && !MimeTypes.APPLICATION_TX3G.equals(str) && !MimeTypes.APPLICATION_MP4VTT.equals(str) && !MimeTypes.APPLICATION_RAWCC.equals(str) && !MimeTypes.APPLICATION_VOBSUB.equals(str) && !MimeTypes.APPLICATION_PGS.equals(str) && !MimeTypes.APPLICATION_DVBSUBS.equals(str)) {
            return false;
        }
        return true;
    }

    public static boolean t(@Nullable String str) {
        return "video".equals(j(str));
    }

    public static String u(String str) {
        if (str == null) {
            return null;
        }
        String e10 = h7.a.e(str);
        e10.hashCode();
        char c10 = 65535;
        switch (e10.hashCode()) {
            case -1833600100:
                if (e10.equals("video/x-mvhevc")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1007807498:
                if (e10.equals("audio/x-flac")) {
                    c10 = 1;
                    break;
                }
                break;
            case -979095690:
                if (e10.equals("application/x-mpegurl")) {
                    c10 = 2;
                    break;
                }
                break;
            case -586683234:
                if (e10.equals("audio/x-wav")) {
                    c10 = 3;
                    break;
                }
                break;
            case -432836268:
                if (e10.equals("audio/mpeg-l1")) {
                    c10 = 4;
                    break;
                }
                break;
            case -432836267:
                if (e10.equals("audio/mpeg-l2")) {
                    c10 = 5;
                    break;
                }
                break;
            case 187090231:
                if (e10.equals("audio/mp3")) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return "video/mv-hevc";
            case 1:
                return MimeTypes.AUDIO_FLAC;
            case 2:
                return MimeTypes.APPLICATION_M3U8;
            case 3:
                return "audio/wav";
            case 4:
                return MimeTypes.AUDIO_MPEG_L1;
            case 5:
                return MimeTypes.AUDIO_MPEG_L2;
            case 6:
                return MimeTypes.AUDIO_MPEG;
            default:
                return e10;
        }
    }
}
