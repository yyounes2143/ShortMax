package cn;

import android.annotation.SuppressLint;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.media.AudioFormat;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.autofill.HintConstants;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.huawei.hms.support.api.entity.auth.AuthCode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.model.VideoRef;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import java.io.Closeable;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import zm.w;
/* compiled from: Util.java */
/* loaded from: classes8.dex */
public final class m0 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f3614a;
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public static final String f3615b;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public static final String f3616c;
    @Deprecated

    /* renamed from: d  reason: collision with root package name */
    public static final String f3617d;

    /* renamed from: e  reason: collision with root package name */
    public static final String f3618e;

    /* renamed from: f  reason: collision with root package name */
    public static final byte[] f3619f;

    /* renamed from: g  reason: collision with root package name */
    public static final long[] f3620g;

    /* renamed from: h  reason: collision with root package name */
    private static final Pattern f3621h;

    /* renamed from: i  reason: collision with root package name */
    private static final Pattern f3622i;

    /* renamed from: j  reason: collision with root package name */
    private static final Pattern f3623j;

    /* renamed from: k  reason: collision with root package name */
    private static final Pattern f3624k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static HashMap<String, String> f3625l;

    /* renamed from: m  reason: collision with root package name */
    private static final String[] f3626m;

    /* renamed from: n  reason: collision with root package name */
    private static final String[] f3627n;

    /* renamed from: o  reason: collision with root package name */
    private static final int[] f3628o;

    /* renamed from: p  reason: collision with root package name */
    private static final int[] f3629p;

    /* renamed from: q  reason: collision with root package name */
    private static final int[] f3630q;

    static {
        int i10 = Build.VERSION.SDK_INT;
        f3614a = i10;
        String str = Build.DEVICE;
        f3615b = str;
        String str2 = Build.MANUFACTURER;
        f3616c = str2;
        String str3 = Build.MODEL;
        f3617d = str3;
        f3618e = str + ", " + str3 + ", " + str2 + ", " + i10;
        f3619f = new byte[0];
        f3620g = new long[0];
        f3621h = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        f3622i = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        f3623j = Pattern.compile("%([A-Fa-f0-9]{2})");
        f3624k = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        f3626m = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", SRStrategy.MEDIAINFO_KEY_CACHE_SIZE, "dut", "nl", "ger", DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_ERROR, "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", ScarConstants.IN_SIGNAL_KEY, "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", IVideoEventLogger.FEATURE_KEY_SR, "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        f3627n = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        f3628o = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        f3629p = new int[]{0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161, 41290, 45419, 49548, 53677, 57806, 61935};
        f3630q = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, VideoRef.VALUE_VIDEO_REF_FIRST_SUB_VID, 252, 251, 242, 245, 216, 223, 214, 209, MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, 202, 205, 144, 151, 158, 153, 140, 139, 130, 133, IVideoEventLogger.LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION, 175, 166, 161, 180, 179, 186, 189, 199, 192, 201, 206, 219, 220, 213, 210, 255, 248, 241, 246, VideoRef.VALUE_VIDEO_REF_POPULARITY_LEVEL, VideoRef.VALUE_VIDEO_REF_CODEC_HAS_h266, VideoRef.VALUE_VIDEO_REF_PALLAS_VID_LABELS, VideoRef.VALUE_VIDEO_REF_ORIGINAL_AUDIO_INFO_LIST, 183, 176, 185, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_SPEED, 184, 173, 170, 163, 164, 249, 254, 247, 240, VideoRef.VALUE_VIDEO_REF_HAS_EMBEDED_SUBTITLE, 226, VideoRef.VALUE_VIDEO_REF_AI_BARRAGE_URL, VideoRef.VALUE_VIDEO_REF_CONST_DEPTH, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_COUNT, 198, 207, 200, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION, 187, 150, 145, 152, 159, 138, 141, 132, 131, 222, 217, 208, 215, MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, 204, 203, 230, 225, VideoRef.VALUE_VIDEO_REF_CATEGORY, VideoRef.VALUE_VIDEO_REF_SUBTITLE_POSITION_X, 250, 253, 244, 243};
    }

    public static Handler A() {
        return B(null);
    }

    public static int A0(Uri uri, @Nullable String str) {
        if (str == null) {
            return y0(uri);
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case -979127466:
                if (str.equals(MimeTypes.APPLICATION_M3U8)) {
                    c10 = 0;
                    break;
                }
                break;
            case -156749520:
                if (str.equals(MimeTypes.APPLICATION_SS)) {
                    c10 = 1;
                    break;
                }
                break;
            case 64194685:
                if (str.equals(MimeTypes.APPLICATION_MPD)) {
                    c10 = 2;
                    break;
                }
                break;
            case 1154777587:
                if (str.equals("application/x-rtsp")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 2;
            case 1:
                return 1;
            case 2:
                return 0;
            case 3:
                return 3;
            default:
                return 4;
        }
    }

    public static Handler B(@Nullable Handler.Callback callback) {
        return z((Looper) a.i(Looper.myLooper()), callback);
    }

    public static boolean B0(b0 b0Var, b0 b0Var2, @Nullable Inflater inflater) {
        if (b0Var.a() <= 0) {
            return false;
        }
        if (b0Var2.b() < b0Var.a()) {
            b0Var2.c(b0Var.a() * 2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(b0Var.e(), b0Var.f(), b0Var.a());
        int i10 = 0;
        while (true) {
            try {
                i10 += inflater.inflate(b0Var2.e(), i10, b0Var2.b() - i10);
                if (inflater.finished()) {
                    b0Var2.V(i10);
                    inflater.reset();
                    return true;
                } else if (inflater.needsDictionary() || inflater.needsInput()) {
                    break;
                } else if (i10 == b0Var2.b()) {
                    b0Var2.c(b0Var2.b() * 2);
                }
            } catch (DataFormatException unused) {
                return false;
            } finally {
                inflater.reset();
            }
        }
        return false;
    }

    public static Handler C() {
        return D(null);
    }

    public static String C0(int i10) {
        return Integer.toString(i10, 36);
    }

    public static Handler D(@Nullable Handler.Callback callback) {
        return z(X(), callback);
    }

    public static boolean D0(Context context) {
        if (f3614a >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            return true;
        }
        return false;
    }

    private static HashMap<String, String> E() {
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap<String, String> hashMap = new HashMap<>(iSOLanguages.length + f3626m.length);
        int i10 = 0;
        for (String str : iSOLanguages) {
            try {
                String iSO3Language = new Locale(str).getISO3Language();
                if (!TextUtils.isEmpty(iSO3Language)) {
                    hashMap.put(iSO3Language, str);
                }
            } catch (MissingResourceException unused) {
            }
        }
        while (true) {
            String[] strArr = f3626m;
            if (i10 < strArr.length) {
                hashMap.put(strArr[i10], strArr[i10 + 1]);
                i10 += 2;
            } else {
                return hashMap;
            }
        }
    }

    public static boolean E0(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1487656890:
                if (str.equals("image/avif")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1487464693:
                if (str.equals("image/heic")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1487464690:
                if (str.equals("image/heif")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1487394660:
                if (str.equals("image/jpeg")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1487018032:
                if (str.equals("image/webp")) {
                    c10 = 4;
                    break;
                }
                break;
            case -879272239:
                if (str.equals("image/bmp")) {
                    c10 = 5;
                    break;
                }
                break;
            case -879258763:
                if (str.equals("image/png")) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                if (f3614a >= 34) {
                    return true;
                }
                return false;
            case 1:
            case 2:
                if (f3614a >= 26) {
                    return true;
                }
                return false;
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public static long F(long j10, int i10) {
        return h1(j10, i10, 1000000L, RoundingMode.UP);
    }

    public static boolean F0(int i10) {
        if (i10 != 21 && i10 != 1342177280 && i10 != 22 && i10 != 1610612736 && i10 != 4) {
            return false;
        }
        return true;
    }

    public static String G(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static boolean G0(int i10) {
        if (i10 != 3 && i10 != 2 && i10 != 268435456 && i10 != 21 && i10 != 1342177280 && i10 != 22 && i10 != 1610612736 && i10 != 4) {
            return false;
        }
        return true;
    }

    public static String H(byte[] bArr) {
        return new String(bArr, StandardCharsets.UTF_8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0022, code lost:
        if (h7.a.a(r2, "rmx3231") == false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean H0(android.content.Context r2) {
        /*
            int r0 = cn.m0.f3614a
            r1 = 29
            if (r0 < r1) goto L35
            android.content.pm.ApplicationInfo r2 = r2.getApplicationInfo()
            int r2 = r2.targetSdkVersion
            if (r2 < r1) goto L35
            r2 = 30
            if (r0 != r2) goto L24
            java.lang.String r2 = android.os.Build.MODEL
            java.lang.String r1 = "moto g(20)"
            boolean r1 = h7.a.a(r2, r1)
            if (r1 != 0) goto L35
            java.lang.String r1 = "rmx3231"
            boolean r2 = h7.a.a(r2, r1)
            if (r2 != 0) goto L35
        L24:
            r2 = 34
            if (r0 != r2) goto L33
            java.lang.String r2 = android.os.Build.MODEL
            java.lang.String r0 = "sm-x200"
            boolean r2 = h7.a.a(r2, r0)
            if (r2 == 0) goto L33
            goto L35
        L33:
            r2 = 0
            goto L36
        L35:
            r2 = 1
        L36:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.m0.H0(android.content.Context):boolean");
    }

    public static String I(byte[] bArr, int i10, int i11) {
        return new String(bArr, i10, i11, StandardCharsets.UTF_8);
    }

    public static boolean I0(int i10) {
        if (i10 != 10 && i10 != 13) {
            return false;
        }
        return true;
    }

    public static int J(Context context) {
        return an.d.c(context).generateAudioSessionId();
    }

    public static boolean J0(Uri uri) {
        String scheme = uri.getScheme();
        if (!TextUtils.isEmpty(scheme) && !"file".equals(scheme)) {
            return false;
        }
        return true;
    }

    public static int K(int i10) {
        if (i10 == 20) {
            return 30;
        }
        if (i10 != 22) {
            if (i10 != 30) {
                switch (i10) {
                    case 2:
                    case 3:
                        return 3;
                    case 4:
                    case 5:
                    case 6:
                        return 21;
                    case 7:
                    case 8:
                        return 23;
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                        return 28;
                    default:
                        switch (i10) {
                            case 14:
                                return 25;
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                                return 28;
                            default:
                                return Integer.MAX_VALUE;
                        }
                }
            }
            return 34;
        }
        return 31;
    }

    public static boolean K0(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        if (uiModeManager != null && uiModeManager.getCurrentModeType() == 4) {
            return true;
        }
        return false;
    }

    public static AudioFormat L(int i10, int i11, int i12) {
        return new AudioFormat.Builder().setSampleRate(i10).setChannelMask(i11).setEncoding(i12).build();
    }

    public static boolean L0(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
    }

    @SuppressLint({"InlinedApi"})
    public static int M(int i10) {
        if (i10 != 10) {
            if (i10 != 12) {
                if (i10 != 24) {
                    switch (i10) {
                        case 1:
                            return 4;
                        case 2:
                            return 12;
                        case 3:
                            return 28;
                        case 4:
                            return 204;
                        case 5:
                            return 220;
                        case 6:
                            return 252;
                        case 7:
                            return 1276;
                        case 8:
                            return 6396;
                        default:
                            return 0;
                    }
                } else if (f3614a < 32) {
                    return 0;
                } else {
                    return 67108860;
                }
            }
            return 743676;
        } else if (f3614a < 32) {
            return 6396;
        } else {
            return 737532;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread M0(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    public static String N(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            return "depth metadata";
                        }
                        throw new IllegalStateException("Unsupported auxiliary track type");
                    }
                    return "depth-inverse";
                }
                return "depth-linear";
            }
            return "original";
        }
        return AdError.UNDEFINED_DOMAIN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread N0(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    public static w.b O(zm.w wVar, w.b bVar) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean isPlayingAd = wVar.isPlayingAd();
        boolean k10 = wVar.k();
        boolean w10 = wVar.w();
        boolean f10 = wVar.f();
        boolean n10 = wVar.n();
        boolean q10 = wVar.q();
        boolean q11 = wVar.getCurrentTimeline().q();
        w.b.a d10 = new w.b.a().b(bVar).d(4, !isPlayingAd);
        boolean z16 = false;
        if (k10 && !isPlayingAd) {
            z10 = true;
        } else {
            z10 = false;
        }
        w.b.a d11 = d10.d(5, z10);
        if (w10 && !isPlayingAd) {
            z11 = true;
        } else {
            z11 = false;
        }
        w.b.a d12 = d11.d(6, z11);
        if (!q11 && ((w10 || !n10 || k10) && !isPlayingAd)) {
            z12 = true;
        } else {
            z12 = false;
        }
        w.b.a d13 = d12.d(7, z12);
        if (f10 && !isPlayingAd) {
            z13 = true;
        } else {
            z13 = false;
        }
        w.b.a d14 = d13.d(8, z13);
        if (!q11 && ((f10 || (n10 && q10)) && !isPlayingAd)) {
            z14 = true;
        } else {
            z14 = false;
        }
        w.b.a d15 = d14.d(9, z14).d(10, !isPlayingAd);
        if (k10 && !isPlayingAd) {
            z15 = true;
        } else {
            z15 = false;
        }
        w.b.a d16 = d15.d(11, z15);
        if (k10 && !isPlayingAd) {
            z16 = true;
        }
        return d16.d(12, z16).e();
    }

    public static int O0(int[] iArr, int i10) {
        for (int i11 = 0; i11 < iArr.length; i11++) {
            if (iArr[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    public static int P(ByteBuffer byteBuffer, int i10) {
        int i11 = byteBuffer.getInt(i10);
        if (byteBuffer.order() != ByteOrder.BIG_ENDIAN) {
            return Integer.reverseBytes(i11);
        }
        return i11;
    }

    public static boolean P0(b0 b0Var, b0 b0Var2, @Nullable Inflater inflater) {
        if (b0Var.a() > 0 && b0Var.j() == 120 && B0(b0Var, b0Var2, inflater)) {
            return true;
        }
        return false;
    }

    public static int Q(int i10) {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 21) {
                        if (i10 != 22) {
                            if (i10 != 268435456) {
                                if (i10 != 1342177280) {
                                    if (i10 != 1610612736) {
                                        throw new IllegalArgumentException();
                                    }
                                }
                            }
                        }
                    }
                    return 3;
                }
                return 4;
            }
            return 1;
        }
        return 2;
    }

    private static String Q0(String str) {
        int i10 = 0;
        while (true) {
            String[] strArr = f3627n;
            if (i10 < strArr.length) {
                if (str.startsWith(strArr[i10])) {
                    return strArr[i10 + 1] + str.substring(strArr[i10].length());
                }
                i10 += 2;
            } else {
                return str;
            }
        }
    }

    public static int R(@Nullable String str, int i10) {
        int i11 = 0;
        for (String str2 : o1(str)) {
            if (i10 == zm.u.m(str2)) {
                i11++;
            }
        }
        return i11;
    }

    public static <T> void R0(List<T> list, int i10, int i11, int i12) {
        ArrayDeque arrayDeque = new ArrayDeque();
        for (int i13 = (i11 - i10) - 1; i13 >= 0; i13--) {
            arrayDeque.addFirst(list.remove(i10 + i13));
        }
        list.addAll(Math.min(i12, list.size()), arrayDeque);
    }

    @Nullable
    public static String S(@Nullable String str, int i10) {
        String[] o12 = o1(str);
        if (o12.length == 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : o12) {
            if (i10 == zm.u.m(str2)) {
                if (sb2.length() > 0) {
                    sb2.append(",");
                }
                sb2.append(str2);
            }
        }
        if (sb2.length() <= 0) {
            return null;
        }
        return sb2.toString();
    }

    public static long S0(long j10) {
        if (j10 != -9223372036854775807L && j10 != Long.MIN_VALUE) {
            return j10 * 1000;
        }
        return j10;
    }

    @Nullable
    public static String T(@Nullable String str, int i10) {
        String[] o12 = o1(str);
        if (o12.length == 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : o12) {
            if (i10 != zm.u.m(str2)) {
                if (sb2.length() > 0) {
                    sb2.append(",");
                }
                sb2.append(str2);
            }
        }
        if (sb2.length() <= 0) {
            return null;
        }
        return sb2.toString();
    }

    public static ExecutorService T0(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: cn.l0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread M0;
                M0 = m0.M0(str, runnable);
                return M0;
            }
        });
    }

    public static String U(@Nullable Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE)) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return h7.a.f(networkCountryIso);
            }
        }
        return h7.a.f(Locale.getDefault().getCountry());
    }

    public static ScheduledExecutorService U0(final String str) {
        return Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: cn.k0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread N0;
                N0 = m0.N0(str, runnable);
                return N0;
            }
        });
    }

    public static Point V(Context context) {
        Display display;
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager != null) {
            display = displayManager.getDisplay(0);
        } else {
            display = null;
        }
        if (display == null) {
            display = ((WindowManager) a.e((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
        }
        return W(context, display);
    }

    public static String V0(String str) {
        if (str == null) {
            return null;
        }
        String replace = str.replace('_', '-');
        if (!replace.isEmpty() && !replace.equals(C.LANGUAGE_UNDETERMINED)) {
            str = replace;
        }
        String e10 = h7.a.e(str);
        String str2 = n1(e10, "-")[0];
        if (f3625l == null) {
            f3625l = E();
        }
        String str3 = f3625l.get(str2);
        if (str3 != null) {
            e10 = str3 + e10.substring(str2.length());
            str2 = str3;
        }
        if ("no".equals(str2) || "i".equals(str2) || "zh".equals(str2)) {
            return Q0(e10);
        }
        return e10;
    }

    public static Point W(Context context, Display display) {
        String s02;
        if (display.getDisplayId() == 0 && K0(context)) {
            if (f3614a < 28) {
                s02 = s0("sys.display-size");
            } else {
                s02 = s0("vendor.display-size");
            }
            if (!TextUtils.isEmpty(s02)) {
                try {
                    String[] m12 = m1(s02.trim(), TextureRenderKeys.KEY_IS_X);
                    if (m12.length == 2) {
                        int parseInt = Integer.parseInt(m12[0]);
                        int parseInt2 = Integer.parseInt(m12[1]);
                        if (parseInt > 0 && parseInt2 > 0) {
                            return new Point(parseInt, parseInt2);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                r.c("Util", "Invalid display size: " + s02);
            }
            if ("Sony".equals(Build.MANUFACTURER) && Build.MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        if (f3614a >= 23) {
            Z(display, point);
        } else {
            display.getRealSize(point);
        }
        return point;
    }

    public static <T> T[] W0(T[] tArr, T t10) {
        Object[] copyOf = Arrays.copyOf(tArr, tArr.length + 1);
        copyOf[tArr.length] = t10;
        return (T[]) j(copyOf);
    }

    public static Looper X() {
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            return Looper.getMainLooper();
        }
        return myLooper;
    }

    public static <T> T[] X0(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    public static Locale Y() {
        if (f3614a >= 24) {
            return Locale.getDefault(Locale.Category.DISPLAY);
        }
        return Locale.getDefault();
    }

    public static <T> T[] Y0(T[] tArr, int i10) {
        boolean z10;
        if (i10 <= tArr.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.a(z10);
        return (T[]) Arrays.copyOf(tArr, i10);
    }

    @RequiresApi(23)
    private static void Z(Display display, Point point) {
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
    }

    public static <T> T[] Z0(T[] tArr, int i10, int i11) {
        boolean z10;
        boolean z11 = false;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.a(z10);
        if (i11 <= tArr.length) {
            z11 = true;
        }
        a.a(z11);
        return (T[]) Arrays.copyOfRange(tArr, i10, i11);
    }

    public static Drawable a0(Context context, Resources resources, @DrawableRes int i10) {
        return resources.getDrawable(i10, context.getTheme());
    }

    public static long a1(String str) throws ParserException {
        Matcher matcher = f3621h.matcher(str);
        if (matcher.matches()) {
            int i10 = 0;
            if (matcher.group(9) != null && !matcher.group(9).equalsIgnoreCase("Z")) {
                i10 = (Integer.parseInt(matcher.group(12)) * 60) + Integer.parseInt(matcher.group(13));
                if ("-".equals(matcher.group(11))) {
                    i10 *= -1;
                }
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
            gregorianCalendar.clear();
            gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
            if (!TextUtils.isEmpty(matcher.group(8))) {
                gregorianCalendar.set(14, new BigDecimal("0." + matcher.group(8)).movePointRight(3).intValue());
            }
            long timeInMillis = gregorianCalendar.getTimeInMillis();
            if (i10 != 0) {
                return timeInMillis - (i10 * ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
            }
            return timeInMillis;
        }
        throw ParserException.b("Invalid date/time format: " + str, null);
    }

    public static int b0(int i10) {
        if (i10 != 2 && i10 != 4) {
            if (i10 != 10) {
                if (i10 != 7) {
                    if (i10 != 8) {
                        switch (i10) {
                            case 15:
                                return 6003;
                            case 16:
                            case 18:
                                return AuthCode.StatusCode.PERMISSION_NOT_AUTHORIZED;
                            case 17:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                                return AuthCode.StatusCode.PERMISSION_NOT_EXIST;
                            default:
                                switch (i10) {
                                    case 24:
                                    case 25:
                                    case 26:
                                    case 27:
                                    case 28:
                                        return 6002;
                                    default:
                                        return AuthCode.StatusCode.PERMISSION_EXPIRED;
                                }
                        }
                    }
                    return 6003;
                }
                return AuthCode.StatusCode.PERMISSION_NOT_AUTHORIZED;
            }
            return AuthCode.StatusCode.PERMISSION_NOT_EXIST;
        }
        return AuthCode.StatusCode.PERMISSION_NOT_AUTHORIZED;
    }

    public static long b1(String str) {
        double d10;
        double d11;
        double d12;
        double d13;
        double d14;
        Matcher matcher = f3622i.matcher(str);
        if (matcher.matches()) {
            boolean isEmpty = TextUtils.isEmpty(matcher.group(1));
            String group = matcher.group(3);
            double d15 = 0.0d;
            if (group != null) {
                d10 = Double.parseDouble(group) * 3.1556908E7d;
            } else {
                d10 = 0.0d;
            }
            String group2 = matcher.group(5);
            if (group2 != null) {
                d11 = Double.parseDouble(group2) * 2629739.0d;
            } else {
                d11 = 0.0d;
            }
            double d16 = d10 + d11;
            String group3 = matcher.group(7);
            if (group3 != null) {
                d12 = Double.parseDouble(group3) * 86400.0d;
            } else {
                d12 = 0.0d;
            }
            double d17 = d16 + d12;
            String group4 = matcher.group(10);
            if (group4 != null) {
                d13 = Double.parseDouble(group4) * 3600.0d;
            } else {
                d13 = 0.0d;
            }
            double d18 = d17 + d13;
            String group5 = matcher.group(12);
            if (group5 != null) {
                d14 = Double.parseDouble(group5) * 60.0d;
            } else {
                d14 = 0.0d;
            }
            double d19 = d18 + d14;
            String group6 = matcher.group(14);
            if (group6 != null) {
                d15 = Double.parseDouble(group6);
            }
            long j10 = (long) ((d19 + d15) * 1000.0d);
            if (!isEmpty) {
                return -j10;
            }
            return j10;
        }
        return (long) (Double.parseDouble(str) * 3600.0d * 1000.0d);
    }

    public static long c(long j10, long j11, long j12) {
        long j13 = j10 + j11;
        if (((j10 ^ j13) & (j11 ^ j13)) < 0) {
            return j12;
        }
        return j13;
    }

    public static int c0(@Nullable String str) {
        String[] m12;
        int length;
        boolean z10;
        if (str == null || (length = (m12 = m1(str, "_")).length) < 2) {
            return 0;
        }
        String str2 = m12[length - 1];
        if (length >= 3 && "neg".equals(m12[length - 2])) {
            z10 = true;
        } else {
            z10 = false;
        }
        try {
            int parseInt = Integer.parseInt((String) a.e(str2));
            if (z10) {
                return -parseInt;
            }
            return parseInt;
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static boolean c1(Handler handler, Runnable runnable) {
        Looper looper = handler.getLooper();
        if (!looper.getThread().isAlive()) {
            return false;
        }
        if (looper == Looper.myLooper()) {
            runnable.run();
            return true;
        }
        return handler.post(runnable);
    }

    public static int d(long[] jArr, long j10, boolean z10, boolean z11) {
        int i10;
        int i11;
        int binarySearch = Arrays.binarySearch(jArr, j10);
        if (binarySearch < 0) {
            i11 = ~binarySearch;
        } else {
            while (true) {
                i10 = binarySearch + 1;
                if (i10 >= jArr.length || jArr[i10] != j10) {
                    break;
                }
                binarySearch = i10;
            }
            if (z10) {
                i11 = binarySearch;
            } else {
                i11 = i10;
            }
        }
        if (z11) {
            return Math.min(jArr.length - 1, i11);
        }
        return i11;
    }

    public static String d0(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            return "YES";
                        }
                        throw new IllegalStateException();
                    }
                    return "NO_EXCEEDS_CAPABILITIES";
                }
                return "NO_UNSUPPORTED_DRM";
            }
            return "NO_UNSUPPORTED_TYPE";
        }
        return "NO";
    }

    public static <T> void d1(List<T> list, int i10, int i11) {
        if (i10 >= 0 && i11 <= list.size() && i10 <= i11) {
            if (i10 != i11) {
                list.subList(i10, i11).clear();
                return;
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    public static int e(s sVar, long j10, boolean z10, boolean z11) {
        int i10;
        int d10 = sVar.d() - 1;
        int i11 = 0;
        while (i11 <= d10) {
            int i12 = (i11 + d10) >>> 1;
            if (sVar.c(i12) < j10) {
                i11 = i12 + 1;
            } else {
                d10 = i12 - 1;
            }
        }
        if (z10 && (i10 = d10 + 1) < sVar.d() && sVar.c(i10) == j10) {
            return i10;
        }
        if (z11 && d10 == -1) {
            return 0;
        }
        return d10;
    }

    public static String e0(Locale locale) {
        return locale.toLanguageTag();
    }

    public static long e1(long j10, int i10) {
        return h1(j10, 1000000L, i10, RoundingMode.DOWN);
    }

    public static <T extends Comparable<? super T>> int f(List<? extends Comparable<? super T>> list, T t10, boolean z10, boolean z11) {
        int i10;
        int i11;
        int binarySearch = Collections.binarySearch(list, t10);
        if (binarySearch < 0) {
            i11 = -(binarySearch + 2);
        } else {
            while (true) {
                i10 = binarySearch - 1;
                if (i10 < 0 || list.get(i10).compareTo(t10) != 0) {
                    break;
                }
                binarySearch = i10;
            }
            if (z10) {
                i11 = binarySearch;
            } else {
                i11 = i10;
            }
        }
        if (z11) {
            return Math.max(0, i11);
        }
        return i11;
    }

    public static int f0(Context context) {
        if (H0(context)) {
            return 1;
        }
        return 5;
    }

    public static long f1(long j10, long j11, long j12) {
        return h1(j10, j11, j12, RoundingMode.DOWN);
    }

    public static int g(int[] iArr, int i10, boolean z10, boolean z11) {
        int i11;
        int i12;
        int binarySearch = Arrays.binarySearch(iArr, i10);
        if (binarySearch < 0) {
            i12 = -(binarySearch + 2);
        } else {
            while (true) {
                i11 = binarySearch - 1;
                if (i11 < 0 || iArr[i11] != i10) {
                    break;
                }
                binarySearch = i11;
            }
            if (z10) {
                i12 = binarySearch;
            } else {
                i12 = i11;
            }
        }
        if (z11) {
            return Math.max(0, i12);
        }
        return i12;
    }

    public static long g0(long j10, float f10) {
        if (f10 == 1.0f) {
            return j10;
        }
        return Math.round(j10 * f10);
    }

    public static void g1(long[] jArr, long j10, long j11) {
        j1(jArr, j10, j11, RoundingMode.DOWN);
    }

    public static int h(long[] jArr, long j10, boolean z10, boolean z11) {
        int i10;
        int i11;
        int binarySearch = Arrays.binarySearch(jArr, j10);
        if (binarySearch < 0) {
            i11 = -(binarySearch + 2);
        } else {
            while (true) {
                i10 = binarySearch - 1;
                if (i10 < 0 || jArr[i10] != j10) {
                    break;
                }
                binarySearch = i10;
            }
            if (z10) {
                i11 = binarySearch;
            } else {
                i11 = i10;
            }
        }
        if (z11) {
            return Math.max(0, i11);
        }
        return i11;
    }

    public static long h0(long j10) {
        if (j10 == -9223372036854775807L) {
            return System.currentTimeMillis();
        }
        return j10 + SystemClock.elapsedRealtime();
    }

    public static long h1(long j10, long j11, long j12, RoundingMode roundingMode) {
        if (j10 == 0 || j11 == 0) {
            return 0L;
        }
        int i10 = (j12 > j11 ? 1 : (j12 == j11 ? 0 : -1));
        if (i10 >= 0 && j12 % j11 == 0) {
            return j7.e.b(j10, j7.e.b(j12, j11, RoundingMode.UNNECESSARY), roundingMode);
        }
        if (i10 < 0 && j11 % j12 == 0) {
            return j7.e.d(j10, j7.e.b(j11, j12, RoundingMode.UNNECESSARY));
        }
        int i11 = (j12 > j10 ? 1 : (j12 == j10 ? 0 : -1));
        if (i11 >= 0 && j12 % j10 == 0) {
            return j7.e.b(j11, j7.e.b(j12, j10, RoundingMode.UNNECESSARY), roundingMode);
        }
        if (i11 < 0 && j10 % j12 == 0) {
            return j7.e.d(j11, j7.e.b(j10, j12, RoundingMode.UNNECESSARY));
        }
        return i1(j10, j11, j12, roundingMode);
    }

    public static int i0(int i10) {
        if (i10 != 8) {
            if (i10 != 16) {
                if (i10 != 24) {
                    if (i10 != 32) {
                        return 0;
                    }
                    return 22;
                }
                return 21;
            }
            return 2;
        }
        return 3;
    }

    private static long i1(long j10, long j11, long j12, RoundingMode roundingMode) {
        long d10 = j7.e.d(j10, j11);
        if (d10 != Long.MAX_VALUE && d10 != Long.MIN_VALUE) {
            return j7.e.b(d10, j12, roundingMode);
        }
        long c10 = j7.e.c(Math.abs(j11), Math.abs(j12));
        RoundingMode roundingMode2 = RoundingMode.UNNECESSARY;
        long b10 = j7.e.b(j11, c10, roundingMode2);
        long b11 = j7.e.b(j12, c10, roundingMode2);
        long c11 = j7.e.c(Math.abs(j10), Math.abs(b11));
        long b12 = j7.e.b(j10, c11, roundingMode2);
        long b13 = j7.e.b(b11, c11, roundingMode2);
        long d11 = j7.e.d(b12, b10);
        if (d11 != Long.MAX_VALUE && d11 != Long.MIN_VALUE) {
            return j7.e.b(d11, b13, roundingMode);
        }
        double d12 = b12 * (b10 / b13);
        if (d12 > 9.223372036854776E18d) {
            return Long.MAX_VALUE;
        }
        if (d12 < -9.223372036854776E18d) {
            return Long.MIN_VALUE;
        }
        return j7.b.f(d12, roundingMode);
    }

    public static io.bidmachine.media3.common.a j0(int i10, int i11, int i12) {
        return new a.b().u0(MimeTypes.AUDIO_RAW).R(i11).v0(i12).o0(i10).N();
    }

    public static void j1(long[] jArr, long j10, long j11, RoundingMode roundingMode) {
        if (j10 == 0) {
            Arrays.fill(jArr, 0L);
            return;
        }
        int i10 = (j11 > j10 ? 1 : (j11 == j10 ? 0 : -1));
        int i11 = 0;
        if (i10 >= 0 && j11 % j10 == 0) {
            long b10 = j7.e.b(j11, j10, RoundingMode.UNNECESSARY);
            while (i11 < jArr.length) {
                jArr[i11] = j7.e.b(jArr[i11], b10, roundingMode);
                i11++;
            }
        } else if (i10 < 0 && j10 % j11 == 0) {
            long b11 = j7.e.b(j10, j11, RoundingMode.UNNECESSARY);
            while (i11 < jArr.length) {
                jArr[i11] = j7.e.d(jArr[i11], b11);
                i11++;
            }
        } else {
            for (int i12 = 0; i12 < jArr.length; i12++) {
                long j12 = jArr[i12];
                if (j12 != 0) {
                    if (j11 >= j12 && j11 % j12 == 0) {
                        jArr[i12] = j7.e.b(j10, j7.e.b(j11, j12, RoundingMode.UNNECESSARY), roundingMode);
                    } else if (j11 < j12 && j12 % j11 == 0) {
                        jArr[i12] = j7.e.d(j10, j7.e.b(j12, j11, RoundingMode.UNNECESSARY));
                    } else {
                        jArr[i12] = i1(j12, j10, j11, roundingMode);
                    }
                }
            }
        }
    }

    public static int k(int i10, int i11) {
        return ((i10 + i11) - 1) / i11;
    }

    public static int k0(int i10, int i11) {
        return Q(i10) * i11;
    }

    public static boolean k1(@Nullable zm.w wVar) {
        if (wVar != null && wVar.g(1) && (!wVar.g(17) || !wVar.getCurrentTimeline().q())) {
            return true;
        }
        return false;
    }

    public static long l(long j10, long j11) {
        return ((j10 + j11) - 1) / j11;
    }

    public static long l0(long j10, float f10) {
        if (f10 == 1.0f) {
            return j10;
        }
        return Math.round(j10 / f10);
    }

    public static boolean l1(@Nullable zm.w wVar, boolean z10) {
        if (wVar == null || !wVar.getPlayWhenReady() || wVar.getPlaybackState() == 1 || wVar.getPlaybackState() == 4) {
            return true;
        }
        if (z10 && wVar.r() != 0) {
            return true;
        }
        return false;
    }

    public static void m(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static List<String> m0(int i10) {
        ArrayList arrayList = new ArrayList();
        if ((i10 & 1) != 0) {
            arrayList.add("main");
        }
        if ((i10 & 2) != 0) {
            arrayList.add("alt");
        }
        if ((i10 & 4) != 0) {
            arrayList.add("supplementary");
        }
        if ((i10 & 8) != 0) {
            arrayList.add("commentary");
        }
        if ((i10 & 16) != 0) {
            arrayList.add("dub");
        }
        if ((i10 & 32) != 0) {
            arrayList.add("emergency");
        }
        if ((i10 & 64) != 0) {
            arrayList.add("caption");
        }
        if ((i10 & 128) != 0) {
            arrayList.add(MediaFormat.KEY_SUBTITLE);
        }
        if ((i10 & 256) != 0) {
            arrayList.add("sign");
        }
        if ((i10 & 512) != 0) {
            arrayList.add("describes-video");
        }
        if ((i10 & 1024) != 0) {
            arrayList.add("describes-music");
        }
        if ((i10 & 2048) != 0) {
            arrayList.add("enhanced-intelligibility");
        }
        if ((i10 & 4096) != 0) {
            arrayList.add("transcribes-dialog");
        }
        if ((i10 & 8192) != 0) {
            arrayList.add("easy-read");
        }
        if ((i10 & 16384) != 0) {
            arrayList.add("trick-play");
        }
        if ((i10 & 32768) != 0) {
            arrayList.add("auxiliary");
        }
        return arrayList;
    }

    public static String[] m1(String str, String str2) {
        return str.split(str2, -1);
    }

    public static int n(long j10, long j11) {
        int i10 = (j10 > j11 ? 1 : (j10 == j11 ? 0 : -1));
        if (i10 < 0) {
            return -1;
        }
        if (i10 == 0) {
            return 0;
        }
        return 1;
    }

    public static List<String> n0(int i10) {
        ArrayList arrayList = new ArrayList();
        if ((i10 & 4) != 0) {
            arrayList.add("auto");
        }
        if ((i10 & 1) != 0) {
            arrayList.add(DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
        }
        if ((i10 & 2) != 0) {
            arrayList.add("forced");
        }
        return arrayList;
    }

    public static String[] n1(String str, String str2) {
        return str.split(str2, 2);
    }

    public static float o(float f10, float f11, float f12) {
        return Math.max(f11, Math.min(f10, f12));
    }

    public static String o0(StringBuilder sb2, Formatter formatter, long j10) {
        String str;
        if (j10 == -9223372036854775807L) {
            j10 = 0;
        }
        if (j10 < 0) {
            str = "-";
        } else {
            str = "";
        }
        long abs = (Math.abs(j10) + 500) / 1000;
        long j11 = abs % 60;
        long j12 = (abs / 60) % 60;
        long j13 = abs / 3600;
        sb2.setLength(0);
        if (j13 > 0) {
            return formatter.format("%s%d:%02d:%02d", str, Long.valueOf(j13), Long.valueOf(j12), Long.valueOf(j11)).toString();
        }
        return formatter.format("%s%02d:%02d", str, Long.valueOf(j12), Long.valueOf(j11)).toString();
    }

    public static String[] o1(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return new String[0];
        }
        return m1(str.trim(), "(\\s*,\\s*)");
    }

    public static int p(int i10, int i11, int i12) {
        return Math.max(i11, Math.min(i10, i12));
    }

    public static String[] p0() {
        String[] q02 = q0();
        for (int i10 = 0; i10 < q02.length; i10++) {
            q02[i10] = V0(q02[i10]);
        }
        return q02;
    }

    @Nullable
    public static ComponentName p1(Context context, Intent intent) {
        ComponentName startForegroundService;
        if (f3614a >= 26) {
            startForegroundService = context.startForegroundService(intent);
            return startForegroundService;
        }
        return context.startService(intent);
    }

    public static long q(long j10, long j11, long j12) {
        return Math.max(j11, Math.min(j10, j12));
    }

    private static String[] q0() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        return f3614a >= 24 ? r0(configuration) : new String[]{e0(configuration.locale)};
    }

    public static long q1(long j10, long j11, long j12) {
        long j13 = j10 - j11;
        if (((j10 ^ j13) & (j11 ^ j10)) < 0) {
            return j12;
        }
        return j13;
    }

    public static <T> boolean r(SparseArray<T> sparseArray, int i10) {
        if (sparseArray.indexOfKey(i10) >= 0) {
            return true;
        }
        return false;
    }

    @RequiresApi(24)
    private static String[] r0(Configuration configuration) {
        return m1(configuration.getLocales().toLanguageTags(), ",");
    }

    public static String r1(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (int i10 = 0; i10 < bArr.length; i10++) {
            sb2.append(Character.forDigit((bArr[i10] >> 4) & 15, 16));
            sb2.append(Character.forDigit(bArr[i10] & 15, 16));
        }
        return sb2.toString();
    }

    public static boolean s(Object[] objArr, @Nullable Object obj) {
        for (Object obj2 : objArr) {
            if (Objects.equals(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    private static String s0(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e10) {
            r.d("Util", "Failed to read system property " + str, e10);
            return null;
        }
    }

    public static long s1(int i10, int i11) {
        return t1(i11) | (t1(i10) << 32);
    }

    public static <T> boolean t(@Nullable SparseArray<T> sparseArray, @Nullable SparseArray<T> sparseArray2) {
        boolean contentEquals;
        if (sparseArray == null) {
            if (sparseArray2 == null) {
                return true;
            }
            return false;
        } else if (sparseArray2 == null) {
            return false;
        } else {
            if (f3614a >= 31) {
                contentEquals = sparseArray.contentEquals(sparseArray2);
                return contentEquals;
            }
            int size = sparseArray.size();
            if (size != sparseArray2.size()) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                if (!Objects.equals(sparseArray.valueAt(i10), sparseArray2.get(sparseArray.keyAt(i10)))) {
                    return false;
                }
            }
            return true;
        }
    }

    public static String t0(int i10) {
        switch (i10) {
            case -2:
                return DevicePublicKeyStringDef.NONE;
            case -1:
                return "unknown";
            case 0:
                return DataLoaderHelper.PRELOAD_DEFAULT_SCENE;
            case 1:
                return "audio";
            case 2:
                return "video";
            case 3:
                return MimeTypes.BASE_TYPE_TEXT;
            case 4:
                return "image";
            case 5:
                return TtmlNode.TAG_METADATA;
            case 6:
                return "camera motion";
            default:
                if (i10 >= 10000) {
                    return "custom (" + i10 + ")";
                }
                return "?";
        }
    }

    public static long t1(int i10) {
        return i10 & 4294967295L;
    }

    public static <T> int u(SparseArray<T> sparseArray) {
        int contentHashCode;
        if (f3614a >= 31) {
            contentHashCode = sparseArray.contentHashCode();
            return contentHashCode;
        }
        int i10 = 17;
        for (int i11 = 0; i11 < sparseArray.size(); i11++) {
            i10 = (((i10 * 31) + sparseArray.keyAt(i11)) * 31) + Objects.hashCode(sparseArray.valueAt(i11));
        }
        return i10;
    }

    public static byte[] u0(String str) {
        return str.getBytes(StandardCharsets.UTF_8);
    }

    public static long u1(long j10) {
        if (j10 != -9223372036854775807L && j10 != Long.MIN_VALUE) {
            return j10 / 1000;
        }
        return j10;
    }

    public static int v(byte[] bArr, int i10, int i11, int i12) {
        while (i10 < i11) {
            int b10 = com.google.common.primitives.g.b(bArr[i10]);
            i12 = w(b10 & 15, w(b10 >> 4, i12));
            i10++;
        }
        return i12;
    }

    public static boolean v0(@Nullable zm.w wVar) {
        if (wVar != null && wVar.g(1)) {
            wVar.pause();
            return true;
        }
        return false;
    }

    private static int w(int i10, int i11) {
        return (f3629p[(i10 ^ ((i11 >> 12) & 255)) & 255] ^ ((i11 << 4) & 65535)) & 65535;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean w0(@androidx.annotation.Nullable zm.w r4) {
        /*
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            int r1 = r4.getPlaybackState()
            r2 = 1
            if (r1 != r2) goto L17
            r3 = 2
            boolean r3 = r4.g(r3)
            if (r3 == 0) goto L17
            r4.prepare()
        L15:
            r0 = r2
            goto L24
        L17:
            r3 = 4
            if (r1 != r3) goto L24
            boolean r1 = r4.g(r3)
            if (r1 == 0) goto L24
            r4.seekToDefaultPosition()
            goto L15
        L24:
            boolean r1 = r4.g(r2)
            if (r1 == 0) goto L2e
            r4.play()
            goto L2f
        L2e:
            r2 = r0
        L2f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.m0.w0(zm.w):boolean");
    }

    public static int x(byte[] bArr, int i10, int i11, int i12) {
        while (i10 < i11) {
            i12 = f3628o[((i12 >>> 24) ^ (bArr[i10] & 255)) & 255] ^ (i12 << 8);
            i10++;
        }
        return i12;
    }

    public static boolean x0(@Nullable zm.w wVar, boolean z10) {
        if (l1(wVar, z10)) {
            return w0(wVar);
        }
        return v0(wVar);
    }

    public static int y(byte[] bArr, int i10, int i11, int i12) {
        while (i10 < i11) {
            i12 = f3630q[i12 ^ (bArr[i10] & 255)];
            i10++;
        }
        return i12;
    }

    public static int y0(Uri uri) {
        int z02;
        String scheme = uri.getScheme();
        if (scheme != null && (h7.a.a("rtsp", scheme) || h7.a.a("rtspt", scheme))) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return 4;
        }
        int lastIndexOf = lastPathSegment.lastIndexOf(46);
        if (lastIndexOf >= 0 && (z02 = z0(lastPathSegment.substring(lastIndexOf + 1))) != 4) {
            return z02;
        }
        Matcher matcher = f3624k.matcher((CharSequence) a.e(uri.getPath()));
        if (!matcher.matches()) {
            return 4;
        }
        String group = matcher.group(2);
        if (group != null) {
            if (group.contains("format=mpd-time-csf")) {
                return 0;
            }
            if (group.contains("format=m3u8-aapl")) {
                return 2;
            }
        }
        return 1;
    }

    public static Handler z(Looper looper, @Nullable Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    public static int z0(String str) {
        String e10 = h7.a.e(str);
        e10.hashCode();
        char c10 = 65535;
        switch (e10.hashCode()) {
            case 104579:
                if (e10.equals("ism")) {
                    c10 = 0;
                    break;
                }
                break;
            case 108321:
                if (e10.equals(TTVideoEngineInterface.FORMAT_TYPE_MPD)) {
                    c10 = 1;
                    break;
                }
                break;
            case 3242057:
                if (e10.equals("isml")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3299913:
                if (e10.equals("m3u8")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 2:
                return 1;
            case 1:
                return 0;
            case 3:
                return 2;
            default:
                return 4;
        }
    }

    public static <T> T i(@Nullable T t10) {
        return t10;
    }

    public static <T> T[] j(T[] tArr) {
        return tArr;
    }
}
